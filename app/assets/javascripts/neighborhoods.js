$(() => {
  $('.all_neighborhoods').on('click', (e) => {
    e.preventDefault()
    fetch(`/neighborhoods.json`)
      .then(res => res.json())
      .then(neighborhoods => {
      $('#main').html('')
        neighborhoods.forEach(neighborhood => {
          let newNeighborhood = new Neighborhood(neighborhood)
          let neighborhoodHtml = newNeighborhood.formatIndex()
          $('#main').append(neighborhoodHtml)
      })
    })
  })
})


function Neighborhood(neighborhood) {
  this.id = neighborhood.id
  this.name = neighborhood.name
}

Neighborhood.prototype.formatIndex = function() {
  let neighborhoodHtml = `
    <a href="/neighborhoods/${this.id}" data-id="${this.id}" class="show_link"><h2><p class="lead">${this.name}</p></h2></a>
  `

  return neighborhoodHtml
}
