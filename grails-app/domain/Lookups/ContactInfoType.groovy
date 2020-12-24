package Lookups

class ContactInfoType {

    String type

    static constraints = {
        type inList: ["Home","Business"]
    }

    @Override
    String toString() {
        type
    }
}
