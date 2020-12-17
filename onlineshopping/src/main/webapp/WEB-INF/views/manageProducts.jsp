<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<div class="container">
    <div class="row">
        <div class="offset-md-3 col-md-8">
            <div class="panel panel-primary">
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
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-4" for="brand">Enter Brand Name: </label>
                            <div class="col-md-8">
                                <input type="text" name="brand" id="brand" placeholder="Brand Name" class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-4" for="description">Product Description: </label>
                            <div class="col-md-8">
                                <textarea type="description" name="description" id="description" rows="3" placeholder="Write a description" class="form-control">
                                </textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-4" for="unitPrice">Enter Unit Price: </label>
                            <div class="col-md-8">
                                <input type="number" name="unitPrice" id="unitPrice" placeholder="Unit Price In &#36" class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-4" for="quantity">Quantity Available: </label>
                            <div class="col-md-8">
                                <input type="number" name="quantity" id="quantity" placeholder="Quantity Available" class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-4" for="categoryId">Select Category: </label>
                            <div class="col-md-8">
                                <select class="form-control" id="categoryId" name="categoryId">
                                    <option value="1">Category One</option>
                                    <option value="2">Category Two</option>
                                </select>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="offset-md-6 col-md-8">
                                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary"/>



                            </div>

                        </div>

                    </form>

                </div>

            </div>

        </div>

    </div>

</div>