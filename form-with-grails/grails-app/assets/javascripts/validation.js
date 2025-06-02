document.addEventListener("DOMContentLoaded", function() {
    document.getElementById("postalCode").addEventListener("blur", function () {
        const cep = this.value.replace(/\D/g, "");
        if (cep.length === 8) {
            fetch(`https://viacep.com.br/ws/${cep}/json/`)
                .then(response => response.json())
                .then(data => {
                    if (!data.erro) {
                        document.getElementById("street").value = data.logradouro;
                        document.getElementById("neighborhood").value = data.bairro;
                        document.getElementById("city").value = data.localidade;
                        document.getElementById("state").value = data.uf;
                    }
                });
        }
    });
});
