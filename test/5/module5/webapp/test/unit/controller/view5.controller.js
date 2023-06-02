/*global QUnit*/

sap.ui.define([
	"five/module5/controller/view5.controller"
], function (Controller) {
	"use strict";

	QUnit.module("view5 Controller");

	QUnit.test("I should test the view5 controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
