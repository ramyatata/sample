var express = require('express');
var bodyParser = require('body-parser');
var db = require('../database-mysql');
var groups = require('./helpers/groups.js');

var app = express();

app.use( bodyParser.json() );
app.use( bodyParser.urlencoded({ extended: true }) );


// UNCOMMENT FOR REACT
app.use(express.static(__dirname + '/../react-client/dist'));

// UNCOMMENT FOR ANGULAR
// app.use(express.static(__dirname + '/../angular-client'));
// app.use(express.static(__dirname + '/../node_modules'));

app.get('/api/students/:id/preferences', function (req, res) {

});

app.get('/api/groups', function (req, res) {

});

app.get('/api/students', function (req, res) {

});



app.listen(3000, function() {
  console.log('listening on port 3000!');
});

