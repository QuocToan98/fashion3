@extends('layouts.new-master')
@section('content')
  <section class="detail-post">
    <div class="container">
      <div class="row" style="background: #f4f3f1;">
        <div class="col-12">
          <h3 class="panel-title">
            <span class="glyphicon glyphicon-home"><a href="#" title=""> Home</a></span> 
            <span class="glyphicon glyphicon-chevron-right" style="font-size: 11px;"></span><a href="#" title=""> Tin Tức</a>
            <span class="glyphicon glyphicon-chevron-right" style="font-size: 11px;"></span> <a href="#" title="">{!!$slug!!}</a>
          </h3>              
        </div>
      </div>
      <div class="row">
        <div class="col-12 col-md-9">
          <div class="col-lg-12">
            <h3 class="title-h3"><a href="#" title="{!!$data->title!!}">{!!$data->title!!}</a></h3>
             <p class="time-views"> <span> Đăng bởi: </span> <strong>{!!$data->author!!}</strong> <strong> - 106 lượt xem</strong></p>                
            <p class="summary-content">
            <div class="panel-body">
              <p class="text-left" style=" padding-bottom: 0px;">
                <strong>
                  {!!$data->intro!!}
                </strong>                  
              </p>          
                <div class="accordion-inner">
                  {!!$data->full!!}
                </div>
              <p class="text-left"><strong> Nguồn : <a target="#" href="#"> {!!$data->source!!}</a> </strong><br>
                <span style="font-size:10px;color:#bdc3c7;">Sửa lần cuối: {!!$data->updated_at!!} </span></p>
                <p > <span class="glyphicon glyphicon-user" style="color:blue;"></span> <strong>Tác Giả: {!!$data->author!!} </strong></p>
            </div>
            </p>
          </div>       
        </div>
        <div class="col-12 col-md-3">
          <div class="news-qc">
            <a href="#"> <img src="https://i.pinimg.com/originals/5e/90/eb/5e90eb6908657c116873277b710b2d7a.png" alt="banner-qc" style="width:70%"> </a>
          </div>
        </div>
        <br>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v5.0"></script>
        <div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-width="" data-numposts="5"></div>
      </div>
    </div>
  </section>
	
              
     
<!-- ===================================================================================/news ============================== -->
@endsection