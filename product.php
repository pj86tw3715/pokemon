<?php include_once('./connections/conn_db.php'); ?>

<!doctype html>
<html lang="zh-TW">

<head>

    <link rel="stylesheet" href="navigationbar.css">
    <link rel="stylesheet" href="card01.css">

</head>

<body>
    <!-- <section class='wrapper'>
        <div class='hero'>
        </div>
        <div class='content'>
        </div>
    </section> -->

    <section>

        <div class="row">

            <div class="col-md-2">

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
                                    <li><i class="fa fa-inbox"></i><a href="#">Inbox</a></li>
                                    <li><i class="fa fa-share"></i><a href="#">Sent </a></li>
                                    <li><i class="fa fa-archive"></i><a href="#">Archive</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="section">
                            <input type="radio" name="accordion-1" id="section-2" value="toggle" />
                            <label for="section-2"> <span>Usage</span></label>
                            <div class="content">
                                <ul>
                                    <li><i class="fa fa-cog"></i><a href="#">System</a></li>
                                    <li><i class="fa fa-group"></i><a href="#">Users </a></li>
                                    <li><i class="fa fa-sitemap"></i><a href="#">Visitation</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="section">
                            <input type="radio" name="accordion-1" id="section-3" value="toggle" />
                            <label for="section-3"> <span>Scroller</span></label>
                            <div class="content">
                                <ul>
                                    <li><i class="fa fa-coffee"></i><a href="#">Need Coffee</a></li>
                                    <li><i class="fa fa-coffee"></i><a href="#">Need Coffee </a></li>
                                    <li><i class="fa fa-coffee"></i><a href="#">Need Coffee</a></li>
                                    <li><i class="fa fa-coffee"></i><a href="#">Need Coffee</a></li>
                                    <li><i class="fa fa-coffee"></i><a href="#">Need Coffee </a></li>
                                    <li><i class="fa fa-coffee"></i><a href="#">Need Coffee</a></li>
                                    <li><i class="fa fa-coffee"></i><a href="#">Need Coffee</a></li>
                                    <li><i class="fa fa-coffee"></i><a href="#">Need Coffee </a></li>
                                    <li><i class="fa fa-coffee"></i><a href="#">Need Coffee</a></li>
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

            </div>


            <div class="col-md-10">
                <div class="container">
                    <div class="card__container">
                        <article class="card__article">
                            <img src="./images12/001.png" alt="image" class="card__img">

                            <div class="card__data">
                                <span class="card__description">Vancouver Mountains, Canada</span>
                                <h2 class="card__title">The Great Path</h2>
                                <a href="#" class="card__button">Read More</a>
                            </div>
                        </article>

                        <article class="card__article">
                            <img src="./images12/001.png" alt="image" class="card__img">

                            <div class="card__data">
                                <span class="card__description">Poon Hill, Nepal</span>
                                <h2 class="card__title">Starry Night</h2>
                                <a href="#" class="card__button">Read More</a>
                            </div>
                        </article>

                        <article class="card__article">
                            <img src="./images12/001.png" alt="image" class="card__img">

                            <div class="card__data">
                                <span class="card__description">Bojcin Forest, Serbia</span>
                                <h2 class="card__title">Path Of Peace</h2>
                                <a href="#" class="card__button">Read More</a>
                            </div>
                        </article>
                        <article class="card__article">
                            <img src="./images12/001.png" alt="image" class="card__img">

                            <div class="card__data">
                                <span class="card__description">Bojcin Forest, Serbia</span>
                                <h2 class="card__title">Path Of Peace</h2>
                                <a href="#" class="card__button">Read More</a>
                            </div>
                        </article>
                        <article class="card__article">
                            <img src="./images12/001.png" alt="image" class="card__img">

                            <div class="card__data">
                                <span class="card__description">Bojcin Forest, Serbia</span>
                                <h2 class="card__title">Path Of Peace</h2>
                                <a href="#" class="card__button">Read More</a>
                            </div>
                        </article>
                        <article class="card__article">
                            <img src="./images12/001.png" alt="image" class="card__img">

                            <div class="card__data">
                                <span class="card__description">Bojcin Forest, Serbia</span>
                                <h2 class="card__title">Path Of Peace</h2>
                                <a href="#" class="card__button">Read More</a>
                            </div>
                        </article>
                    </div>
                </div>

            </div>

        </div>
    </section>



    <?php include_once('./php/js.php') ?>
    <script src="commodity.js"></script>
</body>

</html>