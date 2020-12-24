package personinfo

import Lookups.ContactInfoType
import grails.orm.PagedResultList

class ContactInfoController {


    def index() {
        redirect action: "list"

    }

    def create() {
        ContactInfo contactInfo
        if (params["id"]) {
            contactInfo = ContactInfo.get(params["id"])
        } else {
            contactInfo = new ContactInfo()

            if (params['personId'])
                contactInfo.person = Person.get(params['personId'])
        }
        [contactInfo: contactInfo]
    }

    def save() {
        println(params)
        println("email" + params["emailAddress"])
        println("phone" + params["phone"])
        println("type" + params["type"])
        ContactInfo contactInfo
        if (params["id"]) {
            println("xxxxxxxxxxx")
            contactInfo = ContactInfo.get(params["id"])
        } else {
            contactInfo = new ContactInfo()
        }

        contactInfo.emailAddress = params["emailAddress"]
        contactInfo.phone = params["phone"]
        contactInfo.contactInfoType = ContactInfoType.get(params["type"])
        contactInfo.person = Person.get(params["person"])
        println("zzzzzzzzzzzzzz" + contactInfo.contactInfoType)
        contactInfo.save(flush: true, failOnError: true)


          if (contactInfo.hasErrors()) {
              println "&&&&&&&&&&&&&&&&&"
              contactInfo.errors.each {
                  println it
              }
              respond contactInfo, view:'create'
          }
          else
          {
              if (params["personId"]) {

                  redirect(controller: "person", action: "index")
              } else {


                  redirect action: "index"
              }

          }

//        redirect action: "index", id: contactInfo.id
    }

    def show() {
        def contactInfo = ContactInfo.get(params.id)
        [contactInfo: contactInfo]
    }

    def edit() {
        def contactInfo = ContactInfo.get(params.id)
        [contactInfo: contactInfo]
    }

    def list = {
        def listInfo = []
        int count = 0
        PagedResultList results = ContactInfo.createCriteria().list(max:100,offset:0) {
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
