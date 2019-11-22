<?php
$counter=0;
   foreach ($csfdetails as $cs) {
       $units = $cs["units_type"];
       $counter++;
   }
?>

 
<table style="width: 100%;" border="1">
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
<td style="width: 16.67%; text-align: center;">&nbsp;Attributes</td>
<td style="width: 16.67%; text-align: center;">Outstanding&nbsp;</td>
<td style="width: 16.67%; text-align: center;">Very Satisfactory&nbsp;</td>
<td style="width: 16.67%; text-align: center;">Satisfactory&nbsp;</td>
<td style="width: 16.67%; text-align: center;">&nbsp;Unsatisfactory</td>
<td style="width: 16.67%; text-align: center;">Poor&nbsp;</td>
</tr>

<?php 
   $x=0;
   foreach ($csfdetails as $cs) {?>

<tr>
<td style="width: 50%; text-align: left;"><?= $cs["report_questions"] ?></td>
<td style="width: 10%; text-align: center;"><?= $cs["outstanding"] ?></td>
<td style="width: 10%; text-align: center;"><?= $cs["verysatisfactory"] ?></td>
<td style="width: 10%; text-align: center;"><?= $cs["satisfactory"] ?></td>
<td style="width: 10%; text-align: center;"><?= $cs["unsatisfactory"] ?></td>
<td style="width: 10%; text-align: center;"><?= $cs["poor"] ?></td>
</tr>


   
<?php } ?>

</tbody>
</table>