<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\csf\Question */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="question-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'unit_type')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'q1')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'q2')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'q3')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'q4')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'q5')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'url_images')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'active')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
