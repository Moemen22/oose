
<!DOCTYPE html>
<?php
include_once '../Controller/readController.php';
?>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>View Record</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
        <style type="text/css">
            .wrapper{
                width: 500px;
                margin: 0 auto;
            }
        </style>
    </head>
    <body>
        <div class="wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <form action="../Controller/readController.php" method="post">

                            <div class="page-header">
                                <h1>View Record</h1>
                            </div>
                            <div class="form-group">
                                <label>First Name</label>
                                <p class="form-control-static"><?php echo $row["Manager_First_Name"]; ?></p>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <p class="form-control-static"><?php echo $row["Manager_Last_Name"]; ?></p>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <p class="form-control-static"><?php echo $row["Manager_Email"]; ?></p>
                            </div>
                            <div class="form-group">
                                <label>Phone No.</label>
                                <p class="form-control-static"><?php echo $row["Manager_Phone_No"]; ?></p>
                            </div>
                            <p><a href="../index.php" class="btn btn-primary">Back</a></p>
                        </form>
                    </div>
                </div>        
            </div>
        </div>
        
    </body>
</html>