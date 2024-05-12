<?php include_once('./connections/conn_db.php'); ?>

<!doctype html>
<html lang="zh-TW">

<head>
    <?php include_once('./php/head.php') ?>
    <link rel="stylesheet" href="navigationbar.css">
</head>

<body>
    <!-- <section class='wrapper'>
        <div class='hero'>
        </div>
        <div class='content'>
        </div>
    </section> -->

    <section>
        <?php include_once('./php/header.php') ?>
    </section>
    <section>
    <div class="left-menu">
  <div class="logo"><i class="fa fa-align-justify"></i>
    <div>Pure CSS Accordion Nav</div>
  </div>
  <div class="accordion">
    <div class="section">
      <input type="radio" name="accordion-1" id="section-1" checked="checked" />
      <label for="section-1"><span>Messages</span></label>
      <div class="content">
        <ul>
          <li><i class="fa fa-inbox"></i><span>Inbox</span></li>
          <li><i class="fa fa-share"></i><span>Sent </span></li>
          <li><i class="fa fa-archive"></i><span>Archive</span></li>
        </ul>
      </div>
    </div>
    <div class="section">
      <input type="radio" name="accordion-1" id="section-2" value="toggle" />
      <label for="section-2"> <span>Usage</span></label>
      <div class="content">
        <ul>
          <li><i class="fa fa-cog"></i><span>System</span></li>
          <li><i class="fa fa-group"></i><span>Users </span></li>
          <li><i class="fa fa-sitemap"></i><span>Visitation</span></li>
        </ul>
      </div>
    </div>
    <div class="section">
      <input type="radio" name="accordion-1" id="section-3" value="toggle" />
      <label for="section-3"> <span>Scroller</span></label>
      <div class="content">
        <ul>
          <li><i class="fa fa-coffee"></i><span>Need Coffee</span></li>
          <li><i class="fa fa-coffee"></i><span>Need Coffee </span></li>
          <li><i class="fa fa-coffee"></i><span>Need Coffee</span></li>
          <li><i class="fa fa-coffee"></i><span>Need Coffee</span></li>
          <li><i class="fa fa-coffee"></i><span>Need Coffee </span></li>
          <li><i class="fa fa-coffee"></i><span>Need Coffee</span></li>
          <li><i class="fa fa-coffee"></i><span>Need Coffee</span></li>
          <li><i class="fa fa-coffee"></i><span>Need Coffee </span></li>
          <li><i class="fa fa-coffee"></i><span>Need Coffee</span></li>
        </ul>
      </div>
    </div>
    <div class="section">
      <input type="radio" name="accordion-1" id="section-4" value="toggle" />
      <label for="section-4"> <span>Section 4</span></label>
      <div class="content"></div>
    </div>
  </div>
</div>
    </section>



    <?php include_once('./php/js.php') ?>
    <script src="commodity.js"></script>
</body>

</html>