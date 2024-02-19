<?php

namespace App\Models;

use App\Constants\Status;
use App\Traits\GlobalStatus;
use App\Traits\Searchable;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Notifications\Notifiable;


class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles,  Searchable, GlobalStatus;

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */


    public function loginLogs()
    {
        return $this->hasMany(UserLogin::class);
    }


    public function fullname(): Attribute
    {
        return new Attribute(
            get: fn () =>  $this->lastname.' ' .$this->firstname,
        );
    }

    public function branch()
    {
        return $this->belongsTo(Branch::class, 'branch_id');
    }


    // SCOPES
  

    public function scopeBanned()
    {
        return $this->where('status', Status::BAN_USER);
    }
    public function scopeManager($query)
    {
        $query->where('user_type', 'manager');
    }
    public function scopeStaff($query)
    {
        $query->where('user_type', 'staff');
    }
}
