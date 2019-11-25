<?php
 
 $BaseURL = $GLOBALS['frontend_base_uri'];


?>
<!DOCTYPE html>  
<html>  
    <head>  
        <title>Export Google Chart to PDF using PHP with DomPDF</title>
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script type="text/javascript">
 google.load("visualization", "1", {packages:["corechart"]});
 google.setOnLoadCallback(drawChart);
 function drawChart() {
 var data = google.visualization.arrayToDataTable([
     ['Question', 'Number'],
     <?php
     $counter = 0;
     foreach($csfdetails as $row)
     {
      $counter++;
      if ($counter==1) {
         $reports=$row["report_questions"];
        echo "['Outstanding', ".$row["outstanding"]."],";
        echo "['Very Satisfactory', ".$row["verysatisfactory"]."],";
        echo "['Satisfactory', ".$row["satisfactory"]."],";
        echo "['Unsatisfactory', ".$row["unsatisfactory"]."],";
        echo "['Poor', ".$row["poor"]."]";
         //echo "['Outstanding',".$row['outstanding']."],";
      }  
     }
     ?>
    ]);

    var options = {
    title: <?= "'".$reports."'"; ?>,
    pieHole: 1,
          pieSliceTextStyle: {
            color: 'black',
          },
          legend: '',
          
      };

    var data2 = google.visualization.arrayToDataTable([
     ['Question', 'Number'],
     <?php
     $counter = 0;
     foreach($csfdetails as $row)
     {
      $counter++;
      if ($counter==2) {
         $reports=$row["report_questions"];
        echo "['Outstanding', ".$row["outstanding"]."],";
        echo "['Very Satisfactory', ".$row["verysatisfactory"]."],";
        echo "['Satisfactory', ".$row["satisfactory"]."],";
        echo "['Unsatisfactory', ".$row["unsatisfactory"]."],";
        echo "['Poor', ".$row["poor"]."]";
         //echo "['Outstanding',".$row['outstanding']."],";
      }  
     }
     ?>
    ]);

      var options2 = {
      title: <?= "'".$reports."'"; ?>,
      pieHole: 1,
               pieSliceTextStyle: {
                  color: 'black',
               },
               legend: '', sliceVisibilityThreshold:0,
               
      };


      
    var data3 = google.visualization.arrayToDataTable([
     ['Question', 'Number'],
     <?php
     $counter = 0;
     foreach($csfdetails as $row)
     {
      $counter++;
      if ($counter==3) {
         $reports=$row["report_questions"];
        echo "['Outstanding', ".$row["outstanding"]."],";
        echo "['Very Satisfactory', ".$row["verysatisfactory"]."],";
        echo "['Satisfactory', ".$row["satisfactory"]."],";
        echo "['Unsatisfactory', ".$row["unsatisfactory"]."],";
        echo "['Poor', ".$row["poor"]."]";
         //echo "['Outstanding',".$row['outstanding']."],";
      }  
     }
     ?>
    ]);

      var options3= {
      title: <?= "'".$reports."'"; ?>,
      pieHole: 1,
               pieSliceTextStyle: {
                  color: 'black',
               },
               legend: '',
               sliceVisibilityThreshold:0,

      };

      var data4 = google.visualization.arrayToDataTable([
     ['Question', 'Number'],
     <?php
     $counter = 0;
     foreach($csfdetails as $row)
     {
      $counter++;
      if ($counter==4) {
         $reports=$row["report_questions"];
        echo "['Outstanding', ".$row["outstanding"]."],";
        echo "['Very Satisfactory', ".$row["verysatisfactory"]."],";
        echo "['Satisfactory', ".$row["satisfactory"]."],";
        echo "['Unsatisfactory', ".$row["unsatisfactory"]."],";
        echo "['Poor', ".$row["poor"]."]";
         //echo "['Outstanding',".$row['outstanding']."],";
      }  
     }
     ?>
    ]);

      var options4= {
      title: <?= "'".$reports."'"; ?>,
      pieHole: 1,
               pieSliceTextStyle: {
                  color: 'black',
               }, 
               legend: '' ,
               sliceVisibilityThreshold:0,

      };


      var data5 = google.visualization.arrayToDataTable([
     ['Question', 'Number'],
     <?php
     $counter = 0;
     foreach($csfdetails as $row)
     {
      $counter++;
      if ($counter==5) {
         $reports=$row["report_questions"];
        echo "['Outstanding', ".$row["outstanding"]."],";
        echo "['Very Satisfactory', ".$row["verysatisfactory"]."],";
        echo "['Satisfactory', ".$row["satisfactory"]."],";
        echo "['Unsatisfactory', ".$row["unsatisfactory"]."],";
        echo "['Poor', ".$row["poor"]."]";
         //echo "['Outstanding',".$row['outstanding']."],";
      }  
     }
     ?>
    ]);

      var options5= {
      title: <?= "'".$reports."'"; ?>,
      pieHole: 1,
               pieSliceTextStyle: {
                  color: 'black',
               },
               legend: '',
               sliceVisibilityThreshold:0,
      };

 var chart = new google.visualization.PieChart(document.getElementById("columnchart12"));
 chart.draw(data,options, );
 var chart = new google.visualization.PieChart(document.getElementById("columnchart13"));
 chart.draw(data2,options2);
 var chart = new google.visualization.PieChart(document.getElementById("columnchart14"));
 chart.draw(data3,options3);
 var chart = new google.visualization.PieChart(document.getElementById("columnchart15"));
 chart.draw(data4,options4);
 var chart = new google.visualization.PieChart(document.getElementById("columnchart16"));
 chart.draw(data5,options5);
 }

        </script>  
    </head> 
