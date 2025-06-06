<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body>
    <div class="container-md mt-5">
        <h2 class="mb-4">Cadastro de Cliente</h2>

        <g:if test="${flash.errors}">
            <div class="alert alert-danger">
                <p>${flash.message}</p>
                <ul>
                    <g:each in="${flash.errors}" var="err">
                        <li>${err}</li>
                    </g:each>
                </ul>
            </div>
        </g:if>

        <g:if test="${flash.message && !flash.errors}">
            <div class="alert alert-success">${flash.message}</div>
        </g:if>

        <form class="card p-5 m-5" method="POST" action="${createLink(controller: 'customer', action: 'saveCustomer')}">
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label">Name:</label>
                    <input type="text" class="form-control" name="name" value="${customer?.name ?: ''}" >
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">CPF:</label>
                    <input type="text" class="form-control" name="cpf" value="${customer?.cpf ?: ''}" required>
                </div>

                <div class="col-md-12 mb-3">
                    <label class="form-label">Telefone:</label>
                    <input type="text" class="form-control" name="phone" value="${customer?.phone ?: ''}" required>
                </div>

                <div class="col-md-12 mb-3">
                    <label class="form-label">CEP:</label>
                    <input type="text" class="form-control" name="postalCode" id="postalCode" value="${customer?.postalCode ?: ''}" required>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Rua:</label>
                    <input type="text" class="form-control" name="street" id="street" value="${customer?.street ?: ''}">
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Bairro:</label>
                    <input type="text" class="form-control" name="neighborhood" id="neighborhood" value="${customer?.neighborhood ?: ''}">
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Cidade:</label>
                    <input type="text" class="form-control" name="city" id="city" value="${customer?.city ?: ''}">
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Estado:</label>
                    <input type="text" class="form-control" name="state" id="state" value="${customer?.state ?: ''}">
                </div>
            </div>

            <button class="btn btn-primary mt-5" type="submit">Enviar</button>
        </form>
    </div>
    <asset:javascript src="getCEP.js"/>

</body>
</html>
