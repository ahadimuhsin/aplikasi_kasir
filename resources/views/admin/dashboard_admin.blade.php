@extends('layouts.layout')
@section('content')
<title>
Dashboard Admin | Aplikasi Kasir Restoran
</title>
  <!-- Content Wrapper. Contains page content -->
  <!-- Header -->
  <style>
  .centered {
     float: none !important;
     margin: auto !important;
}

  </style>
  <div class="header bg-primary pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <div class="header-body">
          <!-- Card stats -->
          <div class="row">
          <div class="col-xl-4 col-sm-4">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Kategori Masakan</h5>
                      <span class="h2 font-weight-bold mb-0">{{$kategori->count()}}</span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-primary text-white rounded-circle shadow">
                        <i class="fas fa-users"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
            
                  </p>
                </div>
              </div>
            </div>
           
            <div class="col-xl-4 col-sm-4">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Jumlah Transaksi</h5>
                      <span class="h2 font-weight-bold mb-0"> {{$transaksi->count()}} </span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                        <i class="fas fa-chart-pie"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                
                  </p>
                </div>
              </div>
            </div>

            <div class="col-xl-4 col-sm-4">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Menu Masakan Tersedia</h5>
                      <span class="h2 font-weight-bold mb-0"> {{$masakan->count()}} </span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-success text-white rounded-circle shadow">
                        <i class="ni ni-book-bookmark"></i>
                      </div>
                    </div>
                  </div>
                  <p class="mt-3 mb-0 text-muted text-sm">
                
                  </p>
                </div>
              </div>
            </div>
        
          </div>
        </div>
      </div>
    </div>   
  </div>
  @section('footer')
  @endsection
  @endsection