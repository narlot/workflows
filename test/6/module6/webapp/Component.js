sap.ui.define([
    "sap/ui/core/UIComponent",
    "sap/ui/Device",
    "six/module6/model/models"
],
    function (UIComponent, Device, models) {
        "use strict";

        return UIComponent.extend("six.module6.Component", {
            metadata: {
                manifest: "json"
            },

            /**
             * The component is initialized by UI5 automatically during the startup of the app and calls the init method once.
             * @public
             * @override
             */
            init: function () {
                // call the base component's init function
                UIComponent.prototype.init.apply(this, arguments);

                // enable routing
                this.getRouter().initialize();

                // set the device model
                this.setModel(models.createDeviceModel(), "device");

                $.ajax({
                    url: "bpmworkflowruntime/v1/task-instances/",
                    method: "GET",
                    contentType: "application/json",
                    async: false,
                    headers: {
                        "Authorization": "Bearer eyJhbGciOiJSUzI1NiIsImprdSI6Imh0dHBzOi8vZWNlbnRhLWRlLmF1dGhlbnRpY2F0aW9uLmV1MTAuaGFuYS5vbmRlbWFuZC5jb20vdG9rZW5fa2V5cyIsImtpZCI6ImRlZmF1bHQtand0LWtleS00NjkzNzY2MzEiLCJ0eXAiOiJKV1QifQ.eyJqdGkiOiIxZGU5N2U0Nzk4NzQ0MjY1YWM4ZThiNjkwMzQ2ODYzYiIsImV4dF9hdHRyIjp7ImVuaGFuY2VyIjoiWFNVQUEiLCJzdWJhY2NvdW50aWQiOiIxNjZjMTRhNC1iMmEwLTQwODYtODMzMC1hZjM0MjJhNThjZTEiLCJ6ZG4iOiJlY2VudGEtZGUiLCJzZXJ2aWNlaW5zdGFuY2VpZCI6IjliYzE0ZmEwLTFjMDItNDZkMy04MWYxLThjMGU2OTE1MzIyNyJ9LCJzdWIiOiJzYi1jbG9uZS05YmMxNGZhMC0xYzAyLTQ2ZDMtODFmMS04YzBlNjkxNTMyMjchYjg5Nzg1fHdvcmtmbG93IWIxMDE1MCIsImF1dGhvcml0aWVzIjpbIndvcmtmbG93IWIxMDE1MC5UQVNLX0dFVCIsIndvcmtmbG93IWIxMDE1MC5QUk9DRVNTX1RFTVBMQVRFX0RFUExPWSIsIndvcmtmbG93IWIxMDE1MC5QUk9DRVNTX1ZBUklBTlRfREVQTE9ZIiwidWFhLnJlc291cmNlIiwid29ya2Zsb3chYjEwMTUwLldPUktGTE9XX0lOU1RBTkNFX1NUQVJUIiwid29ya2Zsb3chYjEwMTUwLkZPUk1fREVGSU5JVElPTl9ERVBMT1kiLCJ3b3JrZmxvdyFiMTAxNTAuVEFTS19ERUZJTklUSU9OX0dFVCIsIndvcmtmbG93IWIxMDE1MC5XT1JLRkxPV19ERUZJTklUSU9OX0RFUExPWSJdLCJzY29wZSI6WyJ3b3JrZmxvdyFiMTAxNTAuVEFTS19HRVQiLCJ3b3JrZmxvdyFiMTAxNTAuUFJPQ0VTU19URU1QTEFURV9ERVBMT1kiLCJ3b3JrZmxvdyFiMTAxNTAuUFJPQ0VTU19WQVJJQU5UX0RFUExPWSIsInVhYS5yZXNvdXJjZSIsIndvcmtmbG93IWIxMDE1MC5XT1JLRkxPV19JTlNUQU5DRV9TVEFSVCIsIndvcmtmbG93IWIxMDE1MC5GT1JNX0RFRklOSVRJT05fREVQTE9ZIiwid29ya2Zsb3chYjEwMTUwLlRBU0tfREVGSU5JVElPTl9HRVQiLCJ3b3JrZmxvdyFiMTAxNTAuV09SS0ZMT1dfREVGSU5JVElPTl9ERVBMT1kiXSwiY2xpZW50X2lkIjoic2ItY2xvbmUtOWJjMTRmYTAtMWMwMi00NmQzLTgxZjEtOGMwZTY5MTUzMjI3IWI4OTc4NXx3b3JrZmxvdyFiMTAxNTAiLCJjaWQiOiJzYi1jbG9uZS05YmMxNGZhMC0xYzAyLTQ2ZDMtODFmMS04YzBlNjkxNTMyMjchYjg5Nzg1fHdvcmtmbG93IWIxMDE1MCIsImF6cCI6InNiLWNsb25lLTliYzE0ZmEwLTFjMDItNDZkMy04MWYxLThjMGU2OTE1MzIyNyFiODk3ODV8d29ya2Zsb3chYjEwMTUwIiwiZ3JhbnRfdHlwZSI6ImNsaWVudF9jcmVkZW50aWFscyIsInJldl9zaWciOiIxNGY5NDJiNyIsImlhdCI6MTY0Mjg4Mjg4NywiZXhwIjoxNjQyOTI2MDg3LCJpc3MiOiJodHRwczovL2VjZW50YS1kZS5hdXRoZW50aWNhdGlvbi5ldTEwLmhhbmEub25kZW1hbmQuY29tL29hdXRoL3Rva2VuIiwiemlkIjoiMTY2YzE0YTQtYjJhMC00MDg2LTgzMzAtYWYzNDIyYTU4Y2UxIiwiYXVkIjpbInNiLWNsb25lLTliYzE0ZmEwLTFjMDItNDZkMy04MWYxLThjMGU2OTE1MzIyNyFiODk3ODV8d29ya2Zsb3chYjEwMTUwIiwidWFhIiwid29ya2Zsb3chYjEwMTUwIl19.JY0AnUcAqD3VhvasdmX9WyOOqyfuiu8QiTV5eJazqk3jES9DlgCkKUAek3fZVwVfS1zDfcMXrumc7zAaaCye0RxdhLBxIoliTAl0lByDXAxuyXSOvUOxrgigJ_2oiFgiZvTHEPndoXWDuAhM25jVoiLSW75AsM_4eK8ItikQk_neyUKpmBSnu07aWfeR-0F_0hs641fB8LQ27uMpqNzdh9S86P29Mlnh4-V54ETc8UlonFiINTx0akzwb0yh6Du9EXO8WydTuOHjws6Hyhr8CC-xjmCTyWSchBJwHe6-RW2pZNGoqBEwGHn-CpN27VdZACqstjW4Y3aFGZEfIsU3jQ"
                    }
                }).always(function () {
                    debugger;
                });

            }
        });
    }
);