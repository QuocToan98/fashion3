@extends('layouts.new-master')
@section('content')
<section class="product-search">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h3 style="text-align:center; margin-top:25px;"> Tìm Kiếm </h3>
                <div class="pro-number">
                <p>Tìm Thấy {{count($product)}} Sản Phẩm</p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        {{-- pro-1 --}}
        @foreach ($product as $new)
            <div class="row">
                {{-- item1 --}}
                    <div class="col-12 col-md-3">
                        <div class="card">
                            <a href="{!!url('mobile/'.$new->id.'-'.$new->slug)!!}">
                                <img class="img-thumbnail" src="public/uploads/products/{{$new->images}}" alt="Card image">
                            </a>
                            <div class="card-body">
                                <h5 class="card-title">{{$new->name}}</h5>
                                <p class="card-text">{{$new->intro}}</p>
                                <a href="{!!url('gio-hang/addcart/'.$new->id)!!}" class="add-pro">Mua ngay</a>
                            </div>
                        </div>
                    </div>
            </div>
        @endforeach	
    </div>
</section>

@endsection