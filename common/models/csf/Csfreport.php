<?php

namespace common\models\csf;

use Yii;

/**
 * This is the model class for table "tbl_csfreport".
 *
 * @property integer $report_id
 * @property string $units_type
 * @property string $report_questions
 * @property integer $poor
 * @property integer $unsatisfactory
 * @property integer $satisfactory
 * @property integer $verysatisfactory
 * @property integer $outstanding
 * @property string $start_date
 * @property string $end_date
 */
class Csfreport extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_csfreport';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['poor', 'unsatisfactory', 'satisfactory', 'verysatisfactory', 'outstanding'], 'integer'],
            [['start_date', 'end_date'], 'safe'],
            [['units_type', 'report_questions'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'report_id' => 'Report ID',
            'units_type' => 'Units Type',
            'report_questions' => 'Report Questions',
            'poor' => 'Poor',
            'unsatisfactory' => 'Unsatisfactory',
            'satisfactory' => 'Satisfactory',
            'verysatisfactory' => 'Verysatisfactory',
            'outstanding' => 'Outstanding',
            'start_date' => 'Start Date',
            'end_date' => 'End Date',
        ];
    }
}
