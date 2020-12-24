package Lookups

import personinfo.Location
import personinfo.Person

class ContactInfoTypeController {

    def index() {
        redirect action: "list"

    }
    def create(){}
    def save(){
        println(params)
        def contactInfoType = new ContactInfoType(params)
        contactInfoType.type=params["type"]
        contactInfoType.save( flush: true, failOnError: true)
        println(contactInfoType)
        redirect action: "index", id: contactInfoType.id
    }
    def show(){
        def contactInfoType = ContactInfoType.get(params.id)
        [contactInfoType:contactInfoType]
    }
    def edit(){
        def contactInfoType = ContactInfoType.get(params.id)
        [contactInfoType:contactInfoType]
    }
    def update = {
        def contactInfoType = ContactInfoType.get(params.id)
        contactInfoType.properties = params
        contactInfoType.save( flush: true, failOnError: true)
        redirect action: "show", id: params.id
    }
    def list = {
        respond ContactInfoType.list(params), model:[ContactInfoTypeCount: ContactInfoType.count()]

//        def contactInfoType = ContactInfoType.list()
//        println(contactInfoType)
//        [contactInfoTypes: contactInfoType]
    }
}
