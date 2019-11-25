<?php

use yii\helpers\Html;
use common\modules\pdfprint;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\csf\CsfreportSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$BaseURL = $GLOBALS['frontend_base_uri'];
$this->title = 'CSF Generated Report';
$this->params['breadcrumbs'][] = $this->title;

$this->registerJsFile($BaseURL.'js/angular.min.js');
$this->registerJsFile($BaseURL.'js/ui-bootstrap-tpls-0.10.0.min.js');
$this->registerJsFile($BaseURL.'js/jquery.tabletojson.js');

?>
<div class="csfreport-index">

<div style="height:25px;"></div>


<div class="report-entry-form" style="borde">
    <div class="col-lg-1">
        <h5 style="text-align:right;font-weight:bold;">Start Date : </h5>
    </div>
    <div class="col-lg-3">
        <input class="form-control" type="date" id="txtstart" name="txtstart">
    </div>
    <div class="col-lg-1">
        <h5 style="text-align:right;font-weight:bold;">End Date : </h5>
    </div>
    <div class="col-lg-3">
        <input class="form-control" type="date" id="txtend" name="txtend">
    </div>
    <div class="col-lg-4">
        <input type="button" id="btnGenerate" name="btnGenerate" value="Generate Report" class="btn btn-success btn-lg btn-block">
    </div>

</div>

<div style="height:75px;"></div>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'id' => 'kv-grid-data',
        'pjax' => true,
        'pjaxSettings' => [
            'neverTimeout'=>false,
            'options' => [
                'enablePushState' => false,
            ],
        ],
        'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
        'headerRowOptions' => ['class' => 'kartik-sheet-style'],
        'filterRowOptions' => ['class' => 'kartik-sheet-style'],
         // set export properties
         'export' => [
            'fontAwesome' => true
        ],
        'toolbarContainerOptions' => ['class' => 'btn-toolbar kv-grid-toolbar toolbar-container pull-left'],
        'bordered' => true,
        'striped' => true,
        'condensed' => true,
        'responsive' => true,   
        'hover' => true,
        'panel' => [
            'heading' => '',
        ],
        'persistResize' => false,
        'toggleDataOptions' => ['minCount' => 10],
        'exportConfig' => true,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [

                'attribute'=>'units_type',
                /*'value'=>function ($data) {
                     return $data->bid->supplier->supplier_name;
                },*/
                'group'=>true,  // enable grouping,
                'groupedRow'=>true,                    // move grouped column to a single grouped row
                'groupOddCssClass'=>'kv-grouped-row',  // configure odd group cell css class
                'groupEvenCssClass'=>'kv-grouped-row', // configure even group cell css class
            ],

            'report_questions',

            ['attribute'=>'poor',
            'label'=> 'Poor',
            'vAlign' => 'center',
            'hAlign' => 'center',
            'width' => '10%',
            ],

            ['attribute'=>'unsatisfactory',
            'label'=> 'Unsatisfactory',
            'vAlign' => 'center',
            'hAlign' => 'center',
            'width' => '10%',
            ],

            ['attribute'=>'satisfactory',
            'label'=> 'Satisfactory',
            'vAlign' => 'center',
            'hAlign' => 'center',
            'width' => '10%',
            ],

            
            ['attribute'=>'verysatisfactory',
            'label'=> 'Very Satisfactory',
            'vAlign' => 'center',
            'hAlign' => 'center',
            'width' => '10%',
            ],

            ['attribute'=>'outstanding',
            'label'=> 'Outstanding',
            'vAlign' => 'center',
            'hAlign' => 'center',
            'width' => '10%',
            ],

            ['attribute'=>'start_date',
            'label'=> 'Start Date',
            'vAlign' => 'center',
            'hAlign' => 'center',
            'width' => '10%',
            ],

            ['attribute'=>'end_date',
            'label'=> 'End Date',
            'vAlign' => 'center',
            'hAlign' => 'center',
            'width' => '10%',
            ],

            [

                'label'=>'Actions',
                'headerOptions' => ['class' => 'kartik-sheet-style'],
                'vAlign' => 'middle',
                'hAlign' => 'center',
                'group'=>true,  // enable grouping
                'subGroupOf'=>1, // supplier column index is the parent group
                'format'=>'raw',
                'value' => function ($data) {
                    return Html::a('<span class="glyphicon glyphicon-print"></span>', ['reportby?units_type='.$data["units_type"].'&&start_date='.$data["start_date"].'&&end_date='.$data["end_date"]], [
                        'class'=>'btn-pdfprint btn btn-primary',
                        'data-pjax'=>"0",
                        'pjax'=>"0",
                        'title'=>'Will open the generated PDF file in a new window'
                    ]);
                },
            ],


        ],
    ]); 
    
    $this->registerJsFile($BaseURL.'js/csfreport/function.js'); 

    ?>

<?= pdfprint\Pdfprint::widget([
        //'elementClass' => '.btn-pdfprint'
    ]); ?>
</div>
