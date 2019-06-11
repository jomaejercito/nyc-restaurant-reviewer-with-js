$(() => {
  bindClickHandlers()
})

const bindClickHandlers = () => {
  $('.js-high').on('click', (e) => {
     e.preventDefault()
     history.pushState(null, null, "restaurants")
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
}

function Restaurant(restaurant) {
  this.id = restaurant.id
  this.name = restaurant.name
}

Restaurant.prototype.formatIndex = function() {
  let restaurantHtml = `
    <a href="/restaurants/highest_rated/" class="show_link"><h1>${this.name}</h1></a>
  `
  return restaurantHtml
}
