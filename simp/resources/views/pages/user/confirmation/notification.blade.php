@extends('templates.user')

@section('content')
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
                            <h3 class="text-success"><i class="fa fa-check-circle"></i> Success</h3> {{ $message }}
                        </div>
                    @endif
                    <div class="card">
                        <div class="card-body">


                            <table id="datatable" class="table table-bordered dt-responsive nowrap"
                                   style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                <thead>
                                <tr>
                                    <th>Judul</th>
                                    <th>Tahun</th>
                                    <th>Proposal</th>
                                    <th>Bidang Penelitian</th>
                                    <th>Anggota</th>
                                    <th>Status Konfirmasi</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Pengembangan Sistem Akademik pada SD Pelita Jaya</td>
                                        <td>2019/2020</td>
                                        <td>
                                            <a href="">211001083101-71-245-1-PB.pdf</a>
                                        </td>
                                        <td>
                                            Teknik
                                        </td>
                                        <td>M. YOKA FATHONI S.Kom</td>
                                        <td>Diterima</td>
                                    </tr>

                                    <!-- Modal -->
                                    <div class="modal fade" id="" tabindex="-1" role="dialog"
                                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <form
                                                        action=""
                                                        method="post" enctype="multipart/form-data">
                                                        @csrf
                                                        @method('patch')
                                                        <div class="form-group">
                                                            <label for="">Upload Proposal</label>
                                                            <input type="file" class="form-control" name="proposal">
                                                        </div>
                                                        <div class="form-actions mt-3 pull-right">
                                                            <button type="button" class="btn btn-secondary"
                                                                    data-dismiss="modal">Close
                                                            </button>
                                                            <button type="submit" class="btn btn-primary">Save changes</button>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer">

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    {{--endmodal--}}
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div> <!-- end col -->
            </div>
        </div>
    </section>
@endsection
