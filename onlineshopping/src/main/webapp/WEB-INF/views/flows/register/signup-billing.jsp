<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@include file="../shared/flows-header.jsp" %>

<div class="container">
    <div class="row">

        <div class="offset-md-3 col-md-8">

            <div class="panel panel-primary">

                <div class="panel-heading">
                    <h4>Sign Up - Address</h4>
                </div>

                <div class="panel-body">

                    <%--@elvariable id="billing" type=""--%>
                    <sf:form
                            method="POST"
                            class="form-horizontal"
                            id="billingForm"
                            modelAttribute="billing"
                    >


                    <div class="form-group">
                        <label class="control-label col-md-4" for="addressLineOne">Address Line One:</label>
                        <div class="col-md-8">
                            <sf:input type="text" path="addressLineOne" class="form-control"
                                      placeholder="Enter Address Line One" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-4" for="addressLineTwo">Address Line Two:</label>
                        <div class="col-md-8">
                            <sf:input type="text" path="addressLineTwo" class="form-control"
                                      placeholder="Enter Address Line Two" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-4" for="city">City:</label>
                        <div class="col-md-8">
                            <sf:input type="text" path="city" class="form-control"
                                      placeholder="Enter City Name" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-4" for="postalCode">Postal Code:</label>
                        <div class="col-md-8">
                            <sf:input type="text" path="postalCode" class="form-control"
                                      placeholder="XXXXXX" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-4" for="state">State:</label>
                        <div class="col-md-8">
                            <sf:input type="text" path="state" class="form-control"
                                      placeholder="Enter State Name" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-4" for="country">Country:</label>
                        <div class="col-md-8">
                            <sf:input type="text" path="country" class="form-control"
                                      placeholder="Enter Country Name" />
                        </div>
                    </div>
                </div>
            </div>


            <div class="offset-md-1 col-md-8">
                <!-- submit button inside the form -->
                <button type="submit" name="_eventId_personal" class="btn btn-info">
                    Previous - Personal
                </button>
                <div class="offset-md-7 col-md-8">
                    <!-- submit button inside the form -->
                    <button type="submit" name="_eventId_confirm" class="btn btn-primary">
                        Next - Confirm
                    </button>

                </div>
            </div>
        </div>
    </div>
    </sf:form>
    <br/>
</div>

<%@include file="../shared/flows-footer.jsp" %>