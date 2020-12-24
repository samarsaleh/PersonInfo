package personinfo

import Lookups.ContactInfoType

import java.text.SimpleDateFormat

class PersonController {

    def index() {
        redirect action: "list" ,id: params.id

    }
    def create(){
        Person person
        if (params["id"])
        {
            person= Person.get(params["id"])
        }
        else
        {
            person= new Person()
        }
        [person: person]
    }
    def save(){

        println(params)
        Person person

        if(params["id"]){
            person =Person.get(params["id"])
        }else{
            println("hiiiiiiiiiiiiiiiiiiii")
            person = new Person()
        }

        person.firstName=params["firstNameText"]
        person.middleName=params["middleNameText"]
        person.lastName=params["lastNameText"]
        person.gender=params["gender"]
        person.idNumber=params["idNumberText"]

        person.location=Location.get(params["location"])
        ContactInfo ci=ContactInfo.get(params["cont"])
        person.addToContactsInfo(ci)
        Relate relate=Relate.get(params["relate"])
        person.addToRelates(relate)
        person.birthOfDate=new Date().parse('dd-MM-yyyy' ,params["dateOfBirth"] )
        person.save( flush: true, failOnError: true)

        if (person.hasErrors()) {
            println "&&&&&&&&&&&&&&&&&"
            person.errors.each {
                println it
            }
            respond person, view:'create'
        }
        else {
            redirect action: "index"
        }
    }
    def show={
        println(params)
        def person = Person.get(params.id)
        [person:person]
    }
    def edit(){
        println(params)
        def person = Person.get(params.id)
        [person:person]
    }
    def update = {
        def person = Person.get(params.id)
        person.properties = params
        person.save( flush: true, failOnError: true)
        redirect action: "show"/*, id: params.id*/
    }
    def list = {
//        respond Person.list(params), model:[PersonCount: Person.count()]

        def persons = Person.list()
        [persons: persons]
    }
    def mydelete={
        println("deleeeeeteeeeeeeeee  "+params)
        println(params["id"])
        Person person
        person=Person.get(params["id"])

        person.delete(flush: true) // HELLOO

        redirect action: "index"
        println("deleted ")
    }
}
