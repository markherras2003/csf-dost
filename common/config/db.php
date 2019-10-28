<?php

return [
    'db'=>
    [
        'class' => 'yii\db\Connection',
        'dsn' => 'mysql:host=localhost;dbname=csf',
        'username' => 'root',
        'password' => 'root',
        'charset' => 'utf8',
        'tablePrefix' => 'tbl_',
    ],
    'csfdb'=>[
        'class' => 'yii\db\Connection',  
        'dsn' => 'mysql:host=localhost;dbname=csf-main',
        'username' => 'root',
        'password' => 'root',
        'charset' => 'utf8',
        'tablePrefix' => 'tbl_',
    ],
];

