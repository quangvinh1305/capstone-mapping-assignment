(function() {
  "use strict";

  angular
    .module("spa-demo.types")
    .service("spa-demo.types.SelectedThing", SelectedThing);

  function SelectedThing() {
    var service = this;
    service.selectedThing = null;
    service.getSelectedThing = getSelectedThing;
    service.setSelectedThing = setSelectedThing;
    return;

    function getSelectedThing(){
      return service.selectedThing;
    }

    function setSelectedThing(thing){
      service.selectedThing = thing;
      console.log("SelectedThing service: ", service.selectedThing);
    }
  }
})();
