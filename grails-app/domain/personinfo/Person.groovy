package personinfo

class Person {

    String firstName
    String middleName
    String lastName
    String idNumber
    String gender
    Date birthOfDate

    Location location

    static hasMany = [contactsInfo:ContactInfo,relates :Relate]


    static constraints = {
        location nullable: true
        firstName nullable: false,blank: false
        middleName nullable: false,blank: false
        lastName nullable: false,blank: false
        idNumber nullable: false,blank: false
        gender nullable: false,blank: false ,inList: ["Female","Male"]

    }
}
