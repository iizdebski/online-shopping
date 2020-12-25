<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
    <div class="container">
        <a class="navbar-brand" href="${contextRoot}/home">Online Shopping</a>
        <button class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarResponsive"
                aria-controls="navbarResponsive"
                aria-expanded="false"
                aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-between"
             id="navbarResponsive">

            <ul class="navbar-nav ml-auto">

                <li class="nav-item" id="listProducts">
                    <a class="nav-link" href="${contextRoot}/show/all/products">View Products</a>
                </li>

                <security:authorize access="hasAuthority('ADMIN')">
                    <li class="nav-item" id="manageProducts">
                    <a class="nav-link" href="${contextRoot}/manage/products">Manage Products</a>
                    </li>
                </security:authorize>

                <li class="nav-item" id="about">
                    <a class="nav-link" href="${contextRoot}/about">About</a>
                </li>

                <li class="nav-item" id="contact">
                    <a class="nav-link" href="${contextRoot}/contact">Contact</a>
                </li>
            </ul>

        </div>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="nav navbar-nav navbar-right ml-auto">

                <security:authorize access="isAnonymous()">
                    <li class="nav-item" id="register">
                        <a class="nav-link" href="${contextRoot}/register">Sign Up</a>
                    </li>

                    <li class="nav-item" id="login">
                        <a class="nav-link" href="${contextRoot}/login">Login</a>
                    </li>
                </security:authorize>

                <security:authorize access="isAuthenticated()">
                    <li class="nav-item dropdown ml-auto" id="userCart">

                        <a class="nav-link dropdown-toggle"
                           id="dropdownMenu1"
                           data-toggle="dropdown">
                                ${userModel.fullName}
                            <span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu ml-auto text-center">
                            <security:authorize access="hasAuthority('USER')">
                                <li id="cart">&#160;
                                    <a href="${contextRoot}/cart">
                                        <span class="fas fa-shopping-cart">${userModel.cart.cartLines}</span>
                                        - &#36; ${userModel.cart.grandTotal}
                                    </a>
                                </li>
                                <li class="divider" role="separator"></li>
                                <hr/>

                            </security:authorize>
                            <li>
                                <a href="${contextRoot}/logout">Logout</a>
                            </li>
                        </ul>
                    </li>
                </security:authorize>
            </ul>
        </div>

    </div>
</nav>
<script>

    window.userRole = '${userModel.role}';

    </script>