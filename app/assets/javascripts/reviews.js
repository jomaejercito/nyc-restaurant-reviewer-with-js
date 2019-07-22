$(() => {
  getReview()
})

const getReview = () => {
  $("#new-form").on("submit", function(e){
    e.preventDefault()

    const values = $(this).serialize()

    $.post(`/users/${this.user}/reviews/`, values).done(function(data){
      $('#main').html('')
      const newReview = new Review(data)
      const reviewHtml = newReview.formatShow()
      $('#main').html(reviewHtml)
    })
  })
}

function Review(review) {
  this.id = review.id
  this.restaurant = review.restaurant.name
  this.comment = review.comment
  this.rating = review.rating
  this.user = review.user
}

Review.prototype.formatShow = function(){
  let reviewHtml = `
    <h1>My Review of ${this.restaurant}</h1><br>
    <h4>${this.comment}</h4>
    <h4>${this.rating}/5</h4>
  `
  return reviewHtml
}
