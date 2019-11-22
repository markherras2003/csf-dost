<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\csf\Csfreport */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="csfreport-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'units_type')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'report_questions')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'poor')->textInput() ?>

    <?= $form->field($model, 'unsatisfactory')->textInput() ?>

    <?= $form->field($model, 'satisfactory')->textInput() ?>

    <?= $form->field($model, 'verysatisfactory')->textInput() ?>

    <?= $form->field($model, 'outstanding')->textInput() ?>

    <?= $form->field($model, 'start_date')->textInput() ?>

    <?= $form->field($model, 'end_date')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
