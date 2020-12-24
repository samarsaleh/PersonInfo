package personinfo

class LocationController {

    def index() {

        redirect action: "list"

    }
    def create(){}
    def save(){
        def location = new Location(params)
        location.governorate=params["governorateText"]
        location.town=params["townText"]
        location.neighborhood=params["neighborhoodText"]
        location.street=params["streetText"]
        location.building=params["buildingText"]
        location.save( flush: true, failOnError: true)
        println(location)
        redirect action: "index", id: location.id
    }
    def show(){
        def location = Location.get(params.id)
        [location:location]
    }
    def edit(){
        def location = Location.get(params.id)
        [location:location]
    }
    def update = {
        def location = Location.get(params.id)
        location.properties = params
        location.save( flush: true, failOnError: true)
        redirect action: "show", id: params.id
    }
    def list = {
        respond Location.list(params), model:[locationCount: Location.count()]

//        def location = Location.list()
//        [locations: location]
    }
}
