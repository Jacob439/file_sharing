<?php

$path    = '/var/www/files';
$files = scandir($path);
$files = array_diff(scandir($path), array('.', '..'));
echo json_encode($files);
