<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel common\models\procurement\SectionSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Sections';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="section-index">

<h1 class="centered" style="margin-bottom: 0px;"><i class="fa fa-sitemap"></i> <?= Html::encode($this->title) ?></h1>
<br/>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Section', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'id' => 'kv-grid-data',
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'containerOptions' => ['style' => 'overflow: auto'], // only set when $responsive = false
        'headerRowOptions' => ['class' => 'kartik-sheet-style'],
        'filterRowOptions' => ['class' => 'kartik-sheet-style'],
        'toolbar' =>
        [
            '{export}',
            '{toggleData}',
            [
                'content'=>
                       "<h5 style='display: inline-block;margin:0px;' data-step='1' data-intro='Click here to create Obligation Request'><span>".Html::button('Create Obligation Request', ['value' => Url::to(['obligationrequest/create']), 'title' => 'Create Obligation Request', 'tab-index'=>0 , 'class' => 'btn btn-success', 'style'=>'margin-right: 6px;', 'id'=>'buttonAddObligation']) .
                    Html::a('<i class="glyphicon glyphicon-repeat"></i>', ['index'], ['data-pjax' => false, 'class' => 'btn btn-default', 'title'=>'Reset Grid']). '</span></h5>'
                ,
            ],
        ],
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
        'showPageSummary' => true,
        'panel' => [
            'heading' => '',
        ],
        'columns' => [
            ['class' => 'kartik\grid\SerialColumn'],
            
            'section_id',
            [
                'attribute'=>'division_id',
                'label'=>'Division Name',
                'enableSorting'=> 'false',
                'width'=>'60%',
                'value'=>function($data){ 
                    return $data->division->name;
                },
            ],
            'name',
                    [
            'class' => '\kartik\grid\ActionColumn',
            'width'=>'5%',
            'template' => '{view}{update}{print} {print2}',
            'buttons'=>[
                'update' => function($url,$model,$key){
                    $btn = Html::button('<span class=\'glyphicon glyphicon-pencil\'></span>', ['value' => Url::to(['update?id='.$model["dv_id"].'&view=edit']), 'title' => 'Edit Disbursement', 'tab-index'=>0 , 'class' => 'btn btn-success', 'style'=>'margin-right: 6px;', 'id'=>'buttonAddDisbursement']);
                    return $btn;
                },
                'view' => function($url,$model,$key){
                    $btn = Html::button('<span class=\'glyphicon glyphicon-eye-open\'></span>', ['value' => Url::to(['view?id='.$model["dv_id"]]), 'title' => 'View Disbursement', 'tab-index'=>0 , 'class' => 'btn btn-info', 'style'=>'margin-right: 6px;', 'id'=>'buttonAddDisbursement']);
                    return $btn;
                },
                'delete'=>function($url, $model){
                    return Html::a("<span class='glyphicon glyphicon-trash'></span>", $url, [
                        "title"=>"Delete",
                        "aria-label"=>"Delete",
                        "data-pjax"=>"1",
                        "data-method"=>"post",
                        "data-confirm"=>"Are you sure you want to delete?",
                        "class"=>"btn btn-danger"
                    ]);
                },
                'print2' => function($url,$model,$key){
                    return Html::a('<span class="glyphicon glyphicon-print"></span>', ['reportdvfull?id='.$model["dv_id"]], [
                        'class'=>'btn-pdfprint btn btn-primary',
                        'data-pjax'=>"0",
                        'pjax'=>"0",
                        'title'=>'Will open the generated PDF file in a new window'
                    ]);

                },
            ],
            'headerOptions' => ['class' => 'kartik-sheet-style'],
            'deleteOptions' => ['label' => '<span class="glyphicon glyphicon-remove"></span>']
        ],
        
            ],
        ]);?>
</div>
