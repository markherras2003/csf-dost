<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\csf\Csfreport */

$this->title = $model->report_id;
$this->params['breadcrumbs'][] = ['label' => 'Csfreports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="csfreport-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->report_id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->report_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'report_id',
            'units_type',
            'report_questions',
            'poor',
            'unsatisfactory',
            'satisfactory',
            'verysatisfactory',
            'outstanding',
            'start_date',
            'end_date',
        ],
    ]) ?>

</div>
