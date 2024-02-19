<?php

namespace App\Http\Controllers\Admin;

use App\Models\Branch;
use App\Constants\Status;
use Illuminate\Http\Request;
use Illuminate\Support\Str; 
use Nwidart\Modules\Facades\Module;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Artisan;

class BranchController extends Controller
{

    public function index()
    {
        $pageTitle = "Manage Branch"; 
        
        $modules_file = json_decode(File::get(base_path('modules_statuses.json')), true); 
            foreach($modules_file as $module => $status){
                $branche = Branch::where('name',$module)->first();
                if($branche !=null){
                    if($status==false) $status=0;
                    else  $status = 1;
                    $branche->status = $status;
                    $branche->save();
                }else{
                    $branche = new Branch();
                    $branche->name    = $module;
        $branche->email   = Str::lower($module).'@domain.com';
        $branche->phone   = '9999999999';
        $branche->address = 'N/A';
        $branche->status = 1;
        $branche->save();
                }
            }
            
        $branches  = Branch::searchable(['name', 'email', 'phone', 'address'])->orderBy('name', 'ASC')->paginate(getPaginate());
        return view('admin.branch.index', compact('pageTitle', 'branches'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name'    => 'required|max:40',
            'email'   => 'required|email|max:40',
            'phone'   => 'required|max:40',
            'address' => 'required|max:255',
        ]);
        
        if ($request->id) {
            $branch  = Branch::findOrFail($request->id);
            $message = "Branch updated successfully";
        } else {
            $branch  = new Branch();
            Artisan::call('module:make '.$request->name);
            $message = "Branch added successfully";
        }
        

        $branch->name    = $request->name;
        $branch->email   = $request->email;
        $branch->phone   = $request->phone;
        $branch->address = $request->address;
        $branch->save();

        $notify[] = ['success',$message];
        return back()->withNotify($notify);
    }

    public function status($id)
    {
        $content = [];
        $separator= ','; 
        $branches = Branch::get();
        $nb = count($branches);
        $i=1;
        $content[] = '{'."\n";
        foreach($branches as $data){

            if($data->status == Status::ENABLE) $status = 'true'; 
            else $status = 'false'; 

            if($data->id==$id){
                if ($data->status == Status::ENABLE) {
                    $status = 'false';
                } else {
                    $status = 'true';
                }
            } 
            $content[] =  '"'.$data->name.'" : '.$status.$separator."\n";
            $i++;
            if($i==$nb) $separator="";
            
        }
        $content[] = '}';
        
        $moduleStatusFile = base_path('modules_statuses.json'); 
        file_put_contents($moduleStatusFile, $content);


        return Branch::changeStatus($id);
    }
}
