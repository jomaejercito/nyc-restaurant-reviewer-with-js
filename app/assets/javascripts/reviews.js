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
  this.user = review.user.id
}

Review.prototype.formatShow = function(){
  let reviewHtml = `
    <h1>My Review of ${this.restaurant}</h1><br><br>
    <h4>Rating: ${this.rating}/5</h4><br>
    <h4>${this.comment}</h4>
    <br><br><br>
    <center><a href="/users/${this.user}/reviews/" class="btn btn-outline-primary">Back to Your Reviews</a></center>
  `
  return reviewHtml
}
