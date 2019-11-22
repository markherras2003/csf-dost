<?php

namespace common\models\csf;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\csf\Question;

/**
 * QuestionSearch represents the model behind the search form about `common\models\csf\Question`.
 */
class QuestionSearch extends Question
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['question_id', 'active'], 'integer'],
            [['unit_type', 'q1', 'q2', 'q3', 'q4', 'q5', 'url_images'], 'safe'],
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
        $query = Question::find();

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
            'question_id' => $this->question_id,
            'active' => $this->active,
        ]);

        $query->andFilterWhere(['like', 'unit_type', $this->unit_type])
            ->andFilterWhere(['like', 'q1', $this->q1])
            ->andFilterWhere(['like', 'q2', $this->q2])
            ->andFilterWhere(['like', 'q3', $this->q3])
            ->andFilterWhere(['like', 'q4', $this->q4])
            ->andFilterWhere(['like', 'q5', $this->q5])
            ->andFilterWhere(['like', 'url_images', $this->url_images]);

        return $dataProvider;
    }
}
