/*global QUnit*/

sap.ui.define([
	"six/module6/controller/view6.controller"
], function (Controller) {
	"use strict";

	QUnit.module("view6 Controller");

	QUnit.test("I should test the view6 controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
