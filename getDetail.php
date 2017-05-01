<!DOCTYPE html>
<html>
  <body>
  <?php
  $q =  $_REQUEST["q"];

  //$q="Pumpkin";
  //echo $q;
  $con = mysqli_connect("localhost","root","","thecoppermoon") or die("Error".mysqli_error($con));

  $sql="SELECT * FROM masterdrinks, description WHERE DName='".$q."' AND DKey=MKey" ;
  $result = mysqli_query($con,$sql) or die("Error in Selecting".mysqli_error($con));
  $row=mysqli_fetch_assoc($result);
  $description=$row['Description'];

  $sql="SELECT * FROM masterdrinks, price WHERE DName='".$q."' AND DKey=PKey" ;
  $result = mysqli_query($con,$sql) or die("Error in Selecting".mysqli_error($con));

  $priceArray = array();
  while($row=mysqli_fetch_assoc($result))
  {
    array_push($priceArray ,$row['PSmall']);
    array_push($priceArray ,$row['Pmedium']);
    array_push($priceArray ,$row['PLarge']);
  }

  echo "<div class='nameDescription'>".$q."</div>";
  echo "<br>";
  echo "<br>";
  echo "<br>";
  echo "<div class='smlDescription'>".$description."</div>";
  echo "<br>";
  echo "<div class='smlPrice'>".$priceArray[0]. "&nbsp;&nbsp;.&nbsp;&nbsp;".$priceArray[1]."&nbsp;&nbsp;.&nbsp;&nbsp;".$priceArray[2]."</div>";

  mysqli_close($con);
  ?>
  </body>
</html>
