$(() => {
  $('.form-group').on("submit", function(e){
    e.preventDefault()
    console.log("submitting post")

    const values = ($(this).serialize())

    $.review(`/users/${id}/reviews`, values).done(function(data){
      $('main').html('')
      const newReview = new Review(data)
    })
  })
})

function Review(review) {
  this.id = review.id
  this.name = review.restaurant.name
  this.comment = review.comment
  this.rating = review.rating
}

Review.prototype.formatShow = function(){
  let reviewHtml = `
    <h1>My Review of ${this.restaurant.name}</h1><br>
    <p>${this.comment}</p>
    <p>${this.rating}</p>
  `
  return reviewHtml
}
