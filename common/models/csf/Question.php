<?php

namespace common\models\csf;

use Yii;

/**
 * This is the model class for table "tbl_csfquestion".
 *
 * @property integer $question_id
 * @property string $unit_type
 * @property string $q1
 * @property string $q2
 * @property string $q3
 * @property string $q4
 * @property string $q5
 * @property string $url_images
 * @property integer $active
 */
class Question extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_csfquestion';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['active'], 'integer'],
            [['unit_type', 'q1', 'q2', 'q3', 'q4', 'q5', 'url_images'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'question_id' => 'Question ID',
            'unit_type' => 'Unit Type',
            'q1' => 'Q1',
            'q2' => 'Q2',
            'q3' => 'Q3',
            'q4' => 'Q4',
            'q5' => 'Q5',
            'url_images' => 'Url Images',
            'active' => 'Active',
        ];
    }
}
