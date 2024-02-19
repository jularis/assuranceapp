<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Models\Branch;
use App\Constants\Status;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class BranchManagerController extends Controller
{

    public function index()
    {
        $pageTitle      = "All Branch Manager";
        $branchManagers = User::searchable(['username', 'email', 'mobile', 'branch:name'])->manager()->latest('id')->with('branch')->paginate(getPaginate());
        return view('admin.manager.index', compact('pageTitle', 'branchManagers'));
    }

    public function create()
    {
        $pageTitle = "Add Branch Manager";
        $roles = Role::latest()->get();
        $branches  = Branch::active()->orderBy('name')->get();
        return view('admin.manager.create', compact('pageTitle', 'branches','roles'));
    }

    public function store(Request $request)
    {
        $validationRule = [
            'branch'    => 'required|exists:branches,id',
            'firstname' => 'required|max:40',
            'lastname'  => 'required|max:40',
        ];

        if ($request->id) {
            $validationRule = array_merge($validationRule, [
                'email'    => 'required|email|max:40|unique:users,email,' . $request->id,
                'username' => 'required|max:40|unique:users,username,' . $request->id,
                'mobile'   => 'required|max:40|unique:users,mobile,' . $request->id,
                'password' => 'nullable|confirmed|min:4',
            ]);
        } else {
            $validationRule = array_merge($validationRule, [
                'email'    => 'required|email|max:40|unique:users',
                'username' => 'required|max:40|unique:users',
                'mobile'   => 'required|max:40|unique:users',
                'password' => 'required|confirmed|min:4',

            ]);
        }

        $request->validate($validationRule);

        $branch = Branch::where('id', $request->branch)->first();

        if ($branch->status == Status::NO) {
            $notify[] = ['error', 'This branch is inactive'];
            return back()->withNotify($notify)->withInput();
        }

        if ($request->id) {
            $manager = User::findOrFail($request->id);
            $message = "Manager updated successfully";
        }else{
            $manager = new User();
        }  

        // if ($manager->branch_id != $request->branch) {
        //     $hasManager = User::manager()->where('branch_id', $request->branch)->exists();
        //     if ($hasManager) {
        //         $notify[] = ['error', 'This branch has already a manager'];
        //         return back()->withNotify($notify)->withInput();
        //     }
        // }


        $manager->branch_id = $request->branch;
        $manager->firstname = $request->firstname;
        $manager->lastname  = $request->lastname;
        $manager->username  = $request->username;
        $manager->email     = $request->email;
        $manager->mobile    = $request->mobile;
        $manager->password  = $request->password ? Hash::make($request->password) : $manager->password;
        $manager->user_type = "manager";
        $manager->save();

        if (!$request->id) {
            $manager->syncRoles($request->get('role')); 
            notify($manager, 'MANAGER_CREATE', [
                'username' => $manager->username,
                'email'    => $manager->email,
                'password' => $request->password,
            ]);
        }else{
            DB::table('model_has_roles')->where('model_id',$request->id)->delete();
            $manager->syncRoles($request->get('role')); 
        
        }
 

        $notify[] = ['success', isset($message) ? $message : 'Manager added successfully'];
        return back()->withNotify($notify);
    }

    public function edit($id)
    {
        $pageTitle = "Update Branch Manager";
        $branches  = Branch::active()->orderBy('name')->get();
        $manager   = User::findOrFail($id); 
        $userRole = $manager->roles->pluck('name')->toArray(); 
        $roles = Role::latest()->get();
        return view('admin.manager.edit', compact('pageTitle', 'branches', 'manager','userRole','roles'));
    }

    public function staffList($branchId)
    {
        $pageTitle = "Staff List";
        $staffs = User::searchable(['username', 'email', 'mobile', 'branch:name'])->staff()->where('branch_id', $branchId)->with('branch')->paginate(getPaginate());
        return view('admin.manager.staff', compact('pageTitle', 'staffs'));
    }

    public function status($id)
    {
        return User::changeStatus($id);
    }

    public function login($id)
    {
        User::manager()->where('id', $id)->firstOrFail();
        auth()->loginUsingId($id);
        return to_route('manager.dashboard');
    }

    public function staffLogin($id)
    {
        User::staff()->where('id', $id)->firstOrFail();
        auth()->loginUsingId($id);
        return to_route('staff.dashboard');
    }

    public function branchManager($id)
    {
        $branch         = Branch::findOrFail($id);
        $pageTitle      = $branch->name . " Manager List";
        $branchManagers = User::manager()->where('branch_id', $id)->orderBy('id', 'DESC')->with('branch')->paginate(getPaginate());
        return view('admin.manager.index', compact('pageTitle', 'branchManagers'));
    }
}
