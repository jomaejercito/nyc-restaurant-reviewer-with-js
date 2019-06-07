// $(() => {
//   bindClickHandlers()
// })
//
// const bindClickHandlers = () => {
//   $('.lead').on('click', (e) => {
//      e.preventDefault()
//      history.pushState(null, null, "cuisines")
//      fetch(`/cuisines.json`)
//       .then(response => response.json())
//       .then(cuisines => {
//         $('.lead').html('')
//         cuisines.forEach(cuisine => {
//           let newCuisine = new Cuisine(cuisine)
//           let cuisineHtml = newCuisine.formatIndex()
//           $('.lead').append(cuisineHtml)
//           console.log(newCuisine)
//         })
//       })
//
//   })
//
//   $(document).on('click', ".show_link", function(e) {
//     e.preventDefault()
//     $('.lead').html('')
//     let id = $(this).attr('data-id')
//     fetch(`/cuisines.json`)
//     .then(response => response.json())
//     .then(cuisine => {
//         let newCuisine = new Cuisine(cuisine)
//         let cuisineHtml = newCuisine.formatShow()
//         $('.lead').append(cuisineHtml)
//     })
//   })
// }
//
// function Cuisine(cuisine) {
//   this.id = cuisine.id
//   this.name = cuisine.name
//   this.restaurant = cuisine.restaurant
// }
//
// Cuisine.prototype.formatIndex = function() {
//   let cuisineHtml = `
//     <a href="/cuisines/${this.id}/" class="show_link"><h1>${this.resta}</h1></a>
//   `
//   return cuisineHtml
// }
//
// Cuisine.prototype.formatShow = function() {
//   let cuisineHtml = `
//     <h1>${this.restaurant}</h1>
//   `
//   return cuisineHtml
// }
