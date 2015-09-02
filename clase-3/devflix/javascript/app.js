// Creando un módulo
angular.module("Devflix", []);

// LLamando un módulo para crearle un controller
angular.module("Devflix").controller("SerieController", SerieController);

// Constructor
function SerieController() {
  this.mensaje = "Hola RCP!";
}