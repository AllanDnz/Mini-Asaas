package formexercise.customer

import customer.Customer

class CustomerController {
    def index() {
        render(view: "/customer/index")
    }

    def saveCustomer() {
        Customer customer = new Customer(params)

        if (!customer.validate()) {
            customer.discard()
            flash.message = "Por favor, corrija os erros do formulário."
            flash.errors = customer.errors.allErrors.collect { it.defaultMessage }
            redirect(action: "index")
            return
        }
        println "Customer: ${customer.dump()}"

        flash.message = "Formulário enviado com sucesso!"
        redirect(action: "index")
    }
}
