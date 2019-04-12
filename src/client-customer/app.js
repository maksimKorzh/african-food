var app = angular.module('client-customer',['ngRoute']);

app.config(function($routeProvider){
	$routeProvider.when('/', {
		controller:'RestaurantsController',
		templateUrl: 'views/home.html'
	})

  .when('/restaurants', {
  		controller:'RestaurantsController',
  		templateUrl: 'views/restaurants.html'
  })
  	
	.otherwise({
		redirectTo: '/'
	});
});