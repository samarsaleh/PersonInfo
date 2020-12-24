package personinfo

import Lookups.ContactInfoType
import Lookups.RelateType
import grails.orm.PagedResultList

class RelateController {

    def index() {
        redirect action: "list"

    }
    def create(){
        Relate relate
        if (params["id"]) {
            relate = RelateController.get(params["id"])
        } else {
            relate = new Relate()

            if (params['personId'])
                relate.person = Person.get(params['personId'])
        }
        [relate: relate]
    }
    def save(){
        println(params)

        def relate = new Relate()
        relate.description=params["descriptionText"]
        relate.relateType= RelateType.get(params["type"])
        relate.person=Person.get(params["person"])
        relate.save( flush: true, failOnError: true)


        if (relate.hasErrors()) {
            println "&&&&&&&&&&&&&&&&&"
            relate.errors.each {
                println it
            }
            respond relate, view:'create'
        }
        else
        {
            redirect action: "index"
        }


    }
    def show(){
        def relate = Relate.get(params.id)
        [relate:relate]
    }
    def edit(){
        def relate = Relate.get(params.id)
        [relate:relate]
    }

    def list = {
        def listInfo = []
        int count = 0
        PagedResultList results = Relate.createCriteria().list(max:100,offset:0) {
            if (params['personId'])
                eq('person.id', params.long('personId'))
        }

        if (results && results.resultList) {
            listInfo = results.resultList
            count = results.totalCount

        }

        respond listInfo, model: [contactInfoCount: count]


    }

}
