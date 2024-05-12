<?php include_once('./connections/conn_db.php'); ?>

<!doctype html>
<html lang="zh-TW">

<head>
    <?php include_once('./php/head.php') ?>
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
    <section style="margin-top: 150px;">
        <?php include_once('./php/card.php') ?>
    </section>

    <section id="slider" class="pt-5">
        <?php include_once('./php/frosted-glass.php') ?>
        <?php include_once('./php/container.php') ?>
    </section>
    <!-- footer -->
    <section class="footer">
        <?php include_once('./php/footer.php') ?>
    </section>


    <?php include_once('./php/js.php') ?>
</body>

</html>