// Creando un módulo
angular.module("Devflix", []);

// LLamando un módulo para crearle un controller
angular.module("Devflix").controller("SerieController", SerieController);

angular.module("Devflix").controller("MainController", MainController);

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








