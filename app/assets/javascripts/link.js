function Link(data) {
  this.id = data.id;
  this.title = data.title;
  this.url = data.url;
  if (data.read === "unread") {
    this.read = false
  } else {
    this.read = true
  }
  this.render();
}

Link.prototype.render = function() {
  this.element = $(linkTemplate(this));
  return this;
}

Link.prototype.prependTo = function(target) {
  this.element.prependTo(target);
  return this;
}
