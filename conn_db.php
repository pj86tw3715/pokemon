<?php
// POD SQL連線
/*
$dsn
1.連線位置
2.連線的資料庫
3.編碼
*/
$dsn = "mysql:host=localhost;dbname=expstore;charset=utf8";

/* 使用者帳號 */
$user = "sales";

/* 使用者密碼 */
$password = "123456";

/* 
1.(先看 = 後方程式碼)連線方式
2.將連線方式 儲存在 $link變數中
 */
$link = new PDO($dsn, $user, $password);

/* 设置所有日期/时间函数使用的默认时区 */
date_default_timezone_set("Asia/Taipei");