
<!DOCTYPE html>
<html lang="en">
  <head>
  <base href="/public">
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
                    <h4 class="card-title">Update Food Item</h4>
                    <form action="{{url('/update',$data->id)}}" class="form-control" method="post" enctype="multipart/form-data">
                        @csrf
                        <div >
                            <lable>Title</lable>
                            <input type="text" name="title" class="form-control" value="{{($data->title)}}" required="">
                        </div>
                        <br/>
                        <div>  
                            <lable>Price</lable>
                            <input type="num" name="price" class="form-control" value="{{($data->price)}}" required="">
                        </div>
                        <br/>

                        <div class="form-group">
                            <lable>Old Image</lable>
                            <img height="200" width="200" src="/foodimage/{{($data->image)}}" required="">
                        </div>
                        <div class="form-group">
                            <lable>New Image</lable>
                            <input type="file" name="image"   required="">
                        </div>
                        <br/>
                        <div>
                            <lable>Description</lable>
                            <input type="text" name="description" value="{{($data->description)}}" required="">
                        </div>
                        <br/>
                        <div class=" btn btn-gradient-success">
                            <input style="color: black" type="submit" value="Save">
                        </div>
                    </form>
                      
                </div>
            </div>
        </div>
    </div>
     @include("admin.adminscript")
  </body>
</html>