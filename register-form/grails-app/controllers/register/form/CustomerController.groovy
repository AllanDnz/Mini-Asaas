package register.form

class CustomerController {

    def index() {
        render(view: "/customer/index")
    }

    def saveCustomer() {
        def customer = new Customer(params)

        if (!customer.validate()) {
            customer.discard()
            render(view: "index", model: [customer: customer])
            return
        }

        println "Customer: ${customer.dump()}"

        flash.message = "Formulário enviado com sucesso!"
        redirect(action: "index")
    }
}