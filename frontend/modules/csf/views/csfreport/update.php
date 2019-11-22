<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\csf\Csfreport */

$this->title = 'Update Csfreport: ' . $model->report_id;
$this->params['breadcrumbs'][] = ['label' => 'Csfreports', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->report_id, 'url' => ['view', 'id' => $model->report_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="csfreport-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
