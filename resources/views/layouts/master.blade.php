@include('layouts.header')
@include('modules.menu')
	@include('modules.slide')
  
      	
			@yield('content')
			@include('modules.gioithieu')
      
@include('layouts.footer')