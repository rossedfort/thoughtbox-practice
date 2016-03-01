function markRead() {
  $('#markRead').on('click', function() {
    let id = $(this).parent()[0].id
    $.ajax({
      type: 'PUT',
      url: '/api/v1/links/' + id,
      data: {
          link: {
            read: true
          }
        },
      success: function() {
        window.location.reload()
      },
      error: function(xhr) {
        console.error(xhr.responseText)
      }
    });
  });
}

function markUnread(){
  $('#markUnread').on('click', function() {
    let id = $(this).parent()[0].id
    $.ajax({
      type: 'PUT',
      url: '/api/v1/links/' + id,
      data: {
          link: {
            read: false
          }
        },
      success: function() {
        window.location.reload();
      },
      error: function(xhr) {
        console.error(xhr.responseText)
      }
    });
  });
}
