// $(() => {
//   $(document).on("submit", '.form-group', function(e){
//     e.preventDefault()
//
//     const values = ($(this).serialize())
//
//     $.review(`/users/${this.userID}/reviews/`, values).done(function(data){
//       $('#main').html('')
//       const newReview = new Review(data)
//       const htmlToAdd = newReview.formatShow()
//       $('#main').html(htmlToAdd)
//     })
//   })
// })
//
// function Review(review) {
//   this.id = review.id
//   this.name = review.restaurant.name
//   this.comment = review.comment
//   this.rating = review.rating
//   this.userID = review.user.id
// }
//
// Review.prototype.formatShow = function(){
//   let htmlToAdd = `
//     <h1>My Review of ${this.restaurant.name}</h1><br>
//     <p>${this.comment}</p>
//     <p>${this.rating}</p>
//   `
//   return htmlToAdd
// }
