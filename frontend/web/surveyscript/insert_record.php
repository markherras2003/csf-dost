<?php
 include "db.php";

$jsons = $_POST["jsondata"];
$dataArray = json_decode($jsons, true);
$c1='';
$one='';
$two='';
$three='';
$four='';
$five='';
$name='';
$remarks='';

$c1 = $dataArray["c1"];
$one = $dataArray["q1"]["one"];
$two = $dataArray["q1"]["two"];
$three = $dataArray["q1"]["three"];
$four = $dataArray["q1"]["four"];
$five = $dataArray["q1"]["five"];

if(empty($dataArray["Name"])) {
  $name='';
}else{
  $name = $dataArray["Name"];
}

if(empty($dataArray["Remarks"])) {
  $remarks='';
}else{
  $remarks = $dataArray["Remarks"];
}

$curDate = date('Y-m-d');


$insert = "INSERT INTO `tbl_csfrating`(`unit_type`,`q1`,`q2`,`q3`,`q4`,`q5`,`rating_name`,`rating_comment`,`rating_date`)";
$insert = $insert." VALUES('".$c1."',";
$insert = $insert."'".$one."',";
$insert = $insert."'".$two."',";
$insert = $insert."'".$three."',";
$insert = $insert."'".$four."',";
$insert = $insert."'".$five."',";
$insert = $insert."'".$name."',";
$insert = $insert."'".$remarks."',";
$insert = $insert."'".$curDate."')";
$q=mysqli_query($con,$insert);

if($q)
echo "success";
else
echo "error";

  ?>