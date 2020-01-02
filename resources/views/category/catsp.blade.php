@extends('layouts.new-master')
@section('content')
    <section class="cat-pro">
      <div class="container">
        <h3>Danh mục sản phẩm</h3>
        <div class="row">
          @foreach ($data as $row)
            <div class="col-12 col-md-3">
              <div class="card" style="height:350px">
                <a href="{!!url('laptop/'.$row->id.'-'.$row->slug)!!}" title="img-product">
                  <img class="img-thumbnail" src="public/uploads/products/{{$row->images}}" alt="Card image">
                </a>
                <div class="card-body">
                  <h5 class="card-title">{{$row->name}}</h5>
                  <p class="card-text">{{$row->intro}}</p>
                  <p>{{$row->price}}vnđ</p>
                  <a href="{!!url('gio-hang/addcart/'.$row->id)!!}" class="add-pro">Mua ngay</a>
                </div>
             </div>
          </div>
          @endforeach
        </section>


@endsection