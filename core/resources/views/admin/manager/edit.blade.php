@extends('admin.layouts.app')
@section('panel')
    <div class="row mb-none-30">
        <div class="col-lg-12 mb-30">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin.branch.manager.store') }}" method="POST">
                        @csrf
                        <input type="hidden" name="id" value="{{ $manager->id }}">
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <label>@lang('Select Branch')</label>
                                <select class="form-control" name="branch">
                                    <option value="">@lang('Select One')</option>
                                    @foreach ($branches as $branch)
                                        <option value="{{ $branch->id }}"  @selected($branch->id==$manager->branch_id) >{{ __($branch->name) }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group col-lg-6">
                                <label>@lang('Select Role')</label>
                                <select class="form-control" name="role" required>
                                    <option value="">@lang('Select One')</option>
                                    @foreach ($roles as $role)
                                        <option value="{{ $role->name }}" {{ in_array($role->name, $userRole) 
                                    ? 'selected'
                                    : '' }} >
                                            {{ __($role->name) }}</option>
                                    @endforeach
                                </select>
                            </div>
                            
                        </div>

                        <div class="row">
                            

                            <div class="form-group col-lg-6">
                                <label>@lang('Nom')</label>
                                <input type="text" class="form-control" name="lastname"
                                    value="{{$manager->lastname}}" required>
                            </div>
                            <div class="form-group col-lg-6">
                                <label>@lang('Prénom(s)')</label>
                                <input type="text" class="form-control" name="firstname"
                                    value="{{$manager->firstname}}" required>
                            </div>
                        </div>
                        <div class="row">

                            <div class="form-group col-lg-6">
                                <label>@lang('Adresse Email')</label>
                                <input type="email" class="form-control" name="email" value="{{ $manager->email }}"
                                    required>
                            </div>

                            <div class="form-group col-lg-6">
                                <label>@lang('Phone')</label>
                                <input type="text" class="form-control" name="mobile"
                                    value="{{ $manager->mobile }}" required>
                            </div>
                        </div>
                        <div class="row">
                        <div class="form-group col-lg-4">
                                <label>@lang("Nom d'utilisateur")</label>
                                <input type="text" class="form-control" name="username"
                                    value="{{ __($manager->username) }}" required>
                            </div>
                            <div class="form-group col-lg-4">
                                <label>@lang('Mot de passe')</label>
                                <input type="password" class="form-control" name="password" >
                            </div>

                            <div class="form-group col-lg-4">
                                <label>@lang('Confirme Mot de passe')</label>
                                <input type="password" class="form-control" name="password_confirmation" >
                            </div>

                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn--primary btn-block h-45 w-100">@lang('Submit')</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('breadcrumb-plugins')
    <x-back route="{{ route('admin.branch.manager.index') }}" />
@endpush
