<?php

namespace frontend\modules\csf\controllers;

use Yii;
use common\models\csf\Csfreport;
use common\models\csf\CsfreportSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use kartik\mpdf\Pdf;

/**
 * CsfreportController implements the CRUD actions for Csfreport model.
 */
class CsfreportController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Csfreport models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new CsfreportSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionGeneratecsf() {
       $request=Yii::$app->request;
       $sd = $request->post('sd');
       $ed = $request->post('ed');

        $con = Yii::$app->db;
        $pordetails = $con->createCommand("CALL `csf`.spExecuteFinalReport(:paramName1, :paramName2)") 
        ->bindValue(':paramName1' , $sd )
        ->bindValue(':paramName2', $ed)
        ->execute();
        return $pordetails;
    }


    /**
     * Displays a single Csfreport model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Csfreport model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Csfreport();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->report_id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Csfreport model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->report_id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Csfreport model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Csfreport model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Csfreport the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Csfreport::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    function getunits($units_type)
    {
        $con = Yii::$app->db;
        $sql = "SELECT * from tbl_csfreport WHERE units_type='".$units_type."'";
        $units_details = $con->createCommand($sql)->queryAll();
        return $units_details;
    }

    public function actionReportby()
    {
        $request = Yii::$app->request;
        $units_type = $request->get('units_type');
        $csfdetails = $this->getunits($units_type);
        $con = Yii::$app->db;
        $content = $this->renderPartial('_reportcsf', ['csfdetails' => $csfdetails]);
        $pdf = new Pdf();
        $pdf->format = [216,330];
        $pdf->orientation = Pdf::ORIENT_LANDSCAPE;
        //$pdf->format = Pdf::FORMAT_LEGAL;
        $pdf->destination = Pdf::DEST_BROWSER;
       /* $pdf->marginLeft=10;
        $pdf->marginHeader=5;
        $pdf->marginTop=55;
        $pdf->marginBottom=65;
        $pdf->defaultFontSize=11;
        */
        $pdf->content = $content;
        $pdf->cssFile = '@vendor/kartik-v/yii2-mpdf/assets/kv-mpdf-bootstrap.min.css';
        $pdf->cssInline = '.kv-heading-1{font-size:18px}.nospace-border{border:0px;}.no-padding{ padding:0px;}.print-container{font-size:11px;font-family:Arial,Helvetica Neue,Helvetica,sans-serif; }';
        $headers='';
        $LeftFooterContent = '';
        $pdf->options = [
            'title' => 'ABSTRACT OF BIDS',
            'defaultheaderline' => 0,
            'defaultfooterline' => 0,
            'subject' => 'Report Abstract'];
        $pdf->methods = [
            'SetHeader' => [$headers],
            'SetFooter' => [$LeftFooterContent],
        ];

        return $pdf->render();
    }

}
