// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

// /return_current_user

// /usertrip = returns current user's trip

// /categories/'trip_id'.json = returns categories for a trip

// /categories/'category_id'/show = returns content of category

// /suggestion/'category_id'/all = returns all suggestions for category

// /suggestion/'suggestion_id'/getcomments = returns comments of suggestion

// /suggestion/'suggestion_id'/show = returns content of suggestion

// /suggestion/'suggestion_id'/downvote = downvote

// /suggestion/'suggestion_id'/upvote = upvote

// /suggestion/3/all


// This returns the user's info
var UserInfo = function(){

var url = 'http://localhost:3000/return_current_user';

// /userfriends = returns user objects of current user's friends

var url = 'http://localhost:3000/suggestion/3/all';

var xhr = new XMLHttpRequest();

xhr.addEventListener('load', function(e) {
   var d = xhr.responseText;
   var parsed = JSON.parse(d);

   console.log(parsed.id);

})

xhr.open("GET", url);
xhr.send();

}

UserInfo()


// this is the current user's trip
var UserTrip = function(){

var url = 'http://localhost:3000/usertrip';

var xhr = new XMLHttpRequest();

xhr.addEventListener('load', function(e) {
   var d = xhr.responseText;
   var parsed = JSON.parse(d);
   console.log(parsed)

   //this is the header title of the trip
   // later we will have to loop through all of the trips
	var location = document.getElementById('location')
	location.innerHTML = parsed[0].location;

	TripCategories(parsed[0].id)

})

xhr.open("GET", url);
xhr.send();

}

UserTrip();




// this is all the categories from the trip
var TripCategories = function(trip_id){

var url = 'http://localhost:3000/categories/' + trip_id + '.json';

var xhr = new XMLHttpRequest();

xhr.addEventListener('load', function(e) {
   var d = xhr.responseText;
   var parsed = JSON.parse(d);

   console.log(parsed)

})

xhr.open("GET", url);
xhr.send();

}