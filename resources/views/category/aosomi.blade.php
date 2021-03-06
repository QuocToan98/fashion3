@extends('layouts.new-master')
@section('content')
	<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
 <!-- ====================================== /loc ket qua theo lua chon================================= -->
        <!--================================= phan danh muc laptop   =========================================  -->        
          <div id="laptop"></div>
        @foreach($data as $row)
          <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 no-padding" >
            <div class="thumbnail">          
              <div class="hienthi">
                <img class="img-responsive" src="{!!url('uploads/products/'.$row->images)!!}" alt="{!!$row->name!!}">
                <div class="caption">
                  <h1><small><strong class="title-pro">{!!$row->name!!}</strong></small></h1>
                  <p>    
                      <li><i>{!!$row->intro!!}</i></li>     
                      {{-- <li><i>{!!$row->cpu!!}</i></li>          --}}
                      <span class="label label-info ">Ưu đãi khi mua</span>
                      @if ($row->promo1!='')
                        <li><span class="glyphicon glyphicon-ok-sign"></span>{!!$row->promo1!!}</li>
                      @elseif($row->promo2!='')
                        <li><span class="glyphicon glyphicon-ok-sign"></span>{!!$row->promo2!!}</li>
                      @elseif ($row->promo3!='')
                        <li><span class="glyphicon glyphicon-ok-sign"></span>{!!$row->promo3!!}</li>
                      @endif 
                        <li><span class="glyphicon glyphicon-ok-sign"></span>Cài đặt phần miềm, tải nhạc - ứng dụng miến phí</li>                                                            
                  </p>
                  <p>
                    <span class="btn label-warning"><strong>{!!number_format($row->price)!!} Vnd</strong> </span>
                  </p>
                </div>
              </div>
              <div class="tomtat">
                  
                  <div class="price">  
                    <span class="btn btn-info btn-block "><strong>{!!number_format($row->price)!!}</strong> Vnd</span>   
                    <a href="{!!url('gio-hang/addcart/'.$row->id)!!}" class="btn btn-success btn-block">Thêm vào giỏ</a>                  
                  </div>                  
              </div> 
            </div>
          </div>
        @endforeach
        <div class="clearfix">
          
        </div>
          <!--==================================================/products ============================== -->
      
@endsection