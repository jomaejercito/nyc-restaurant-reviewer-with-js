$(() => {
  bindClickHandlers()
})

const bindClickHandlers = () => {
  $('.js-more').on('click', (e) => {
     e.preventDefault()
     console.log('hello')
   })
}
