angular.module("Devflix").config(function ($routeProvider, $locationProvider) {
  $routeProvider
    .when("/", {
      templateUrl: "templates/home.html",
      controller: "HomeController"
    })
    .when("/contacto", {
      templateUrl: "templates/contacto.html",
      controller: "ContactoController"
    })
    .otherwise({
      redirectTo: "/"
    });

  $locationProvider.html5Mode(true);
});