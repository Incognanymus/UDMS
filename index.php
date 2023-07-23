<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>UDMS</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="css/style.css" rel="stylesheet">



    <script src="js/jquery-1.8.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="media/css/dataTable.css" />
    <script src="media/js/jquery.dataTables.js" type="text/javascript"></script>
    <!-- end table-->
    <script type="text/javascript" charset="utf-8">
  $(document).ready(function(){
      $('#dtable').dataTable({
                "aLengthMenu": [[5, 10, 15, 25, 50, 100 , -1], [5, 10, 15, 25, 50, 100, "All"]],
                "iDisplayLength": 10
                //"destroy":true;
            });
  })
    </script>
    <style type="text/css">
      select[multiple], select[size] {
    height: auto;
    width: 20px;
}
.pull-right {
    float: right;
    margin: 2px !important;
}
    #loader{
        position: fixed;
        left: 0px;
        top: 0px;
        width: 100%;
        height: 100%;
        z-index: 9999;
        background: url('img/lg.flip-book-loader.gif') 50% 50% no-repeat rgb(249,249,249);
        opacity: 1;
    }

td
{
 max-width: 200px;
 overflow: hidden;
 text-overflow: ellipsis;
 white-space: nowrap;
}
td.column_a {width: 30%;}
td.column_b {width: 70%;}

  </style>

<script src="jquery.min.js"></script>
<script type="text/javascript">
  $(window).on('load', function(){
    //you remove this timeout
    setTimeout(function(){
          $('#loader').fadeOut('slow');  
      });
      //remove the timeout
      //$('#loader').fadeOut('slow'); 
  });
</script>

</head>

<body style="padding:0px; margin:0px; background-color:#fff;font-family:arial,helvetica,sans-serif,verdana,'Open Sans'">

  <!-- Start your project here-->
<!--Navbar -->
<nav class="mb-1 navbar navbar-expand-lg navbar-dark default-color fixed-top">
    <a class="navbar-brand" href="#"><img src="js/img/Files_Download.png" width="33px" height="33px"> <font color="#F0B56F">U</font>niversity  <font color="#F0B56F">D</font>atabase <font color="#F0B56F">M</font>anagement <font color="#F0B56F">S</font>ystem</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4"
    aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
</nav>
<br>
<!--/.Navbar -->
<br><Br><br>
<!-- Card -->
<div class="d-flex justify-content-center">
  <div class="row">
     <div class="col-md-25 mx-auto">

<hr>
  <table id="dtable" class = "table table-striped" style="">
     <thead>

     <th>Publication Name</th>
    <th>Author Name</th>
    <th>Department</th>
     <th>Year</th>
     <th>ISSN</th>
    <th>Link</th>
    <th>National/ International</th>
    <th>Indexed In</th>
    <th>Downloads</th>
    <th>FileSize</th>
    <th>Action</th>


</thead>
<tbody>
    <tr>
<?php
      require_once("include/connection.php");

      $query = mysqli_query($conn,"SELECT ID,NAME,SIZE,EMAIL,ADMIN_STATUS,TIMERS,DOWNLOAD,ANAME,YEARP,ISSN,LINK,DEPART,NI,REVIEW FROM upload_files group by NAME DESC") or die (mysqli_error($conn));
      while($file=mysqli_fetch_array($query)){
        $id =  $file['ID'];
        $name =  $file['NAME'];
        $aname =  $file['ANAME'];
        $uploads =  $file['DEPART'];
       $yearp =  $file['YEARP'];
       $issn =  $file['ISSN'];
        $link =  $file['LINK'];
        $ni =  $file['NI'];
        $review =  $file['REVIEW'];
        $download =  $file['DOWNLOAD'];
        $size =  $file['SIZE'];
?>

<td width="20%"><?php echo  $name; ?></td>
      <td width="20%"><?php echo  $aname; ?></td>

       <td><?php echo $uploads; ?></td>
       <td><?php echo $yearp; ?></td>
       <td><?php echo $issn; ?></td>
       <td><a href="http://<?php echo $link; ?>" style="color:blue"> <?php echo $link; ?></a></td>
       <td><?php echo $ni; ?></td>
       <td><?php echo $review; ?></td>
      <td><?php echo $download; ?></td>
      <td><?php echo floor($size / 1000) . ' KB'; ?></td>
 <td style=""><a href='downloads.php?file_id=<?php echo $id; ?>'><img src="img/698569-icon-57-document-download-128.png" width="30px" height="30px" title="Download File"></a> </td>
    </tr>
    <?php } ?>
</tbody>
</table>
  </div>


</script>
</div>
  </div>


<!-- Card -->
  <!-- /Start your project here-->

  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="js/jquery-3.4.0.min.js"></script>

  <script type="text/javascript" src="js/popper.min.js"></script>

  <script type="text/javascript" src="js/bootstrap.min.js"></script>

  <script type="text/javascript" src="js/mdb.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css"/>   
<script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/1.0.3/css/dataTables.responsive.css">
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/responsive/1.0.3/js/dataTables.responsive.js"></script>

</body>
</html>
