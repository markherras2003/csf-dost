<?php

namespace common\models\csf;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\csf\Csfreport;

/**
 * CsfreportSearch represents the model behind the search form about `common\models\csf\Csfreport`.
 */
class CsfreportSearch extends Csfreport
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['report_id', 'poor', 'unsatisfactory', 'satisfactory', 'verysatisfactory', 'outstanding'], 'integer'],
            [['units_type', 'report_questions', 'start_date', 'end_date'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Csfreport::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'report_id' => $this->report_id,
            'poor' => $this->poor,
            'unsatisfactory' => $this->unsatisfactory,
            'satisfactory' => $this->satisfactory,
            'verysatisfactory' => $this->verysatisfactory,
            'outstanding' => $this->outstanding,
            'start_date' => $this->start_date,
            'end_date' => $this->end_date,
        ]);

        $query->andFilterWhere(['like', 'units_type', $this->units_type])
            ->andFilterWhere(['like', 'report_questions', $this->report_questions]);

        return $dataProvider;
    }
}
