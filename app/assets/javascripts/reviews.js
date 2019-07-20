$(() => {
  $("#new-form").on("submit", function(e){
    e.preventDefault()

    console.log($(this).serialize())

  //   $.post(`/users/${this.user}/reviews/`, values).done(function(data){
  //     $('#main').html('')
  //     const newReview = new Review(data)
  //     const htmlToAdd = newReview.formatShow()
  //     $('#main').html(htmlToAdd)
  //   })
  })
})

function Review(review) {
  this.id = review.id
  this.name = review.restaurant.name
  this.comment = review.comment
  this.rating = review.rating
  this.user = review.user
}

Review.prototype.formatShow = function(){
  let htmlToAdd = `
    <h1>My Review of ${this.restaurant.name}</h1><br>
    <p>${this.comment}</p>
    <p>${this.rating}</p>
  `
  return htmlToAdd
}
