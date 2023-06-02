/*global QUnit*/

sap.ui.define([
	"ns/moduleeight/controller/vieweight.controller"
], function (Controller) {
	"use strict";

	QUnit.module("vieweight Controller");

	QUnit.test("I should test the vieweight controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
