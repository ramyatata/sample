angular.module('groupify')
.component('preferences', {
  bindings: {},
  controller: function() {
    this.student = window.student; // dummy data prefs
    this.students = window.students; // dummy data student list
    this.handleChange = function() {
      //TODO - your code here!
    };
  },
  templateUrl: '/templates/preferences.html'
});
