 <!-- header-top -->
 <section class="header-top">
    <div class="container">
      <div class="row">
          <div class="col-12 menu-top">
            <ul style="float:left">
              @if (Auth::guest())
                    <li><a href="#" data-toggle="modal" data-target="#login-modal">Đăng nhập</a></li>
                @else
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu" role="menu" style="background: black;
                        border: solid 1px #fff;">
                            <li><a href="{{ url('/user') }}">Thông tin cá nhân</a></li>
                            <li><a href="{{ url('/logout') }}"><i class="fa fa-btn fa-sign-out"></i>Logout</a></li>
                        </ul>
                    </li>
                @endif
            </ul>
            <ul class="nav navbar-nav pull-right" style="margin-top:-15px">
              {{-- <li><a href="{{ url('/admin/home') }}">Vào trang quản trị</a></li> --}}
              <li class="dropdown">
                <a  class="dropdown-toggle" id="cshover" data-toggle="dropdown"> <span class="glyphicon glyphicon-shopping-cart"><span class="badge">{!!Cart::count();!!}</span></span> Giỏ Hàng <b class="caret"></b></a>
                <ul class="dropdown-menu" style="right:0; left: auto; min-width: 350px;" style="background:black">
                @if(Cart::count() !=0)
                  <div class="table-responsive" id="tbl">
                     <table class="table table-hover" >
                      <thead>
                      <tr>
                        <th>Ảnh</th>
                        <th>LS</th>
                        <th>Tên <SPAN></SPAN></th>
                        <th>Giá</th>
                      </tr>
                    </thead>
                       <tbody>                       
                      @foreach(Cart::content() as $row)
                         <tr>
                           <td> {!!$row->images!!} <img class="card-img img-circle" src="{!!url('uploads/products/'.$row->options->img)!!}" alt="dell"></td>
                           <td>{!!$row->qty!!}</td>
                           <td>{!!$row->name!!}</td>                           
                           <td>{!!$row->price!!} Vnd</td>
                         </tr>                         
                        @endforeach                           
                       </tbody>                       
                     </table> 
                     <a href="{!!url('/gio-hang/')!!}" type="button" class="btn btn-success"> Chi Tiết Giỏ Hàng </a>
                     <a href="{!!url('/gio-hang/xoa')!!}" type="button" class="btn btn-danger pull-right"> Xóa </a>
                  </div>
                  @else
                    <div class="table-responsive">
                     <table class="table table-hover" >
                      <thead>
                      <tr>
                        <th>Ảnh</th>
                        <th>LS</th>
                        <th>Tên <SPAN></SPAN></th>
                        <th>Giá</th>
                      </tr>
                    </thead>
                       <tbody>                       
                        <td colspan="3">Hện đang trống</td>                        
                       </tbody>                       
                     </table> 
                  </div>
                  @endif
                </ul>
              </li> 
              <!-- Authentication Links -->
              
            </ul>
          </div>
      </div>
    </div>
 </section>

 {{-- logo --}}
<section class="logo-i">
  <div class="container">
    <div class="row">
      <div class="col-12" style="text-align:center">
        <div class="logo-home">
          <a href="{!!url('/')!!}">
            <img src="public/images/logotv.png" alt="" style="width:20%">
          </a>     
        </div>
      </div>
    </div>
  </div>
</section>


 <!-- header-middle -->
 <section class="header-middle">
    <div class="container">
        <div class="row">
           <div class="col-12">
           <nav class="nav-middle" role="navigation" id="main-Nav">
     
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <span  class="visible-xs pull-left" style="font-size:30px;cursor:pointer; padding-left: 10px; color: #ecf0f1;" onclick="openNav()">&#9776; </span> 
              <span  class="visible-xs pull-right" style="font-size:20px;cursor:pointer; padding-right: 10px; padding-top: 8px; color: #FFFFFF;" >      
                <!-- Authentication Links -->
                  @if (Auth::guest())
                      <a class="top-a" href="{{ url('/') }}" > Home </a>  &nbsp;
                      <a href="#" data-toggle="modal" data-target="#login-modal" style="color:#e67e22;"> Đăng nhập </a>
                      {{-- <a class="top-a" href="{{ url('/login') }}">Login</a> --}}
                  @else  
                      <a class="top-a" href="{{ url('/user') }}" style="color:#c0392b;"><strong>{!!Auth::user()->name!!}</strong></a>
                      <a class="top-a" href="{{ url('/logout') }}"><i class="fa fa-btn fa-sign-out"></i><small>Thoát</small></a>
                  @endif 
                  </span>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="main-mav-top">
            <ul class="nav navbar-nav">
              <li> <a href="{!!url('')!!}" title="" > Trang chủ </a> </li>
              <li>
                <a href="{!!url('vay')!!}" >Váy </a>                          
              </li>                                                  
              <li >
                <a href="{!!url('aosomi')!!}" > Áo sơ mi</a>                
              </li>    
              <li>
                <a href="{!!url('dodoi')!!}" > Đồ đôi </a>                
              </li>                                          
              <li>
               <a href="{!!url('tin-tuc')!!}" > Tin Tức - Khuyễn Mãi </a>                    
              </li>
              <li>
               <a href="{!!url('vechungtoi')!!}" > Về Chúng Tôi</a>                    
              </li>
                                                       
            </ul>
       
          </div><!-- /.navbar-collapse -->

          <form class="form-inline" method="GET" action="{{url('search')}}">
            <input class="form-control mr-sm-2" name="key" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div> <!-- /row -->
      </div><!-- /container -->
    </nav>    <!-- /main nav -->

  <!-- left slider bar nav -->
  <div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times; Đóng</a>
    <a href="{!!url('mobile')!!}">Điện Thoại</a>
    <a href="{!!url('laptop')!!}">Laptop</a>
    <a href="{!!url('pc')!!}">Máy Tính</a>
    <a href="{!!url('tin-tuc')!!}">Tin Tức</a>
    <a href="{!!url('gio-hang')!!}"> <span class="glyphicon glyphicon-shopping-cart"><span class="badge">{!!Cart::count()!!}</span></span> Giỏ Hàng </a>     
  </div>
  <!-- /left slider bar nav -->

  {{-- loginform --}}
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
      <div class="modal-dialog">
      <div class="loginmodal-container">
        <h1>Đăng nhập</h1><br>
        <form class="form-horizontal" role="form" method="POST" id="login-form" action="{{ url('/login') }}">
          {{ csrf_field() }}
          <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
            <input id="email" type="email" class="form-control" name="email" placeholder="Nhập địa chỉ Email" value="{{ old('email') }}">
            @if ($errors->has('email'))
                <span class="help-block">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
            @endif
          </div>
          <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
            <input id="password" type="password" name="password" class="form-control" placeholder="Nhập mật khẩu"> 
             @if ($errors->has('password'))
                <span class="help-block">
                    <strong>{{ $errors->first('password') }}</strong>
                </span>
            @endif        
          </div>
          <div class="form-group">
            <div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="remember"> Ghi nhớ
                    </label>
                </div>
            </div>
        </div>       
          <input type="submit" name="login" class="btn btn-primary" value="Đăng nhập">
        </form>      
        <div class="login-help">
          <a class="btn btn-link" href="{!!url('/register')!!}"> <strong style="color:red;"> Đăng ký </strong> </a> - <a class="btn btn-link" href="{{ url('/password/reset') }}">Bạn đã quên mật khẩu?</a>
        </div>
      </div>
    </div>
  </div>
           </div>
        </div>
    </div>
 </section>
 