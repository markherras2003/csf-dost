<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\csf\CsfreportSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="csfreport-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'report_id') ?>

    <?= $form->field($model, 'units_type') ?>

    <?= $form->field($model, 'report_questions') ?>

    <?= $form->field($model, 'poor') ?>

    <?= $form->field($model, 'unsatisfactory') ?>

    <?php // echo $form->field($model, 'satisfactory') ?>

    <?php // echo $form->field($model, 'verysatisfactory') ?>

    <?php // echo $form->field($model, 'outstanding') ?>

    <?php // echo $form->field($model, 'start_date') ?>

    <?php // echo $form->field($model, 'end_date') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
