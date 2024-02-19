<?php

use Illuminate\Support\Facades\Route;

Route::namespace('Auth')->group(function () {
    Route::controller('LoginController')->group(function () {
        Route::get('/', 'showLoginForm')->name('login');
        Route::post('/', 'login')->name('login');
        Route::get('logout', 'logout')->name('logout');
    });

    // Admin Password Reset
    Route::controller('ForgotPasswordController')->prefix('password')->name('password.')->group(function () {
        Route::get('reset', 'showLinkRequestForm')->name('reset');
        Route::post('reset', 'sendResetCodeEmail');
        Route::get('code-verify', 'codeVerify')->name('code.verify');
        Route::post('verify-code', 'verifyCode')->name('verify.code');
    });

    Route::controller('ResetPasswordController')->prefix('password')->name('password.')->group(function () {
        Route::get('reset/{token}', 'showResetForm')->name('reset.form');
        Route::post('reset/change', 'reset')->name('change');
    });
});

Route::middleware('admin')->group(function () {
    Route::controller('AdminController')->group(function () {
        Route::get('dashboard', 'dashboard')->name('dashboard');
        Route::get('profile', 'profile')->name('profile');
        Route::post('profile', 'profileUpdate')->name('profile.update');
        Route::get('password', 'password')->name('password');
        Route::post('password', 'passwordUpdate')->name('password.update');

        //Admin Create
        Route::get('all', 'allAdmin')->name('all');
        Route::post('store', 'adminStore')->name('store');
        Route::post('remove/{id}', 'adminRemove')->name('remove');
        //Notification
        Route::get('notifications', 'notifications')->name('notifications');
        Route::get('notification/read/{id}', 'notificationRead')->name('notification.read');
        Route::get('notifications/read-all', 'readAll')->name('notifications.readAll');

        //Report Bugs
        Route::get('request-report', 'requestReport')->name('request.report');
        Route::post('request-report', 'reportSubmit');

        Route::get('download-attachments/{file_hash}', 'downloadAttachment')->name('download.attachment');
    });

    //Manage Branch Controller
    Route::controller('BranchController')->name('branch.')->prefix('branch')->group(function () {
        Route::get('/', 'index')->name('index');
        Route::post('store', 'store')->name('store');
        Route::post('status/{id}', 'status')->name('status');
    });

    //Branch Manager
    Route::controller('BranchManagerController')->name('branch.manager.')->prefix('branch-manager')->group(function () {
        Route::get('list', 'index')->name('index');
        Route::get('create', 'create')->name('create');
        Route::post('store', 'store')->name('store');
        Route::get('edit/{id}', 'edit')->name('edit');

        Route::get('staff/{id}', 'staffList')->name('staff.list');
        Route::post('status/{id}', 'status')->name('status');
        Route::get('dashboard/{id}', 'login')->name('dashboard');
        Route::get('staff/dashboard/{id}', 'staffLogin')->name('staff');

        Route::get('manager/{id}', 'branchManager')->name('list');
    });

    Route::controller('CourierSettingController')->name('courier.')->prefix('courier')->group(function () {

        Route::name('unit.')->prefix('manage')->group(function () {
            Route::get('unit', 'unitIndex')->name('index');
            Route::post('unit/store', 'unitStore')->name('store');
            Route::post('status/{id}', 'status')->name('status');
            Route::get('type/', 'typeIndex')->name('type.index');
            Route::post('type/store', 'typeStore')->name('type.store');
            Route::post('type/status/{id}', 'typeStatus')->name('type.status');
        });

        Route::get('branch/income', 'branchIncome')->name('branch.income');
    });

    Route::controller('CourierController')->name('courier.')->prefix('courier')->group(function () {
        Route::get('list', 'courierInfo')->name('info.index');
        Route::get('details/{id}', 'courierDetail')->name('info.details');
        Route::get('invoice/{id}', 'invoice')->name('invoice');
    });

    //staff

    Route::controller('StaffController')->name('staff.')->prefix('staff')->group(function () {
        Route::get('/', 'list')->name('index');
    });



    // Report
    Route::controller('ReportController')->prefix('report')->name('report.')->group(function () {
        Route::get('login/history', 'loginHistory')->name('login.history');
        Route::get('login/ipHistory/{ip}', 'loginIpHistory')->name('login.ipHistory');
        Route::get('notification/history', 'notificationHistory')->name('notification.history');
        Route::get('email/detail/{id}', 'emailDetails')->name('email.details');
    });

    // Admin Support
    Route::controller('SupportTicketController')->prefix('ticket')->name('ticket.')->group(function () {
        Route::get('/', 'tickets')->name('index');
        Route::get('pending', 'pendingTicket')->name('pending');
        Route::get('closed', 'closedTicket')->name('closed');
        Route::get('answered', 'answeredTicket')->name('answered');
        Route::get('view/{id}', 'ticketReply')->name('view');
        Route::post('reply/{id}', 'replyTicket')->name('reply');
        Route::post('close/{id}', 'closeTicket')->name('close');
        Route::get('download/{ticket}', 'ticketDownload')->name('download');
        Route::post('delete/{id}', 'ticketDelete')->name('delete');
    });

    // Language Manager
    Route::controller('LanguageController')->prefix('language')->name('language.')->group(function () {
        Route::get('/', 'langManage')->name('manage');
        Route::post('/', 'langStore')->name('manage.store');
        Route::post('delete/{id}', 'langDelete')->name('manage.delete');
        Route::post('update/{id}', 'langUpdate')->name('manage.update');
        Route::get('edit/{id}', 'langEdit')->name('key');
        Route::post('import', 'langImport')->name('import.lang');
        Route::post('store/key/{id}', 'storeLanguageJson')->name('store.key');
        Route::post('delete/key/{id}', 'deleteLanguageJson')->name('delete.key');
        Route::post('update/key/{id}', 'updateLanguageJson')->name('update.key');
    });

    Route::controller('GeneralSettingController')->group(function () {
        // General Setting
        Route::get('general-setting', 'index')->name('setting.index');
        Route::post('general-setting', 'update')->name('setting.update');

        //configuration
        Route::get('setting/system-configuration', 'systemConfiguration')->name('setting.system.configuration');
        Route::post('setting/system-configuration', 'systemConfigurationSubmit');

        // Logo-Icon
        Route::get('setting/logo-icon', 'logoIcon')->name('setting.logo.icon');
        Route::post('setting/logo-icon', 'logoIconUpdate')->name('setting.logo.icon');

        //Custom CSS
        Route::get('custom-css', 'customCss')->name('setting.custom.css');
        Route::post('custom-css', 'customCssSubmit');

        //Custom Module
        Route::get('custom-module', 'customModule')->name('setting.custom.module');
        Route::post('custom-module', 'customModuleSubmit');
        
        //Cookie
        Route::get('cookie', 'cookie')->name('setting.cookie');
        Route::post('cookie', 'cookieSubmit');

        //maintenance_mode
        Route::get('maintenance-mode', 'maintenanceMode')->name('maintenance.mode');
        Route::post('maintenance-mode', 'maintenanceModeSubmit');
    });

    //Notification Setting
    Route::name('setting.notification.')->controller('NotificationController')->prefix('notification')->group(function () {
        //Template Setting
        Route::get('global', 'global')->name('global');
        Route::post('global/update', 'globalUpdate')->name('global.update');
        Route::get('templates', 'templates')->name('templates');
        Route::get('template/edit/{id}', 'templateEdit')->name('template.edit');
        Route::post('template/update/{id}', 'templateUpdate')->name('template.update');

        //Email Setting
        Route::get('email/setting', 'emailSetting')->name('email');
        Route::post('email/setting', 'emailSettingUpdate');
        Route::post('email/test', 'emailTest')->name('email.test');

        //SMS Setting
        Route::get('sms/setting', 'smsSetting')->name('sms');
        Route::post('sms/setting', 'smsSettingUpdate');
        Route::post('sms/test', 'smsTest')->name('sms.test');
    });

    // Plugin
    Route::controller('ExtensionController')->prefix('extensions')->name('extensions.')->group(function () {
        Route::get('/', 'index')->name('index');
        Route::post('update/{id}', 'update')->name('update');
        Route::post('status/{id}', 'status')->name('status');
    });

    //System Information
    Route::controller('SystemController')->name('system.')->prefix('system')->group(function () {
        Route::get('info', 'systemInfo')->name('info');
        Route::get('server-info', 'systemServerInfo')->name('server.info');
        Route::get('optimize', 'optimize')->name('optimize');
        Route::get('optimize-clear', 'optimizeClear')->name('optimize.clear');
        Route::get('permission', 'permission')->name('permission');
        Route::get('permission-routes', 'permissionRoutes')->name('permission.routes');
    });

    // SEO
    Route::get('seo', 'FrontendController@seoEdit')->name('seo');
    Route::name('frontend.')->prefix('frontend')->group(function () {

        Route::controller('FrontendController')->group(function () {
            Route::post('frontend-content/{key}', 'frontendContent')->name('sections.content'); 
            Route::post('remove/{id}', 'remove')->name('remove');
        });
 
    });

    // Route::controller('PermissionsController')->group(function () {
    //     Route::get('permissions', 'index')->name('permissions.index');
    //     Route::get('permissions/create', 'create')->name('permissions.create');
    //     Route::post('permissions/store', 'store')->name('permissions.store');
    //     Route::get('permissions/edit/{id}', 'edit')->name('permissions.edit'); 
    //     Route::post('permissions/update', 'update')->name('permissions.update'); 
    //     Route::get('permissions/{id}', 'destroy')->name('permissions.destroy');
    // });

    Route::resource('roles', RolesController::class);
    Route::resource('permissions', PermissionsController::class);
     
});
