package personinfo

import Lookups.ContactInfoType

class ContactInfo {

    String emailAddress
    String phone

    static belongsTo = [person:Person,contactInfoType: ContactInfoType]

    static constraints = {
        person nullable: true
        emailAddress email: true,nullable: false ,blank: false
        phone nullable: false,blank: false
    }

    @Override
    String toString() {
        return phone+"+"+emailAddress

    }
}
