
<?php
$components = array_merge(
    require(__DIR__ . '/db.php'),
    require(__DIR__ . '/components.php')
);
return [
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
    ],
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'modules' => [
        'gridview' => ['class' => 'kartik\grid\Module'],
        'gii' => [
            'class' => 'yii\gii\Module',
            //'allowedIPs' => ['127.0.0.1', '::1', '192.168.1.*'] // adjust this to your needs
            'allowedIPs' => ['*'] // adjust this to your needs
        ],
    ],
    
    'components' => $components
];
