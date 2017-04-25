(function() {
  "use strict";

  angular
    .module("spa-demo.types")
    .service("spa-demo.types.Type", TypeService);

  TypeService.$inject = ["$resource","spa-demo.config.APP_CONFIG"];
  function TypeService($resource, APP_CONFIG) {
    var service = $resource(APP_CONFIG.server_url + "/api/types",{},{
      query: { cache:false, isArray:true }
    });
    return service;
  }
})();
