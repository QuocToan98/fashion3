@extends('layouts.new-master')
@section('content')
  {{-- post --}}
  <section class="new-post">
    <div class="container">
      <div class="row">
          <div class="col-12 col-md-8">
            @foreach($all as $row)
             <div class="group-new">
                <a href="{!!url('/tin-tuc/'.$row->id.'-'.$row->slug)!!}" title="{!!$row->title!!}"><img src="{!!url('public/uploads/products/'.$row->images)!!}" alt="{!!$row->images!!}" width="250px" height="250px"> </a>
              <div class="conten-body">
                <a href="{!!url('/tin-tuc/'.$row->id.'-'.$row->slug)!!}" title="">{!!$row->title!!}</a>
                <p>{!!$row->intro!!}</p>
                <span class="tg"><b>Tác Giả:</b> {!!$row->author!!}</span>
                <br>
                <button>Đọc Thêm</button>
              </div>
            </div>
            @endforeach   
          
          </div>
          <div class="col-12 col-md-4">
            <div class="news-qc">
              <a href="#"> <img src="https://i.pinimg.com/originals/5e/90/eb/5e90eb6908657c116873277b710b2d7a.png" alt="banner-qc" style="width:60%"> </a>
            </div>
          </div>
      </div>
    </div>
  </section>
  {{-- end --}}
<!-- ===================================================================================/news ============================== -->
@endsection