package personinfo

import Lookups.RelateType

//import groovy.RelateTypeEnum

class Relate {

    String description
    static belongsTo = [person:Person,relateType: RelateType]

    static constraints = {
        person nullable: true
        description nullable: true

    }

    @Override
    String toString() {
     return    relateType.type
    }
}
