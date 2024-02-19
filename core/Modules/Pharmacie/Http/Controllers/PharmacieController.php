<?php

namespace Modules\Pharmacie\Http\Controllers;

use Illuminate\Http\Request;
use App\Rules\FileTypeValidate;
use Illuminate\Routing\Controller;
// use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Contracts\Support\Renderable;

class PharmacieController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index()
    {
        $pageTitle = "Dashboard Pharmacie";
        return view('pharmacie::index', compact('pageTitle'));
    }

    public function profile()
    {
        $pageTitle = 'Profile';
        $utilisateur     = auth()->user();
        return view('pharmacie::profile', compact('pageTitle', 'utilisateur'));
    }

    public function profileUpdate(Request $request)
    {
        $user = auth()->user();
        $request->validate([
            'firstname' => 'required|max:40',
            'lastname'  => 'required|max:40',
            'email'     => 'required|email|unique:users,email,' . $user->id,
            'image'     => ['nullable', 'image', new FileTypeValidate(['jpg', 'jpeg', 'png'])],
        ]);

        if ($request->hasFile('image')) {
            try {
                $old         = $user->image ?: null;
                $user->image = fileUploader($request->image, getFilePath('userProfile'), getFileSize('userProfile'), $old);
            } catch (\Exception $exp) {
                $notify[] = ['error', 'Couldn\'t upload your image'];
                return back()->withNotify($notify);
            }
        }

        $user->firstname = $request->firstname;
        $user->lastname  = $request->lastname;
        $user->email     = $request->email;
        $user->save();
        $notify[] = ['success', 'Your profile added successfully'];

        return back()->withNotify($notify);
    }

    public function password()
    {
        $pageTitle = 'Password Setting';
        $staff     = auth()->user();
        return view('pharmacie::password', compact('pageTitle', 'staff'));
    }

    public function passwordUpdate(Request $request)
    {
        $request->validate([
            'old_password' => 'required',
            'password'     => 'required|min:5|confirmed',
        ]);

        $user = auth()->user();

        if (!Hash::check($request->old_password, $user->password)) {
            $notify[] = ['error', 'Password do not match !!'];
            return back()->withNotify($notify);
        }

        $user->password = Hash::make($request->password);
        $user->save();
        $notify[] = ['success', 'Password changed successfully'];
        return back()->withNotify($notify);
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        return view('pharmacie::create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('pharmacie::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        return view('pharmacie::edit');
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy($id)
    {
        //
    }
}
