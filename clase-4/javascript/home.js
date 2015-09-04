// LLamando un módulo para crearle un controller
angular.module("Home").controller("SerieController", SerieController);
angular.module("Home").controller("MainController", MainController);
angular.module("Home").controller("HomeController", HomeController);
angular.module("Home").service("SeriesService", SeriesService);

HomeController.$inject = ['$scope', 'SeriesService']
SeriesService.$inject = ['$http'];

// Constructor
function SerieController() {
  this.pelicula = {
    descripcion: "Bla bla bla bla bla",
    estreno: 2015,
    tag: "NR",
    duracion: "1h 24m",
    titulo: "Ouija"
  };
}

function MainController() {
  this.anadido = false;
  this.anadir = function () {
    this.anadido = true;
  }

  this.agregados = [
    "bates-motel",
    "better-call-saul",
    "breaking-bad",
    "dexter",
    "downton-abbey",
    "dr-house"
  ];
}

function HomeController($scope, SeriesService) {
  SeriesService.getSeries().then(function (data) {
    $scope.series = data;
    console.log($scope);
  });
}

function SeriesService($http) {
  this.getSeries = function () {
    return $http.get("http://devflix.herokuapp.com/series", { cache: true })
      .then(getSeriesCompleted)
      .catch(getSeriesFailed);

    function getSeriesCompleted(response) {
      return response.data;
    }

    function getSeriesFailed(error) {
      console.log("Error");
    }
  };
}