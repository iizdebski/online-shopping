<div class="container">

    <!-- Breadcrumb -->
    <div class="row">

        <div class="col-12">

            <ol class = breadcrumb>

                <li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
                <li class="breadcrumb-item"><a href="${contextRoot}/show/all/products">Products</a></li>
                <li class="breadcrumb-item active">${product.name}</li>

            </ol>
        </div>
    </div>

    <div class="row">

        <!-- Display the product image -->
        <div class="col-12 col-md-4">

            <div class="thumbnail">

                <img src="${images}/${product.code}.jpg"
                     class="img img-responsive"
                     style="width:350px;height:350px;"
                />

            </div>

        </div>

        <!--Display the product description-->
        <div class="col-xs-12 col-sm-8">

            <h3>${product.name}</h3>
            <hr/>

            <p>${product.description}</p>
            <hr/>

            <h4>Price: <strong> &#36;${product.unitPrice} /-</strong></h4>
            <hr/>

            <h6>Qty. Available: ${product.quantity}</h6>

            <a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-primary">Add to Cart</a>
            <a href="${contextRoot}/show/all/products" class="btn btn-success">Back</a>

        </div>

    </div>

</div>