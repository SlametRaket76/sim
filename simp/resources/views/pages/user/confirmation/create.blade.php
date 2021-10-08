@extends('templates.user')

@section('content')
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">

                            <h4 class="card-title">Form Konfirmasi</h4>
                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>

                                </div>
                            @endif
                            @if($message = Session::get('success'))
                                <div class="alert alert-success" role="alert">
                                    {{ $message }}
                                </div>
                            @endif
                            <form action="{{route('user.confirmation.store')}}" method="post" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group row">
                                    <label class="control-label col-md-2">Dari</label>
                                    <div class="col-md-10">
                                        <select class="select2 form-control select2-multiple" required multiple="multiple"
                                                data-placeholder="Choose ..." name="user[]">
                                            @foreach($datas as $data)
                                                <option value="{{$data->id}}">{{$data->user->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>

                                </div>
                                <div class="form-group row">
                                    <label for="example-text-input" class="col-md-2 col-form-label">Kepada</label>
                                    <div class="col-md-10">
                                        <input class="form-control" type="text"
                                               value="{{Auth::guard('web')->user()->name}}" readonly>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-md-2 col-form-label">Konfirmasi</label>
                                    <div class="col-md-10">
                                        <select class="form-control" name="status">
                                            <option>----</option>
                                            <option value="terima">Terima Undangan</option>
                                            <option value="tolak">Tolak Undangan</option>
                                        </select>
                                    </div>
                                </div>
                                </div>
                                <div class="form-group">
                                    &nbsp&nbsp&nbsp&nbsp<button class="btn btn-success" type="submit">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div> <!-- end col -->
            </div>
        </div>
    </section>
@endsection
