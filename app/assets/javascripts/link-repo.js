var LinkRepo = {
  all: function() {
    return $.getJSON('/api/v1/links').then(renderLinks);
  }
}
