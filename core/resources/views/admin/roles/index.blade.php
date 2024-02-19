@extends('admin.layouts.app')

@section('panel')
    <div class="row">
        <div class="col-lg-12">
            <div class="card b-radius--10 ">
                <div class="card-body p-0">
                    <div class="table-responsive--sm table-responsive">





                    <table class="table table-bordered">
          <tr>
             <th width="1%">No</th>
             <th>Name</th>
             <th width="3%" colspan="3">Action</th>
          </tr>
            @foreach($roles as $key => $role)
            <tr>
                <td>{{ $role->id }}</td>
                <td>{{ $role->name }}</td>
                <td>
                    <a class="btn btn-sm btn-outline--success" href="{{ route('admin.roles.show', $role->id) }}"><i class="las la-eye"></i>Show</a>
                </td>
                <td>
                    <a class="btn btn-sm btn-outline--primary" href="{{ route('admin.roles.edit', $role->id) }}"><i class="las la-pen"></i>Edit</a>
                </td>
                <td>
                    {!! Form::open(['method' => 'DELETE','route' => ['admin.roles.destroy', $role->id],'style'=>'display:inline']) !!}
                    {!! Form::submit('Delete', ['class' => 'btn btn-sm btn-outline--danger']) !!}
                    {!! Form::close() !!}
                </td>
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
    <x-search-form placeholder="Search here..." />
    <a href="{{ route('admin.roles.create') }}" class="btn  btn-outline--primary h-45 ">
        <i class="las la-plus"></i>@lang('Créer un role')
    </a> 
@endpush
