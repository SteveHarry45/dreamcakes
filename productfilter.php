<?php
$i = 1;
include 'Config/connection.php';
if (isset($_POST['request'])) {
    $request = $_POST['request'];
    $query = "SELECT * FROM cake WHERE cid='$request'";
    $result = $conn->query($query);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_object()) {


            $query1 = "SELECT * FROM cakecategory WHERE cid='$request' ";
            $result1 = $conn->query($query1);
            if ($result1->num_rows > 0) {
                while ($rows = $result1->fetch_object()) {
                    $cname = $rows->cname ? $rows->cname : null;
                }
                ?>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="<?php echo 'Admin/cakeuploads/' . $row->image; ?>">
                            <img src="<?php echo 'Admin/cakeuploads/' . $row->image; ?>" width="270px" height="270px" />
                            <div class="product__label">
                                <span>
                                    <?php echo $cname; ?>
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
}
?>