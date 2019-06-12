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
}

function Restaurant(restaurant) {
  this.id = restaurant.id
  this.name = restaurant.name
  // this.average_rating = restaurant.average_rating
}

Restaurant.prototype.formatIndex = function() {
  let restaurantHtml = `
    <h4>${this.name}</h4>
  `
  return restaurantHtml
}
