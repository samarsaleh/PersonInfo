package Lookups

class RelateTypeController {

    def index() {
        redirect action: "list"

    }
    def create(){}
    def save(){
        println(params)
        def relateType = new RelateType(params)
        relateType.type=params["type"]
        relateType.save( flush: true, failOnError: true)
        println(relateType)
        redirect action: "index"
    }
    def show(){
        def relateType = RelateType.get(params.id)
        [relateType:relateType]
    }
    def edit(){
        def relateType = RelateType.get(params.id)
        [relateType:relateType]
    }
    def update = {
        def relateType = RelateType.get(params.id)
        relateType.properties = params
        relateType.save( flush: true, failOnError: true)
        redirect action: "show", id: params.id
    }
    def list = {
        respond RelateType.list(params), model:[RelateTypeCount: RelateType.count()]

//        def contactInfoType = ContactInfoType.list()
//        println(contactInfoType)
//        [contactInfoTypes: contactInfoType]
    }
}
