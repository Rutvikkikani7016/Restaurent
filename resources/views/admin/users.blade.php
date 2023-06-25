<html lang="en">
<head>
    @include("admin.admincss")
  </head>
  <body>
  <div class="container-scroller">
     @include("admin.navbar")
     <div class="main-panel">
          <div class="content-wrapper">
            <div class="card">
            <div class="card-body">
                <table class=" table table-hover">
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Action</th>
                    </tr>

                    @foreach ($data as $data )
                    <tr>
                        <td>{{$data->name}}</td>
                        <td>{{$data->email}}</td>

                        @if($data->usertype=="0")
                        
                            <td><a href="{{url('/deleteuser',$data->id)}}">Delete</a></td>
                        
                        @else
                        
                            <td><a>Not Allowed</a></td>
                        
                        @endif
                    </tr>
                    @endforeach
                    

                </table>
            </div>

            </div>
            
          
         
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
  
       
</div>
     @include("admin.adminscript")
  </body>
</html>