@extends('admin.layouts.app')

@section('panel')
    <div class="row">
        <div class="col-lg-12">
            <div class="card b-radius--10 ">
                <div class="card-body p-0">
                    <div class="table-responsive--sm table-responsive">






                    <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col" width="15%">Name</th>
                <th scope="col">Guard</th> 
                <th scope="col" colspan="3" width="1%"></th> 
            </tr>
            </thead>
            <tbody>
                @foreach($permissions as $permission)
                    <tr>
                        <td>{{ $permission->name }}</td>
                        <td>{{ $permission->guard_name }}</td>
                        <td><a href="{{ route('admin.permissions.edit', $permission->id) }}" class="btn btn-sm btn-outline--primary"><i class="las la-pen">Edit</a></td>
                        <td> 
                            <form action="{{ route('admin.permissions.destroy', $permission->id) }}"
                                        method="POST" style="display:inline">
                                        @csrf
                                        @method('DELETE')
                            <button type="submit" name="Delete" class="btn btn-sm btn-outline--danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>






</div>
                </div> 
                @if ($permissions->hasPages())
                    <div class="card-footer py-4">
                        {{ paginateLinks($permissions) }}
                    </div>
                @endif
            </div><!-- card end -->
        </div>
    </div>
   
    @endsection

@push('breadcrumb-plugins')
    <x-search-form placeholder="Search here..." /> 
    <a href="{{ route('admin.permissions.create') }}" class="btn  btn-outline--primary h-45">
        <i class="las la-plus"></i>@lang('Créer une permission')
    </a> 
@endpush
