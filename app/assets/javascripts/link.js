function Link(data) {
  this.id = data.id;
  this.title = data.title;
  this.url = data.url;
  data.read === "unread" ? this.read = false : this.read = true;
  this.render().bindLinkEvents();
}

Link.prototype.render = function() {
  this.element = $(linkTemplate(this));
  return this;
}

Link.prototype.prependTo = function(target) {
  this.element.prependTo(target);
  return this;
}

Link.prototype.delete = function() {
  $.ajax({
    type: 'DELETE',
    url: '/api/v1/links/' + this.id,
    success: function() {
      this.element.remove();
    }.bind(this),
    error: function() {
      console.log('error');
    }
  });
}

Link.prototype.toggleStatus = function() {
  this.read === false ? this.read = 'unread' : this.read = 'read'
  return $.ajax({
    type: 'PUT',
    url: '/api/v1/links/' + this.id,
    data: this.toJSON()
  });
}

Link.prototype.bindLinkEvents = function() {
  this.element.find('#link-delete-button').on('click', function () {
    this.delete();
  }.bind(this));

  this.element.find('#toggle-status-button').on('click', function () {
    this.toggleStatus().then(function(){
      this.rerender();
    }.bind(this));
  }.bind(this));

  return this;
}

Link.prototype.rerender = function () {
  this.element.remove();
  var linkContainer = $('.links');
  this.prependTo(linkContainer);
  return this;
};

Link.prototype.toJSON = function () {
  return { link: _.pick(this, ['title', 'url', 'read']) };
};
