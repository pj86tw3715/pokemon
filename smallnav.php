<?php
/*

儲存SQL語法
1.選擇 pyclass 資料表 裡全部資料
2.將獲取資料中，篩選出 level 欄位數值為 1 的資料
3.將由 sort欄位 數值 進行由小到大 排序

*/
$SQLstring = sprintf("SELECT * FROM pyclass WHERE level=1 ORDER BY sort");


/* 
1.$link 是 conn_db.php 檔案內的變數-作用為 連線資料庫
2.(先看 = 後方程式碼)執行 上方撰寫的 SQL語法
3.獲取的 以篩選排序完的數據 儲存到 = 前方的變數中
*/
$smallnav = $link->query($SQLstring);

// 控制 active類別 變數
$i = 1

?>

<ul class="smallnavUL">

  <?php
  /* 
  while迴圈-通常你並不知道資料結果會有幾筆，所以你需要用 while 的方式去做

  fetch()-一次取出一筆資料
  一筆資料會有多項欄位，所以是陣列結構

  1.(先看 = 後方程式碼)將變數內的所有資料 使用 fetch()取出一筆資料

  2.將本次取出的資料儲存到 = 前方的變數中

  3.{}內程式碼會由while迴圈重複執行

  4.將後台的資料取出，由於是陣列結構，所以取出的方法為
  $變數['資料表欄位名字']

  5.第一次迴圈結束後，將回到開頭，重新執行一次，差別在於fetch取出的資料

  6.fetch每取出一筆資料後，下次就會取下一筆資料，不會重複

  7.while迴圈結束  當後台資料已被全部取出，迴圈就結束

  */
  while ($smallnav_Rows = $smallnav->fetch()) {
  ?>

    <li >
      <a class="whiteText" data-id="<?php echo $smallnav_Rows['cname'] ?>">
        <i class="<?php echo $smallnav_Rows['fonticon'] ?>"></i><span><?php echo $smallnav_Rows['cname'] ?></span></a>
    </li>

  <?php
    $i++;
  }
  ?>

</ul>