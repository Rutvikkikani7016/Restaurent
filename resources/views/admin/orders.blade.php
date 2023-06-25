
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
            <div class="card">
            <div class="card-body">

     <h1 >Customer Orders</h1>
     <br/>
    

     <form action="{{url('/search')}}" method="get">
        <input type="text" name="search" style="color:blue;">
        <div class=" btn btn-gradient-success">
        <input type="submit" value="Search">
      </div>
      


     </form>
     <br/>
     <table class=" table table-hover">
        <tr>
            <th>Name</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Foodname</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total Price</th>
        </tr>
        @foreach ( $data as $data)
                                <tr>
                                    <td>{{$data->name}}</td>
                                    <td>{{$data->phone}}</td>
                                    <td>{{$data->address}}</td>
                                    <td>{{$data->foodname}}</td>
                                    <td>{{$data->price}} Rs.</td>
                                    <td>{{$data->quantity}}</td>
                                    <td>{{$data->price*$data->quantity}} Rs.</td>
                                    
                                </tr>
                                @endforeach
     </table>
</div>
    </div>
     @include("admin.adminscript")
  </body>
</html>