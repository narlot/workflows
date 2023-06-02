sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/json/JSONModel"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller, JSONModel) {
        "use strict";

        return Controller.extend("app.index.index.controller.App", {
            onInit: function () {
                var oModel = new JSONModel();
                oModel.setData({
                    "payload":
                    {
                        "activityId": "usertask1"
                    }
                });
                this.getView().setModel(oModel);

                // var appId = this.getManifestEntry("/sap.app/id");
                // var appPath = appId.replaceAll(".", "/");
                // var appModulePath = jQuery.sap.getModulePath(appPath);
                // console.log(appModulePath + "/bpmworkflowruntime/v1")


                $.ajax({
                    url: "/workflow-service",
                    type: "GET",
                    async: false,
                    headers: {
                        "X-CSRF-Token": "Fetch"
                    },
                }).always(function (data, status, response) {
                    debugger;
                });


                // $.ajax({
                //     url: "/app.index.index/bpmworkflowruntime/v1/xsrf-token",
                //     method: "GET",
                //     async: false,
                //     headers: {
                //         "X-CSRF-Token": "Fetch"
                //     },
                //     success: function (result, xhr, data) {
                //         token = data.getResponseHeader("X-CSRF-Token");
                //         debugger;
                //     }
                // });
            }
        });
    });
