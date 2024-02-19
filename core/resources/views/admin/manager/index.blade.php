@extends('admin.layouts.app')
@section('panel')
    <div class="row">
        <div class="col-lg-12">
            <div class="card b-radius--10 ">
                <div class="card-body  p-0">
                    <div class="table-responsive--sm table-responsive">
                        <table class="table table--light style--two">
                            <thead>
                                <tr>
                                    <th>@lang('Branch')</th>
                                    <th>@lang('Manager')</th>
                                    <th>@lang('Role')</th>
                                    <th>@lang('Email - Phone')</th>
                                    <th>@lang('Joined At')</th>
                                    <th>@lang('Status')</th>
                                    <th>@lang('Action')</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse($branchManagers as $manager)
                                    <tr>
                                        <td>
                                            <span class="fw-bold">{{ __($manager->branch->name) }}</span>
                                        </td>
                                        <td>
                                            <span class="fw-bold d-block">{{ $manager->fullname }}</span>
                                            <span class="small">
                                                <a href="{{ route('admin.branch.manager.edit', $manager->id) }}">
                                                    <span>@</span>{{$manager->username }}
                                                </a>
                                            </span>
                                        </td>
                                        <td>
                                        @if (!empty($manager->getRoleNames()))
                                                    @foreach ($manager->getRoleNames() as $v)
                                                        <span class="badge badge--success">{{ $v }}</span>
                                                    @endforeach
                                                @endif
                                        </td>
                                        <td>
                                            <span>{{ $manager->email }}<br>{{ $manager->mobile }}</span>
                                        </td>
                                        <td>
                                            <span class="d-block">{{ showDateTime($manager->created_at) }}</span>
                                            <span>{{ diffForHumans($manager->created_at) }}</span>
                                        </td>
                                        <td> @php echo $manager->statusBadge; @endphp </td>
                                        <td>
                                            <button type="button" class="btn btn-sm btn-outline--primary" data-bs-toggle="dropdown" aria-expanded="false"><i
                                                    class="las la-ellipsis-v"></i>@lang('Action')
                                             </button>
                                            <div class="dropdown-menu p-0">
                                                <a href="{{ route('admin.branch.manager.edit', $manager->id) }}"
                                                    class="dropdown-item"><i class="la la-pen"></i>@lang('Edit')</a>
                                                <a href="{{ route('admin.branch.manager.staff.list', $manager->branch_id) }}"
                                                    class="dropdown-item"><i class="las la-user-friends"></i>
                                                    @lang('Staff List')</a>
                                                @if ($manager->status == Status::DISABLE)
                                                    <button type="button" class="confirmationBtn  dropdown-item"
                                                        data-action="{{ route('admin.branch.manager.status', $manager->id) }}"
                                                        data-question="@lang('Are you sure to enable this manager?')">
                                                        <i class="la la-eye"></i> @lang('Enable')
                                                    </button>
                                                @else
                                                    <button type="button" class=" confirmationBtn   dropdown-item"
                                                        data-action="{{ route('admin.branch.manager.status', $manager->id) }}"
                                                        data-question="@lang('Are you sure to disable this manager?')">
                                                        <i class="la la-eye-slash"></i> @lang('Disable')
                                                    </button>
                                                @endif
                                                <a href="{{ route('admin.branch.manager.dashboard', $manager->id) }}"
                                                    class="dropdown-item" target="_blank"><i class="las la-sign-in-alt"></i>
                                                    @lang('Login')
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td class="text-muted text-center" colspan="100%">{{ __($emptyMessage) }}</td>
                                    </tr>
                                @endforelse

                            </tbody>
                        </table>
                    </div>
                </div>
                @if ($branchManagers->hasPages())
                    <div class="card-footer py-4">
                        {{ paginateLinks($branchManagers) }}
                    </div>
                @endif
            </div>
        </div>
    </div>
    <x-confirmation-modal />
@endsection

@push('breadcrumb-plugins')
    <x-search-form placeholder="Search here..." />
    <a href="{{ route('admin.branch.manager.create') }}" class="btn  btn-outline--primary h-45 addNewBranch">
        <i class="las la-plus"></i>@lang('Add New')
    </a>
@endpush
@push('style')
    <style>
        .table-responsive {
            overflow-x: clip;
        }
    </style>
@endpush
