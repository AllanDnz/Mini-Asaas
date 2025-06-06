package customer

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
        cpf size: 11..11, matches: /\d{11}/
        phone blank: false
        postalCode size: 8..8, matches: /\d{8}/
        street nullable: false
        neighborhood nullable: false
        city nullable: false
        state nullable: false
    }
}
