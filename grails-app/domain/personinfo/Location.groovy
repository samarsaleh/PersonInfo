package personinfo

class Location {

    String governorate
    String town
    String neighborhood
    String street
    String building

    static constraints = {
        governorate nullable: false,blank: false
        town nullable: false,blank: false
        neighborhood nullable: false,blank: false
        street nullable: false,blank: false
        building nullable: false,blank: false

    }

    @Override
    String toString() {
        governorate+".."
    }
}
