@extends('admin.layouts.app')

@section('panel')
    <div class="row">
        <div class="col-lg-12">
            <div class="card b-radius--10 ">
                <div class="card-body p-0">
                    <div class="table-responsive--sm table-responsive">





                    <form method="POST" action="{{ route('admin.roles.update', $role->id) }}">
                @method('patch')
                @csrf
                <div class="mb-3" style="padding: 20px;">
                    <label for="name" class="form-label">Name</label>
                    <input value="{{ $role->name }}" 
                        type="text" 
                        class="form-control" 
                        name="name" 
                        placeholder="Name" required>
                </div>
                
                <label style="padding: 20px;" for="permissions" class="form-label">Assign Permissions</label>

                <table class="table table-striped">
                    <thead>
                        <th scope="col" width="1%"><input type="checkbox" class="checkAll" name="all_permission"></th>
                        <th scope="col" width="20%">Name</th>
                        <th scope="col" width="1%">Guard</th> 
                    </thead>

                    @foreach($permissions as $permission)
                        <tr>
                            <td>
                                <input type="checkbox" 
                                name="permission[{{ $permission->name }}]"
                                value="{{ $permission->name }}"
                                class='permission'
                                {{ in_array($permission->name, $rolePermissions) 
                                    ? 'checked'
                                    : '' }}>
                            </td>
                            <td>{{ $permission->name }}</td>
                            <td>{{ $permission->guard_name }}</td>
                        </tr>
                    @endforeach
                </table>

                <button style="padding: 20px;"  type="submit" class="btn btn-primary">Save changes</button> 
            </form>








</div>
                </div> 
            </div><!-- card end -->
        </div>
    </div>
    @endsection

@push('breadcrumb-plugins')
<x-back route="{{ route('admin.roles.index') }}" />
@endpush
@push('script')
    <script type="text/javascript">
        (function($) {
            "use strict";
           
            $(".permission").on('change', function(e) {
                let totalLength = $(".permission").length;
                let checkedLength = $(".permission:checked").length;
                if (totalLength == checkedLength) {
                    $('.checkAll').prop('checked', true);
                } else {
                    $('.checkAll').prop('checked', false);
                }
                if (checkedLength) {
                    $('.dispatch').removeClass('d-none')
                } else {
                    $('.dispatch').addClass('d-none')
                }
            });

            $('.checkAll').on('change', function() {
                if ($('.checkAll:checked').length) {
                    $('.permission').prop('checked', true);
                } else {
                    $('.permission').prop('checked', false);
                }
                $(".permission").change();
            });

        })(jQuery)
    </script>
@endpush