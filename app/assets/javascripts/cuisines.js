$(() => {
  bindClickHandlers()
})

const bindClickHandlers = () => {
  $('.lead').on('click', (e) => {
     e.preventDefault()
     console.log('hello')
  })
}
