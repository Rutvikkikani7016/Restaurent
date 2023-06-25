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
                <div class="row">
                    <div class="card">
                        <div class="card-body">
                             <h4 class="card-title">Add Food Item</h4>
                            <form action="{{url('/uploadfood')}}" method="post" enctype="multipart/form-data"  class="forms-sample">
                                 @csrf
                               <div class="form-group">
                                <lable>Title</lable>
                                <input type="text" class="form-control" name="title" placeholder="Write a title" required>
                               </div>
                                <br/>
                                 <div class="form-group">
                                <lable>Price</lable>
                                <input type="num" class="form-control" name="price" placeholder="price" required>
                                </div>
                                <br/>
                                <div class="form-group">
                                <lable>Image</lable>
                                <input type="file" name="image"  required>
                                </div>
                                <br/>
                               <div class="form-group">
                               <lable>Description</lable>
                              <input type="text" name="description"  class="form-control" placeholder="Description" required>
                              </div>
                        
                                <div class=" btn btn-gradient-success">
                                  <input type="submit" value="Save">
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
                                <th>Food Name</th>
                                <th>Price</th>
                                <th>Description</th>
                                <th>Image</th>
                                <th colspan="2" style="padding: 30px">Action</th>
                              
                                
                            </tr>

                            @foreach ( $data as $data)
                                
                            
                            <tr>
                                <td>{{$data->title}}</td>
                                <td>{{$data->price}}</td>
                                <td>{{$data->description}}</td>
                                <td><img height="200" width="200" src="/foodimage/{{$data->image}}"></td>
                                <td><a href="{{url('/deletemenu',$data->id)}}"class=" btn btn-gradient-danger ">Delete</a></td>
                                <td><a href="{{url('/updateview',$data->id)}}" class="btn btn-gradient-dark">Edit</a></td>
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