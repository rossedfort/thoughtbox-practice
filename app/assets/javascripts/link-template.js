var linkTemplate = _.template(
  '<div class="link center link-<%= id %>">' +
  '<h4><a target="_blank" href="<%= url %>"><%= title %></a></h4>' +
  '<p>Read: <%= read %></p>' +
  '<button class="<%= read %> btn btn-small blue">Mark as <%= !read %></button>' +
    '<div class="link-buttons">' +
      '<button type="button" class="btn btn-small green" id="link-edit-button">Edit</button>' +
      '<button type="button" class="btn btn-small red" id="link-delete-button">Delete</button>' +
      '<button type="button" class="btn btn-small blue" id="link-view-button">View</button>' +
    '</div>' +
  '</div>'
)
