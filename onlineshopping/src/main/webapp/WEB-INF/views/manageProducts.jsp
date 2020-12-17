<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<div class="container">

    <div class="row">

        <div class="offset-md-3 col-md-8 ">

            <div class="panel panel-primary ">

                <div class="panel-heading text-primary">

                    <h4>Product Management</h4>

                </div>

                <div class="panel-body">

                    <!-- FORM ELEMENTS -->
                    <form class="form-horizontal">

                        <div class="form-group">

                            <label class="control-label col-md-4" for="name">Enter Product Name: </label>
                            <div class="col-md-8">

                                <input type="text" name="name" id="name" placeholder="Product Name" class="form-control"/>

                                <em class="help-block">Please Enter Product Name!</em>

                            </div>

                        </div>

                        <div class="form-group">

                            <label class="control-label col-md-4" for="brand">Enter Brand Name: </label>
                            <div class="col-md-8">

                                <input type="text" name="brand" id="brand" placeholder="Brand Name" class="form-control"/>

                                <em class="help-block">Please Enter Brand Name!</em>

                            </div>

                        </div>

                        <div class="form-group">

                            <div class="col-md-offset-4 col-md-8">

                                <input type="submit" name="brand" id="submit" value="Submit" class="btn btn-primary"/>

                            </div>

                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>
</div>