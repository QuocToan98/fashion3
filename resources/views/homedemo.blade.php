@extends('layouts.master')
@section('content')
	{{-- product --}}
	<section class="home-product">
		<div class="container">
			<h3 style="text-align:center; margin-top:25px;margin-bottom: 20px;"> Sản Phẩm Nổi Bật </h1>
			{{-- pro-1 --}}
			<div class="row">
				{{-- item1 --}}
				@foreach ($new_product as $new)
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
				@endforeach	
			</div>
			<br><br><br>
			{{-- pro-2 --}}
			<h3 style="text-align:center; margin-top:25px;margin-bottom: 20px;"> Sản Phẩm mới </h1>
				{{-- pro-2 --}}
				<div class="row">
					{{-- item2 --}}
					@foreach ($sp_sapramat as $rm)
						<div class="col-12 col-md-3">
							<div class="card">
								<a href="{!!url('mobile/'.$rm->id.'-'.$rm->slug)!!}">
									<img class="img-thumbnail" src="public/uploads/products/{{$rm->images}}" alt="Card image">
								</a>
								<div class="card-body">
									<h5 class="card-title">{{$rm->name}}</h5>
									<p class="card-text">{{$rm->intro}}</p>
									<a href="{!!url('gio-hang/addcart/'.$rm->id)!!}" class="add-pro">Mua ngay</a>
								</div>
							</div>
						</div>
					@endforeach	
				</div>
			
		</div>
	</section>

	{{-- banner --}}
	<section class="home-banner">
		<div class="contanier">
			<div class="row">
				<div class="col-12">
					<div class="group-bannerqc">
						<img src="public/images/bnh.jpg">
						<div class="overlay">
							<div class="text"> <h2>Khuyến Mãi Ngập Tràn, Hàng Ngàn Quần Áo Mới</h2></div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </section>
    
	{{-- blog --}}
	<section class="blog-section">
		<div class="container">
			<h3 style="text-align:center; margin-top:25px;"> Blog </h1>
			<div class="row">
				@foreach ($tin_tuc as $tin)
					<div class="col-12 col-md-4">
						<div class="group-blog">
							<img class="img-thumbnail" src="public/uploads/products/{{$tin->images}}">
							<h5>{{$tin->title}}</h5>
							<p>{{$tin->intro}}</p>
                        <a href="{!!url('/tin-tuc/'.$tin->id.'-'.$tin->slug)!!}">Xem Thêm</a>
						</div>
					</div>
				@endforeach
			</div>
		</div>
    </section>
    
    {{-- ddoi-tac --}}
    

@endsection
