import { Controller } from "stimulus"
import Rails from "@rails/ujs"

export default class extends Controller {
    static targets = ["country", "cities"];

  connect() {
    console.log('Hello Stimulus')
  }

  fetchCities() {
      Rails.ajax({
          type:"Get",
          url: "/countries/fetch_cities",
          data: "country_id=" + this.countryTarget.value,
          success: (data) => {
              debugger
              this.citiesTarget.innerHTML=data.body.innerHTML
          }
      })

  }
}