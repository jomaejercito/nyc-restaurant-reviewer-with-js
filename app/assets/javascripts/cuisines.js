$(() => {
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
})


function Cuisine(cuisine) {
  this.id = cuisine.id
  this.name = cuisine.name
}

Cuisine.prototype.formatIndex = function() {
  let cuisineHtml = `
    <a href="/cuisines/${this.id}" data-id="${this.id}" class="show_link"><h2><p class="lead">${this.name}</p></h2></a>
  `

  return cuisineHtml
}
