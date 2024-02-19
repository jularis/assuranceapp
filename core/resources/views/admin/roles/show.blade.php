@extends('admin.layouts.app')

@section('panel')
    <div class="row">
        <div class="col-lg-12">
            <div class="card b-radius--10 ">
                <div class="card-body p-0">
                    <div class="table-responsive--sm table-responsive">






                    <table class="table table-striped">
                <thead>
                    <th scope="col" width="20%">Name</th>
                    <th scope="col" width="1%">Guard</th> 
                </thead>

                @foreach($rolePermissions as $permission)
                    <tr>
                        <td>{{ $permission->name }}</td>
                        <td>{{ $permission->guard_name }}</td>
                    </tr>
                @endforeach
            </table>






</div>
                </div> 
            </div><!-- card end -->
        </div>
    </div>
    @endsection

@push('breadcrumb-plugins')
<a href="{{ route('admin.roles.edit', $role->id) }}" class="btn  btn-outline--primary h-45 ">
        <i class="las la-plus"></i>@lang('Modifier le role')
    </a> 
<x-back route="{{ route('admin.roles.index') }}" />
@endpush
