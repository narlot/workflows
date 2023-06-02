/*global QUnit*/

sap.ui.define([
	"tenns/ten/controller/tenview.controller"
], function (Controller) {
	"use strict";

	QUnit.module("tenview Controller");

	QUnit.test("I should test the tenview controller", function (assert) {
		var oAppController = new Controller();
		oAppController.onInit();
		assert.ok(oAppController);
	});

});
