<?php

namespace common\models\lab;

use Yii;

/**
 * This is the model class for table "tbl_cancelledrequest".
 *
 * @property integer $canceledrequest_id
 * @property integer $request_id
 * @property string $request_ref_num
 * @property string $reason
 * @property string $cancel_date
 * @property integer $cancelledby
 *
 * @property Request $request
 */
class Cancelledrequest extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tbl_cancelledrequest';
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
            [['request_id', 'request_ref_num', 'reason', 'cancel_date', 'cancelledby'], 'required'],
            [['request_id', 'cancelledby'], 'integer'],
            [['cancel_date'], 'safe'],
            [['request_ref_num', 'reason'], 'string', 'max' => 50],
            [['request_id'], 'exist', 'skipOnError' => true, 'targetClass' => Request::className(), 'targetAttribute' => ['request_id' => 'request_id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'canceledrequest_id' => 'Canceledrequest ID',
            'request_id' => 'Request ID',
            'request_ref_num' => 'Request Ref Num',
            'reason' => 'Reason',
            'cancel_date' => 'Cancel Date',
            'cancelledby' => 'Cancelledby',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRequest()
    {
        return $this->hasOne(Request::className(), ['request_id' => 'request_id']);
    }
}
