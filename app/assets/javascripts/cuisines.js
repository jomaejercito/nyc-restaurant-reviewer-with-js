$(() => {
  bindCuisine()
})

const bindCuisine = () => {
  $('.all_cuisines').on('click', (e) => {
    e.preventDefault()
    fetch(`/cuisines.json`)
      .then(res => res.json())
      .then(cuisines => {
      $('#main').html('')
        cuisines.forEach(cuisine => {
          let newCuisine = new Cuisine(cuisine)
          let cuisineHtml = newCuisine.formatIndex()
          $('#main').append(cuisineHtml)
      })
    })
  })
  $(document).on('click', ".show_link", function(e) {
    e.preventDefault()
    $('#main').html('')
    let id = $(this).attr('data-id')
    fetch(`/cuisines/${id}.json`)
      .then(res => res.json())
      .then(cuisine => {
        let newCuisine = new Cuisine(cuisine)
        let cuisineHtml = newCuisine.formatShow()
        $('#main').append(cuisineHtml)
        console.log(newCuisine)
      })
  })
}

function Cuisine(cuisine) {
  this.id = cuisine.id
  this.name = cuisine.name
  this.restaurants = cuisine.restaurants.map(json => new Restaurant(json));
}

Cuisine.prototype.formatIndex = function() {
  let cuisineHtml = `
    <a href="/cuisines/${this.id}" data-id="${this.id}" class="show_link"><h2><p class="lead">${this.name}<p class="lead"></h2></a>
  `

  return cuisineHtml
}

Cuisine.prototype.formatShow = function() {
  const restaurant = this.restaurants.map(restaurant => restaurant.name);
  let cuisineHtml = `
    <h4><p class="lead">${restaurant}</p></h4>
  `

  return cuisineHtml
}
