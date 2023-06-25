
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
                <table class=" table table-hover">
          <tr>
            <th>name</th>
            <th>email</th>
            <th>phone</th>
            <th>date</th>
            <th>time</th>
            <th>Message</th>
    @foreach ($data as $data)
      
    
          </tr>
          <tr>
            <td>{{$data->name}}</td>
            <td>{{$data->email}}</td>
            <td>{{$data->phone}}</td>
            <td>{{$data->date}}</td>
            <td>{{$data->time}}</td>
            <td>{{$data->message}}</td>
          </tr>

     @endforeach
        </table>
      </div>
</div>
</div>





    </div>
     @include("admin.adminscript")
  </body>
</html>