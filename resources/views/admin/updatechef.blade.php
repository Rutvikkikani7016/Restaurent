
<!DOCTYPE html>
<html lang="en">
  <head>
  <base href="/public">
    @include("admin.admincss")
  </head>
  <body>
    <div class="container-scroller">
     @include("admin.navbar")<div class="main-panel">
         <div class="content-wrapper">
         <div class="row">
                <div class="card">
                    <div class="card-body">
                    <h4 class="card-title">Update Chef</h4>
              
                    <form  action="{{url('/updatefoodchef',$data->id)}}" method="post" class="form-control" enctype="multipart/form-data">
                        @csrf
                        <div >
                            <lable class="col-sm-3 col-form-label">Chef Name</lable>
                            <input type="text" name="name" class="form-control" value="{{($data->name)}}" required>
                        </div>
                        <br/>
                        <div>
                            <lable class="col-sm-3 col-form-label">Speciality</lable>
                            <input type="text" name="speciality"  class="form-control" value="{{($data->speciality)}}" required>
                        </div>
                        <br/>

                        <div class="form-group">
                            <lable class="col-sm-3 col-form-label">Old Image</lable>
                            <img height="200" width="200" src="/chefimage/{{($data->image)}}" required>
                        </div>
                        <div class="form-group">
                            <lable class="col-sm-3 col-form-label">New Image</lable>
                            <input type="file" name="image" >
                        </div>
                        <br/>
                        
                        <div  class=" btn btn-gradient-success">
                            <input  type="submit" value="Save">
                        </div>
                    </form>
                </div>   
                </div>
            </div>
        </div>
    </div>
     @include("admin.adminscript")
  </body>
</html>