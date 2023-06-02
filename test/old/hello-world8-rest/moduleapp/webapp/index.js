sap.ui.define([
	"sap/ui/core/ComponentContainer"
], function (ComponentContainer) {
	"use strict";

	new ComponentContainer({
		name: "sap.ui.moduleapp.webapp",
		settings : {
			id : "webapp"
		},
		async: true
	}).placeAt("content");
});