<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\csf\Csfreport */

$this->title = 'Create Csfreport';
$this->params['breadcrumbs'][] = ['label' => 'Csfreports', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="csfreport-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
