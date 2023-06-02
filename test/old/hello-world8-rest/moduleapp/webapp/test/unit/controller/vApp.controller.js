/*global QUnit*/

sap.ui.define([
	"v_appmoduleapp./moduleapp/controller/vApp.controller"
], function (Controller) {
	"use strict";

	QUnit.module("vApp Controller");

	QUnit.test("I should test the vApp controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
