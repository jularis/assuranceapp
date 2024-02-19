<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    if (@auth()->user()->id) {
        $user = auth()->user();
        return redirect(strtolower($user->branch->name));
    }
    else {
        return view('auth.login');
    }
    
});

Auth::routes();


Route::namespace('Auth')->group(function () {

    //Staff Login
    Route::controller('LoginController')->group(function () {
        Route::get('/', 'showLoginForm')->name('login');
        Route::post('/', 'login');
        Route::get('logout', 'logout')->name('logout');
    });
    //Staff Password Forgot
    Route::controller('ForgotPasswordController')->name('password.')->prefix('password')->group(function () {
        Route::get('reset', 'showLinkRequestForm')->name('request');
        Route::post('email', 'sendResetCodeEmail')->name('email');
        Route::get('code-verify', 'codeVerify')->name('code.verify');
        Route::post('verify-code', 'verifyCode')->name('verify.code');
    });
    //Manager Password Rest
    Route::controller('ResetPasswordController')->name('password.')->prefix('password')->group(function () {
        Route::get('password/reset/{token}', 'showResetForm')->name('reset.form');
        Route::post('password/reset/change', 'reset')->name('change');
    });
});

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
