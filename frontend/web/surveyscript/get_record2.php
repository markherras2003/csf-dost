<?php
include "db.php";
$data = $_GET["c1"];
if ($data=="") {
    $sql="SELECT * FROM `tbl_csfquestion`";
}else{
    $sql="SELECT * FROM `tbl_csfquestion` WHERE region='".$data."'";
}
$result=mysqli_query($con,$sql);
$rows = array();
while ($r=mysqli_fetch_assoc($result)) {
    $rows[] = $r;
}
print json_encode($rows);
?>