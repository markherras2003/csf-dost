<?php
include "db.php";
$data = $_GET["c1"];

$sql="SELECT * FROM `tbl_csfquestion` WHERE unit_type='".$data."'";
$result=mysqli_query($con,$sql);

$rows = array();
while ($r=mysqli_fetch_assoc($result)) {
    $rows[] = $r;
}
print json_encode($rows);
?>