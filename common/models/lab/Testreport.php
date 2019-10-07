<?php

namespace common\models\lab;

use Yii;

/**
 * This is the model class for table "tbl_testreport".
 *
 * @property integer $testreport_id
 * @property integer $request_id
 * @property integer $lab_id
 * @property string $report_num
 * @property string $report_date
 * @property integer $status_id
 * @property string $release_date
 * @property integer $reissue
 * @property integer $previous_id
 * @property integer $new_id
 *
 * @property Lab $lab
 * @property Request $request
 * @property Status $status
 * @property Testreport $new
 * @property Testreport[] $testreports
 * @property TestreportSample[] $testreportSamples
 */
class Testreport extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_testreport';
    }

    /**
     * @return \yii\db\Connection the database connection used by this AR class.
     */
    public static function getDb()
    {
        return Yii::$app->get('labdb');
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['request_id', 'lab_id', 'report_num', 'report_date', 'release_date', 'reissue', 'previous_id', 'new_id'], 'required'],
            [['request_id', 'lab_id', 'status_id', 'reissue', 'previous_id', 'new_id'], 'integer'],
            [['report_date', 'release_date'], 'safe'],
            [['report_num'], 'string', 'max' => 50],
            [['lab_id'], 'exist', 'skipOnError' => true, 'targetClass' => Lab::className(), 'targetAttribute' => ['lab_id' => 'lab_id']],
            [['request_id'], 'exist', 'skipOnError' => true, 'targetClass' => Request::className(), 'targetAttribute' => ['request_id' => 'request_id']],
            [['status_id'], 'exist', 'skipOnError' => true, 'targetClass' => Status::className(), 'targetAttribute' => ['status_id' => 'status_id']],
            [['new_id'], 'exist', 'skipOnError' => true, 'targetClass' => Testreport::className(), 'targetAttribute' => ['new_id' => 'previous_id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'testreport_id' => 'Testreport ID',
            'request_id' => 'Request ID',
            'lab_id' => 'Lab ID',
            'report_num' => 'Report Num',
            'report_date' => 'Report Date',
            'status_id' => 'Status ID',
            'release_date' => 'Release Date',
            'reissue' => 'Reissue',
            'previous_id' => 'Previous ID',
            'new_id' => 'New ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLab()
    {
        return $this->hasOne(Lab::className(), ['lab_id' => 'lab_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRequest()
    {
        return $this->hasOne(Request::className(), ['request_id' => 'request_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStatus()
    {
        return $this->hasOne(Status::className(), ['status_id' => 'status_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getNew()
    {
        return $this->hasOne(Testreport::className(), ['previous_id' => 'new_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTestreports()
    {
        return $this->hasMany(Testreport::className(), ['new_id' => 'previous_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTestreportSamples()
    {
        return $this->hasMany(TestreportSample::className(), ['testreport_id' => 'testreport_id']);
    }
}
