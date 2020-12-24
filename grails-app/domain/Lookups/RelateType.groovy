package Lookups

class RelateType {

    String type

    static constraints = {
        type inList: ["Father","Mother","Son","Daughter","wife"]
    }

    @Override
    String toString() {
        type
    }
}
