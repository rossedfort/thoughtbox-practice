var linkTemplate = _.template(
  '<div class="link small-top-margin <%= read %> center link-<%= id %>">' +
  '<h4><%= title %></h4>' +
  '<p>Read: <%= read %></p>' +
  '<button id="toggle-status-button" class="<%= read %> btn btn-small blue">Mark as <%= !read %></button>' +
    '<div class="link-buttons">' +
      '<a class="btn btn-small green" id="link-edit-button" href="/links/<%= id %>/edit">Edit</a>' +
      '<button type="button" class="btn btn-small red" id="link-delete-button">Delete</button>' +
      '<a class="btn btn-small blue" id="link-view-button" target="_blank" href="<%= url %>">View</a>' +
    '</div>' +
  '</div>'
)
