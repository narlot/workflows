/* global QUnit */
QUnit.config.autostart = false;

sap.ui.getCore().attachInit(function () {
	"use strict";

	sap.ui.require([
		"v_appmoduleapp./moduleapp/test/unit/AllTests"
	], function () {
		QUnit.start();
	});
});
