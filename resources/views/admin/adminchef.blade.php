<!DOCTYPE html>
<html lang="en">
  <head>
          

        @include("admin.admincss")
  </head>
  <body>
    <div class="container-scroller">
     @include("admin.navbar")
    <div class="main-panel">
         <div class="content-wrapper">
            <div  class="row">
                <div class="card">
                    <div class="card-body">
                    <h4 class="card-title">Add Chef</h4>
                <form action="{{url('/uploadchef')}}" method="post"  enctype="multipart/form-data" class="forms-sample">
                        @csrf
                        <div class="form-group" >
                            <lable>Name</lable>
                            <input type="text" class="form-control" name="name" placeholder="Enter name" required="">
                        </div>
                        <br/>
                        <div class="form-group">
                            <lable>Speciality</lable>
                            <input type="text" class="form-control" name="speciality" placeholder="Enter  the speciality" required="">
                        </div>
                        <br/>
                        <div class="form-group">
                        <lable>Upload chef image:</lable>
                            <input type="file" name="image" required="">
                        </div>
                        <br/>
                       
                        <div class=" btn btn-gradient-success">
                            
                            <input style="color: black" type="submit" value="Save">
                        </div>
                    </form>
                </div>
            </div>
         </div>
                    <br/>
                    <div class="row">
                    <div class="card">
                        <div class="card-body">
                        <table class=" table table-hover">
                            <tr>
                                <th>Image</th>
                                <th>Chef Name</th>
                                <th>Speciality</th>
                                <th colspan="2">Action</th>
                              
                            </tr>

                            @foreach ( $data as $data)
                                
                            
                            <tr>
                               <td><img height="100" width="100" src="/chefimage/{{$data->image}}"></td>
                                <td>{{$data->name}}</td>
                                <td>{{$data->speciality}}</td>
                                <td><a href="{{url('/deletechef',$data->id)}}" class=" btn btn-gradient-danger">Delete</a></td>
                                <td><a href="{{url('/updatechef',$data->id)}}" class=" btn btn-gradient-dark">Edit</a></td>
                            </tr>
                            @endforeach
                        </table>
                    </div>
                </div>   
          
            </div>
        </div>
    </div>
</div>
    @include("admin.adminscript")
  </body>
</html>