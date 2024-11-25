<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cake | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <!-- Page Preloder -->
    <!-- <div id="preloder">
        <div class="loader"></div>
    </div> -->

    <!-- Offcanvas Menu Begin -->

    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <?php include "header.php" ?>
    <!-- Header Section End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2>Shop</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <!-- <div class="breadcrumb__links">
                        <a href="index.php">Home</a>
                       
                    </div> -->
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="shop__option">
                <div class="row">
                    <div class="col-lg-7 col-md-7">
                        <div class="shop__option__search">
                            <select name="category" id="category">
                                <?php
                                $i = 1;
                                include 'Config/connection.php';
                                $query1 = "SELECT * FROM cakecategory";
                                $result1 = $conn->query($query1);
                                if ($result1->num_rows > 0) {
                                    while ($rows = $result1->fetch_object()) {

                                        ?>
                                        <option value="<?php echo $rows->cid; ?>"><?php echo $rows->cname; ?></option>
                                        <?php $i++;
                                    }
                                } ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-5">

                    </div>
                </div>
            </div>
            <div class="row" id="row">
                <?php
                $i = 1;
                include 'Config/connection.php';
                $query = "SELECT * FROM cake ";
                $result = $conn->query($query);
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_object()) {
                        $cid = $row->cid;

                        $query1 = "SELECT * FROM cakecategory WHERE cid='$cid' ";
                        $result1 = $conn->query($query1);
                        if ($result1->num_rows > 0) {
                            while ($rows = $result1->fetch_object()) {

                                ?>
                                <div class="col-lg-3 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <div class="product__item__pic set-bg"
                                            data-setbg="<?php echo 'Admin/cakeuploads/' . $row->image; ?>">
                                            <img src="<?php echo 'Admin/cakeuploads/' . $row->image; ?>" width="270px" height="270px" />
                                            <div class="product__label">
                                                <span>
                                                    <?php echo $rows->cname; ?>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="product__item__text">
                                            <h6><a href="#">
                                                    <?php echo $row->cakename; ?>
                                                </a></h6>
                                            <div class="product__item__price">₹
                                                <?php echo $row->price; ?>
                                            </div>
                                            <div class="cart_add">
                                                <a href="#" onclick="lert()">Order</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <?php $i++;
                            }
                        }
                    }
                } ?>


            </div>

        </div>
    </section>
    <!-- Shop Section End -->

    <!-- Footer Section Begin -->
    <?php include "footer.php" ?>
    <!-- Footer Section End -->

    <!-- Search Begin -->

    <!-- Search End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.barfiller.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/main.js"></script>
    <script>
        function lert() {
            alert("Before Order Please Login ");
            window.location.replace("User/login.php");
        }
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#category").on('change', function () {
                var value = $(this).val();
                // alert(value);
                $.ajax({
                    url: "productfilter.php",
                    type: "POST",
                    data: 'request=' + value,
                    beforeSend: function () {
                        $("#row").html("Working Fine");
                    },
                    success: function (data) {
                        $("#row").html(data);
                    }
                })

            })
        })
    </script>
</body>

</html>