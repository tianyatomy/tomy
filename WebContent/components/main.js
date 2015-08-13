requirejs.config({
	// By default load any module IDs from js/lib
	baseUrl : 'bower_components',
	// except, if the module ID starts with "app",
	// load it from the js/app directory. paths
	// config is relative to the baseUrl, and
	// never includes a ".js" extension since
	// the paths config could be for a directory.
	paths : {
		jquery : 'jquery/dist/jquery',
		angular : 'angularjs/angular',
		app : '../components/app',
		coreModule : '../components/coreModule'
	},
	
	shim : {
		'angular' : {
			deps:['jquery']
		},
		'app' : {
			deps:['angular', 'coreModule']
		},
		'coreModule' : {
			deps:['angular']
		}
	}
});
require([ 'app' ], function() {
	angular.bootstrap(document, ['app']);
});