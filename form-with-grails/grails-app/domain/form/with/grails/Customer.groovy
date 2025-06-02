package form.with.grails

class Customer {
    String name;
    String cpf;
    String phone;
    String postalCode;
    String street;
    String neighborhood;
    String city;
    String state;

    static constraints = {
        name blank: false
        cpf blank: false
        phone blank: false
        postalCode blank: false
        street nullable: true
        neighborhood nullable: true
        city nullable: true
        state nullable: true
    }
}