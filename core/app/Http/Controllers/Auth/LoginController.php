<?php

namespace App\Http\Controllers\Auth;

use App\Constants\Status;
use App\Http\Controllers\Controller; 
use App\Models\UserLogin;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
     */

    use AuthenticatesUsers;

    /**
     * Create a new controller instance.
     *
     * @return void
     */

    public function __construct()
    {
        parent::__construct();
        $this->middleware('guest')->except('logout');
    }

    public function showLoginForm()
    {
        $pageTitle = "Sign In";
        return view('auth.login', compact('pageTitle'));
    }

    public function login(Request $request)
    {
        $this->validateLogin($request);

        $request->session()->regenerateToken();
        
        
        // Si la classe utilise le trait ThrottlesLogins, nous pouvons automatiquement limiter
        // les tentatives de connexion pour cette application. Nous allons le saisir par le nom d'utilisateur et
        // l'adresse IP du client effectuant ces requêtes dans cette application.
        if (
            method_exists($this, 'hasTooManyLoginAttempts') &&
            $this->hasTooManyLoginAttempts($request)
        ) {
            $this->fireLockoutEvent($request);
            return $this->sendLockoutResponse($request);
        }


        if ($this->attemptLogin($request)) {
            $user = auth()->user();
            // return $this->sendLoginResponse($request);
            return redirect(strtolower($user->branch->name));
        }
        
        // Si la tentative de connexion a échoué, nous incrémenterons le nombre de tentatives
        // pour se connecter et rediriger l'utilisateur vers le formulaire de connexion. Bien sûr, lorsque cela
        // l'utilisateur dépasse son nombre maximum de tentatives, il sera bloqué.
        $this->incrementLoginAttempts($request);

        return $this->sendFailedLoginResponse($request);
    }

    public function username()
    {
        return 'username';
    }

    protected function validateLogin(Request $request)
    {
     
        $validation_rule = [
            $this->username() => 'required|string',
            'password'        => 'required|string',
        ];
 
        $request->validate($validation_rule);
    }

    public function logout()
    {
        $this->guard()->logout();
        request()->session()->invalidate();
        $notify[] = ['success', 'You have been logged out.'];
        return redirect()->route('login')->withNotify($notify);
    }
 
    public function redirectTo()
    {
     
        if (auth()->user()->id) {

            return redirect(strtolower(auth()->user()->branch->name));
        }
        else {
            return '/login';
        }
    }

}