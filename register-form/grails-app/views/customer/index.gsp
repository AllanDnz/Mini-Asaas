<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <asset:javascript src="jquery-3.5.1.js"/>
    <asset:javascript src="validation.js"/>
</head>
    <body>
        <div class="container-md mt-5">
            <h2 class="mb-4">Cadastro de Cliente</h2>

            <g:hasErrors bean="${customer}">
                <div class="alert alert-danger">
                    <ul>
                        <g:eachError bean="${customer}" var="err">
                            <li>${err.defaultMessage}</li>
                        </g:eachError>
                    </ul>
                </div>
            </g:hasErrors>

            <g:if test="${flash.message}">
                <div class="alert alert-success">${flash.message}</div>
            </g:if>

            <g:form class="card p-5 m-5" controller="customer" action="saveCustomer">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Name:</label>
                        <g:textField class="form-control" name="name" value="${customer?.name}" required="true"/>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="form-label">CPF:</label>
                        <g:textField class="form-control" name="cpf" value="${customer?.cpf}" required="true"/>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label class="form-label">Phone:</label>
                        <g:textField class="form-control" name="phone" value="${customer?.phone}" required="true"/>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label class="form-label">Postal Code (CEP):</label>
                        <g:textField class="form-control" name="postalCode" id="postalCode" value="${customer?.postalCode}" required="true"/>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="form-label">Street:</label>
                        <g:textField class="form-control" name="street" id="street" value="${customer?.street}"/>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="form-label">Neighborhood:</label>
                        <g:textField class="form-control" name="neighborhood" id="neighborhood" value="${customer?.neighborhood}"/>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="form-label">City:</label>
                        <g:textField class="form-control" name="city" id="city" value="${customer?.city}"/>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label class="form-label">State:</label>
                        <g:textField class="form-control" name="state" id="state" value="${customer?.state}"/>
                    </div>
                </div>

                <button class="btn btn-primary mt-5" type="submit">Submit</button>
            </g:form>

        </div>
    </body>
</html>
