

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Create Record</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
        <style type="text/css">
            .wrapper{
                width: 500px;
                margin: 0 auto;
            }
        </style>
    </head>
    <body>
        <h1>hello</h1>
        <div class="wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="page-header">
                            <h2>Create Record</h2>
                        </div>
                        <p>Please fill this form and submit to add Case record to the database.</p>
                        <form action="../../Controller/case/CreateControllerCase.php" method="post">
                            <div class="form-group <?php echo (!empty($firstName_err)) ? 'has-error' : ''; ?>">
                                <label>First Name</label>
                                <input type="text" name="firstName" class="form-control" value="<?php echo $firstName; ?>">
                                <span class="help-block"><?php echo $firstName_err; ?></span>
                            </div>
                            <div class="form-group <?php echo (!empty($lastname_err)) ? 'has-error' : ''; ?>">
                                <label>Last Name</label>
                                <textarea name="lastName" class="form-control"><?php echo $lastname; ?></textarea>
                                <span class="help-block"><?php echo $lastname_err; ?></span>
                            </div>
                            <div class="form-group <?php echo (!empty($address_err)) ? 'has-error' : ''; ?>">
                                <label>Address</label>
                                <input type="text" name="address" class="form-control" value="<?php echo $address; ?>">
                                <span class="help-block"><?php echo $address_err; ?></span>
                            </div>
                            <div class="form-group <?php echo (!empty($type_err)) ? 'has-error' : ''; ?>">
                                <label>Type</label>
                                <input type="text" name="type" class="form-control" value="<?php echo $type; ?>">
                                <span class="help-block"><?php echo $type_err; ?></span>
                            </div>
                            <div class="form-group <?php echo (!empty($marital_err)) ? 'has-error' : ''; ?>">
                                <label>Marital Status </label>
                                <input type="text" name="marital" class="form-control" value="<?php echo $marital; ?>">
                                <span class="help-block"><?php echo $marital_err; ?></span>
                            </div>
                            <div class="form-group <?php echo (!empty($nanid_err)) ? 'has-error' : ''; ?>">
                                <label>Nantional ID</label>
                                <input type="text" name="nanid" class="form-control" value="<?php echo $nanid; ?>">
                                <span class="help-block"><?php echo $nanid_err; ?></span>
                            </div>
                            <div class="form-group <?php echo (!empty($jobtit_err)) ? 'has-error' : ''; ?>">
                                <label>Job Title</label>
                                <input type="text" name="jobtit" class="form-control" value="<?php echo $jobtit; ?>">
                                <span class="help-block"><?php echo $jobtit_err; ?></span>
                            </div>
                            <input type="hidden" name="id" value="<?php echo $id; ?>"/>
                            <input type="submit" class="btn btn-primary" value="Submit">
                            <a href="../../index1.php" class="btn btn-default">Cancel</a>
                        </form>
                    </div>
                </div>        
            </div>
        </div>
    </body>
</html>
