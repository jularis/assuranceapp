<?php
namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Spatie\Permission\Models\Permission;
use App\Http\Controllers\Controller;

class PermissionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {   
        $pageTitle = 'Gestion des permissions';
        $permissions = Permission::orderBy('name','ASC')->paginate(20);

        return view('admin.permissions.index', compact('permissions','pageTitle'))->with('i', ($request->input('page', 1) - 1) * 5);;
    }

    /**
     * Show form for creating permissions
     * 
     * @return \Illuminate\Http\Response
     */
    public function create() 
    {   
        $pageTitle = "Création d'une permission";
        return view('admin.permissions.create', compact('pageTitle'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {   
        $request->validate([
            'name' => 'required|unique:permissions,name'
        ]);

        Permission::create($request->only('name'));
        $title = 'Êtes-vous sûr de vouloir supprimer cet enregistrement ?';
        $text = "Si vous le supprimez, il disparaîtra pour toujours.";
        confirmDelete($title, $text);

        return redirect()->route('admin.permissions.index')
            ->withSuccess(__('Permission a été crée avec succès.'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  Permission  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Permission $permission)
    {
        $pageTitle = "Modification d'une permission";
        return view('admin.permissions.edit', compact('permission','pageTitle'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Permission  $permission
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Permission $permission)
    {
        $request->validate([
            'name' => 'required|unique:permissions,name,'.$permission->id
        ]);

        $permission->update($request->only('name'));

        return redirect()->route('admin.permissions.index')
            ->withSuccess(__('Permission a été mise à jour avec succès.'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Permission $permission)
    {
        $permission->delete();

        return redirect()->route('admin.permissions.index')
            ->withSuccess(__('Permission a été supprimée avec succès.'));
    }
}