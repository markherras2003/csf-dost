<?php

return [
    'db'=>
    [
        'class' => 'yii\db\Connection',
        'dsn' => 'mysql:host=192.168.1.96;dbname=csf',
        'username' => 'csfuser',
        'password' => 'D057R3g10n9!@#',
        'charset' => 'utf8',
        'tablePrefix' => 'tbl_',
    ],
    'csfdb'=>[
        'class' => 'yii\db\Connection',  
        'dsn' => 'mysql:host=192.168.1.96;dbname=csf-main',
        'username' => 'csfuser',
        'password' => 'D057R3g10n9!@#',
        'charset' => 'utf8',
        'tablePrefix' => 'tbl_',
    ],
];