<body>
<?php
$counter=0;
   foreach ($csfdetails as $cs) {
       $units = $cs["units_type"];
       $counter++;
   }
?>

 
<table border="1"  style="border-collapse:collapse;width:100%;">
<tbody>
<tr>
<td style="text-align: center; width: 92.9432%;" colspan="6">CUSTOMER SATISFACTION FEEDBACK</td>
</tr>
<tr>
<td style="text-align: center; width: 92.9432%;" colspan="6">SUMMARY REPORT FOR</td>
</tr>
<tr>
<td style="width: 50%; text-align: left;" colspan="3">Unit: <?= $units; ?></td>
<td style="width: 50%;" colspan="3">&nbsp;No. of Respondent <?= $counter; ?></td>
</tr>
<tr>
<td style="width: 16.67%; text-align: center;">Attributes</td>
<td style="width: 16.67%; text-align: center;">Outstanding</td>
<td style="width: 16.67%; text-align: center;">Very Satisfactory</td>
<td style="width: 16.67%; text-align: center;">Satisfactory</td>
<td style="width: 16.67%; text-align: center;">Unsatisfactory</td>
<td style="width: 16.67%; text-align: center;">Poor</td>
</tr>

<?php 
   $x=0;
   foreach ($csfdetails as $cs) {?>

<tr>
<td style="width: 25%; text-align: left;"><?= $cs["report_questions"] ?></td>
<td style="width: 15%; text-align: center;"><?= $cs["outstanding"] ?></td>
<td style="width: 15%; text-align: center;"><?= $cs["verysatisfactory"] ?></td>
<td style="width: 15%; text-align: center;"><?= $cs["satisfactory"] ?></td>
<td style="width: 15%; text-align: center;"><?= $cs["unsatisfactory"] ?></td>
<td style="width: 15%; text-align: center;"><?= $cs["poor"] ?></td>
</tr>


   
<?php } ?>

</tbody>
</table>

<div style="height:25px"></div>
      <table border="0" style="width:100%;border-collapse:separate ;">
         <tr style="padding:5px; ">
            <td style="width:33.3%;border:1px solid;padding:10px;"><div id="columnchart12" style="width: 100%; height: 200px;"></div></td>
            <td style="width:33.3%;border:1px solid;padding:10px;"><div id="columnchart13" style="width: 100%; height: 200px;"></div></td>
            <td style="width:33.3%;border:1px solid;padding:10px;"><div id="columnchart14" style="width: 100%; height: 200px;"></div></td>
         </tr>
      </table>
<div style="height:25px"></div>
      <table border="0" style="width:100%;border-collapse:separate ;">
         <tr style="padding:5px; ">
            <td style="width:50%;border:1px solid;padding:10px;"><div id="columnchart15" style="width: 100%; height: 200px;"></div></td>
            <td style="width:50%;border:1px solid;padding:10px;"><div id="columnchart16" style="width: 100%; height: 200px;"></div></td>
         </tr>
      </table>

</body>
</html>  