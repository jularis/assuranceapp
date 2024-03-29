@extends('pharmacie::layouts.app')
@section('panel')
<div class="row mb-none-30">
        <div class="col-xl-4 col-lg-4 mb-30">
            <div class="card b-radius--5 overflow-hidden">
                <div class="card-body p-0">
                    <div class="d-flex p-3 bg--primary align-items-center">
                        <div class="avatar avatar--lg">
                            <img src="{{ getImage(getFilePath('userProfile') . '/' . $utilisateur->image, getFileSize('userProfile')) }}"
                                alt="@lang('Image')">
                        </div>
                        <div class="ps-3">
                            <h4 class="text--white">{{ __($utilisateur->fullname) }}</h4>
                        </div>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            @lang('Name')
                            <span class="fw-bold">{{ __($utilisateur->fullname) }}</span>
                        </li>

                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            @lang('username')
                            <span class="fw-bold">{{ __($utilisateur->username) }}</span>
                        </li>

                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            @lang('Email')
                            <span class="fw-bold">{{ $utilisateur->email }}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            @lang('Branch')
                            <span class="fw-bold">{{ __($utilisateur->branch->name) }}</span>
                        </li>

                    </ul>
                </div>
            </div>
        </div>

        <div class="col-xl-8 col-lg-8 mb-30">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title mb-50 border-bottom pb-2">@lang('Profile Information')</h5>

                    <form action="{{ route('pharmacie.profile.update') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">

                            <div class="col-md-6">

                                <div class="form-group">
                                    <div class="image-upload">
                                        <div class="thumb">
                                            <div class="avatar-preview">
                                                <div class="profilePicPreview"
                                                    style="background-image: url({{ getImage(getFilePath('userProfile') . '/' . $utilisateur->image, getFileSize('userProfile')) }})">
                                                    <button type="button" class="remove-image"><i
                                                            class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="avatar-edit">
                                                <input type="file" class="profilePicUpload" name="image"
                                                    id="profilePicUpload1" accept=".png, .jpg, .jpeg">
                                                <label for="profilePicUpload1" class="bg--success">@lang('Upload Image')</label>
                                                <small class="mt-2  ">@lang('Supported files'): <b>@lang('jpeg'),
                                                        @lang('jpg').</b> @lang('Image will be resized into 400x400px') </small>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="form-group ">
                                    <label>@lang('First Name')</label>
                                    <input class="form-control" type="text" name="firstname"
                                        value="{{ $utilisateur->firstname }}" required>
                                </div>

                                <div class="form-group ">
                                    <label>@lang('Last Name')</label>
                                    <input class="form-control" type="text" name="lastname"
                                        value="{{ $utilisateur->lastname }}" required>
                                </div>

                                <div class="form-group">
                                    <label>@lang('Email')</label>
                                    <input class="form-control" type="email" name="email" value="{{ $utilisateur->email }}"
                                        required>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn--primary h-45 w-100">@lang('Submit')</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('breadcrumb-plugins')
<div class="d-flex flex-wrap justify-content-end gap-2 align-items-center">
    <a href="{{route('pharmacie.password')}}" class="btn btn-sm btn-outline--primary"><i class="las la-key"></i>@lang('Password Setting')</a>
</div>
@endpush
