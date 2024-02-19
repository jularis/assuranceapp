<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::group(['middleware' => ['auth', 'permission']], function() {

Route::prefix('pharmacie')->group(function() {

    Route::controller('PharmacieController')->group(function () {

    Route::get('/', 'index')->name('pharmacie.index');
    Route::get('profile', 'profile')->name('pharmacie.profile');
    Route::post('profile', 'profileUpdate')->name('pharmacie.profile.update');
    Route::get('password', 'password')->name('pharmacie.password');
    Route::post('password', 'passwordUpdate')->name('pharmacie.password.update');

    });
    
});

});

 
