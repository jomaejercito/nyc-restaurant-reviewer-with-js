$(() => {
  bindClickHandlers()
})

const bindClickHandlers = () => {
  $('.js-high').on('click', (e) => {
     e.preventDefault()
     // history.pushState(null, null, "restaurants/highest_rated")
     fetch(`/restaurants/highest_rated.json`)
      .then(response => response.json())
      .then(restaurants => {
        $('.js-high').html('')
        restaurants.forEach(restaurant => {
          let newRestaurant = new Restaurant(restaurant)
          let restaurantHtml = newRestaurant.formatIndex()
          $('.js-high').append(restaurantHtml)
          console.log(newRestaurant)
        })
      })
  })
  $('.js-pop').on('click', (e) => {
     e.preventDefault()
     // history.pushState(null, null, "restaurants/highest_rated")
     fetch(`/restaurants/popular.json`)
      .then(response => response.json())
      .then(restaurants => {
        $('.js-pop').html('')
        restaurants.forEach(restaurant => {
          let newRestaurant = new Restaurant(restaurant)
          let restaurantHtml = newRestaurant.formatIndex()
          $('.js-pop').append(restaurantHtml)
          console.log(newRestaurant)
        })
      })
  })
  $(".js-next").on("click", function(e){
    e.preventDefault()
    let nextID = parseInt($(".js-next").attr("data-id")) + 1;
    $.get(`/restaurants/${nextID}.json`, function(data){
      let restaurant = data;
      $(".js-next").attr("data-id", restaurant["id"]);
      let newRestaurant = new Restaurant(restaurant)
      let restaurantHtml = newRestaurant.formatShow()
      $("#main").empty()
      $("#main").append(restaurantHtml)
    })
  })
}

function Restaurant(restaurant) {
  this.id = restaurant.id
  this.name = restaurant.name
  this.address = restaurant.address
  this.reviews = restaurant.reviews
  this.users = restaurant.users
  this.cuisine = restaurant.cuisine
  this.neighborhood = restaurant.neighborhood
  // this.average_rating = restaurant.average_rating
}

Restaurant.prototype.formatIndex = function() {
  let restaurantHtml = `
    <h4>${this.name}</h4>
  `
  return restaurantHtml
}

Restaurant.prototype.formatShow = function() {
  let restaurantHtml = `
    <h1>${this.name}</h1><br>
    <h4>${this.cuisine.name}</h4>
    <h4>${this.address}</h4>
    <h4>${this.neighborhood.name}</h4>
  `
  return restaurantHtml
}
