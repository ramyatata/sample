angular.module('groupify')
.controller('AppCtrl', function() {
  this.view = 'group';
  this.changeView = function(option) {
    this.view = option;
  };
})
.component('app', {
  controller: 'AppCtrl',
  templateUrl: '/templates/app.html'
});