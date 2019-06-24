$(() => {
  $('.all_users').on('click', (e) => {
    e.preventDefault()
    fetch(`/users.json`)
      .then(res => res.json())
      .then(users => {
      $('#main').html('')
        users.forEach(user => {
          let newUser = new User(user)
          let userHtml = newUser.formatIndex()
          $('#main').append(userHtml)
      })
    })
  })
})


function User(user) {
  this.id = user.id
  this.name = user.name
}

User.prototype.formatIndex = function() {
  let userHtml = `
    <a href="/users/${this.id}/reviews" data-id="${this.id}" class="show_link"><h2><p class="lead">${this.name}</p></h2></a>
  `

  return userHtml
}
