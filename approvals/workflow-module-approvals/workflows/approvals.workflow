{
	"contents": {
		"1211986e-6a5f-4565-81f6-c58fd383c479": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "c4capprovalprocess.approvals",
			"subject": "approvals",
			"name": "approvals",
			"documentation": "Multilevel sequential approvals",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start"
				},
				"57247c11-c4cd-4287-bdbb-5f677e2deedd": {
					"name": "End"
				},
				"018731c0-9e6e-4e61-85cd-5411500d1952": {
					"name": "End"
				}
			},
			"activities": {
				"72acd9ed-1dfb-4df1-888d-005718e8fdf2": {
					"name": "Initialize"
				},
				"59f12596-c7d4-4737-8967-ef65c06bfb6c": {
					"name": "Configure Approval Step"
				},
				"d95d6984-32d8-49ad-9d18-6d6392606704": {
					"name": "Approval Task"
				},
				"28c64426-9553-4c6a-b5ed-a7e84a6defe6": {
					"name": "Process Approval Task Result"
				},
				"d403f71f-f6ab-4ee0-a8e1-c5c53fadda69": {
					"name": "Decision"
				},
				"06074cd8-ef56-45f5-8ac8-3705a2d32239": {
					"name": "Fully Approved?"
				},
				"a4e2dc33-d9c4-4ddc-a979-98b9826b76d6": {
					"name": "Merge"
				},
				"5b32ccc0-af93-495c-80a9-a0034771d2df": {
					"name": "Update Quote"
				},
				"618485b4-e9d1-4b04-bc31-7ec038187871": {
					"name": "Prepare Update Body"
				}
			},
			"sequenceFlows": {
				"ea5ba01e-4571-4b68-9163-1a86c4d285f7": {
					"name": "SequenceFlow14"
				},
				"a081dd90-369e-4ff7-95fa-969b79456177": {
					"name": "SequenceFlow16"
				},
				"82a7dbd0-122f-4c6d-a49d-b8132ddd27a7": {
					"name": "SequenceFlow17"
				},
				"100d78eb-69f2-4697-8112-fa69d1210051": {
					"name": "SequenceFlow18"
				},
				"1b5aba20-c49f-456d-8391-411196359c1a": {
					"name": "SequenceFlow19"
				},
				"251f1c09-ad8f-4eb9-98ab-ab0bff098eb3": {
					"name": "approve"
				},
				"19a80aef-9b8d-4219-8bfa-f759e77bccc9": {
					"name": "reject"
				},
				"18313dda-8cff-4410-add4-01c8e40676bb": {
					"name": "yes"
				},
				"5edd788b-1a13-49ba-87bf-974853fc911c": {
					"name": "SequenceFlow24"
				},
				"05ba49a6-9bc1-4c0c-a571-a5cf011ae314": {
					"name": "no"
				},
				"6cfa67f4-25c9-469d-a6c2-c31c153b588c": {
					"name": "SequenceFlow27"
				},
				"daa5bf10-cc43-4169-b8da-6cfc099eaf00": {
					"name": "SequenceFlow28"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start"
		},
		"57247c11-c4cd-4287-bdbb-5f677e2deedd": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "End"
		},
		"018731c0-9e6e-4e61-85cd-5411500d1952": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "End"
		},
		"72acd9ed-1dfb-4df1-888d-005718e8fdf2": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/approvals/initialize.js",
			"id": "scripttask2",
			"name": "Initialize"
		},
		"59f12596-c7d4-4737-8967-ef65c06bfb6c": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/approvals/configure-approva-step.js",
			"id": "scripttask3",
			"name": "Configure Approval Step"
		},
		"d95d6984-32d8-49ad-9d18-6d6392606704": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for Quote ${context.QuoteID} ${context.step.approvalStepData.ApprovalStepID}",
			"description": "Dear ${context.step.approvalStepData.ApproverAppeal},\n\nPlease approve the quote!\n\nBest regards.",
			"priority": "LOW",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.step.approvalStepData.ApproverEmail}",
			"formReference": "/forms/approvals/approvalform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask3",
			"name": "Approval Task",
			"documentation": "Respective employee will be informed to approve a request."
		},
		"28c64426-9553-4c6a-b5ed-a7e84a6defe6": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/approvals/process-approval-task-result.js",
			"id": "scripttask4",
			"name": "Process Approval Task Result",
			"documentation": "Process Approval Task Result"
		},
		"d403f71f-f6ab-4ee0-a8e1-c5c53fadda69": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway4",
			"name": "Decision",
			"default": "251f1c09-ad8f-4eb9-98ab-ab0bff098eb3"
		},
		"06074cd8-ef56-45f5-8ac8-3705a2d32239": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway5",
			"name": "Fully Approved?",
			"default": "05ba49a6-9bc1-4c0c-a571-a5cf011ae314"
		},
		"a4e2dc33-d9c4-4ddc-a979-98b9826b76d6": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway6",
			"name": "Merge"
		},
		"5b32ccc0-af93-495c-80a9-a0034771d2df": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "ecentac4csandbox",
			"path": "/sap/c4c/odata/v1/c4codataapi/SalesQuoteCollection('${context.quoteUUID}')",
			"httpMethod": "PATCH",
			"xsrfPath": "/sap/c4c/odata/v1/c4codataapi/",
			"requestVariable": "${context.wfApprovalStatus}",
			"headers": [{
				"name": "x-csrf-token",
				"value": "fetch"
			}],
			"id": "servicetask4",
			"name": "Update Quote",
			"documentation": "Update Quote WF Status"
		},
		"618485b4-e9d1-4b04-bc31-7ec038187871": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/approvals/prepare-update-body.js",
			"id": "scripttask5",
			"name": "Prepare Update Body"
		},
		"ea5ba01e-4571-4b68-9163-1a86c4d285f7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "72acd9ed-1dfb-4df1-888d-005718e8fdf2"
		},
		"a081dd90-369e-4ff7-95fa-969b79456177": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "72acd9ed-1dfb-4df1-888d-005718e8fdf2",
			"targetRef": "a4e2dc33-d9c4-4ddc-a979-98b9826b76d6"
		},
		"82a7dbd0-122f-4c6d-a49d-b8132ddd27a7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "59f12596-c7d4-4737-8967-ef65c06bfb6c",
			"targetRef": "d95d6984-32d8-49ad-9d18-6d6392606704"
		},
		"100d78eb-69f2-4697-8112-fa69d1210051": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "d95d6984-32d8-49ad-9d18-6d6392606704",
			"targetRef": "28c64426-9553-4c6a-b5ed-a7e84a6defe6"
		},
		"1b5aba20-c49f-456d-8391-411196359c1a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "28c64426-9553-4c6a-b5ed-a7e84a6defe6",
			"targetRef": "d403f71f-f6ab-4ee0-a8e1-c5c53fadda69"
		},
		"251f1c09-ad8f-4eb9-98ab-ab0bff098eb3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow21",
			"name": "approve",
			"documentation": "Approve the quote for this step.",
			"sourceRef": "d403f71f-f6ab-4ee0-a8e1-c5c53fadda69",
			"targetRef": "06074cd8-ef56-45f5-8ac8-3705a2d32239"
		},
		"19a80aef-9b8d-4219-8bfa-f759e77bccc9": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approved == \"reject\"}",
			"id": "sequenceflow22",
			"name": "reject",
			"documentation": "Reject quote and stop the process.",
			"sourceRef": "d403f71f-f6ab-4ee0-a8e1-c5c53fadda69",
			"targetRef": "57247c11-c4cd-4287-bdbb-5f677e2deedd"
		},
		"18313dda-8cff-4410-add4-01c8e40676bb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.approvalInfo.numberOfCompletedSteps == context.approvalInfo.numberOfApprovalSteps}",
			"id": "sequenceflow23",
			"name": "yes",
			"documentation": "The quote is fully approved.",
			"sourceRef": "06074cd8-ef56-45f5-8ac8-3705a2d32239",
			"targetRef": "618485b4-e9d1-4b04-bc31-7ec038187871"
		},
		"5edd788b-1a13-49ba-87bf-974853fc911c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "a4e2dc33-d9c4-4ddc-a979-98b9826b76d6",
			"targetRef": "59f12596-c7d4-4737-8967-ef65c06bfb6c"
		},
		"05ba49a6-9bc1-4c0c-a571-a5cf011ae314": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "no",
			"documentation": "More employees need to approve the quote.",
			"sourceRef": "06074cd8-ef56-45f5-8ac8-3705a2d32239",
			"targetRef": "a4e2dc33-d9c4-4ddc-a979-98b9826b76d6"
		},
		"6cfa67f4-25c9-469d-a6c2-c31c153b588c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow27",
			"name": "SequenceFlow27",
			"sourceRef": "5b32ccc0-af93-495c-80a9-a0034771d2df",
			"targetRef": "018731c0-9e6e-4e61-85cd-5411500d1952"
		},
		"daa5bf10-cc43-4169-b8da-6cfc099eaf00": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow28",
			"name": "SequenceFlow28",
			"sourceRef": "618485b4-e9d1-4b04-bc31-7ec038187871",
			"targetRef": "5b32ccc0-af93-495c-80a9-a0034771d2df"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"fd06847d-b657-405a-bff7-e39dee0e28aa": {},
				"e5043661-148d-49c4-8ec1-c37951fa3482": {},
				"4d924509-7adb-45d7-8b92-f88e4c3fdbe1": {},
				"fde1150e-5c11-4f6d-a9b3-b80854bf91a8": {},
				"76f997d7-af23-42fc-9049-c1bb8da8dd5b": {},
				"292de3a0-baee-494e-b813-1bd6ed565912": {},
				"a3e27ed8-40ff-4014-8e11-363bfd3b8bca": {},
				"f988e43b-da65-4f23-bec1-0b35fb53a35d": {},
				"6d8f21c5-3090-4ff6-af23-af6339b8882e": {},
				"27b06860-bc38-4bae-a6b7-158efdf88db8": {},
				"4dfaeb0d-8791-4cf3-be29-61f989c76390": {},
				"6e66327c-acfe-4c58-9b90-f59b1017add4": {},
				"f8d44e5b-3e26-4129-a64c-d760e490b4f4": {},
				"5a52ea73-6907-4ae8-85e6-5774ecf02064": {},
				"912e89b7-31f8-4640-b6a2-6847df12e60a": {},
				"11893fec-e005-4f2c-b399-5b063fcf380c": {},
				"4ebab0c5-6e87-4623-8ad9-86de4e1e79b3": {},
				"4dbc4722-7d8f-4eb0-8d53-ca9ffaf57f93": {},
				"aebe1dca-fa91-49d3-877f-0d1515a759d6": {},
				"4a32e177-97dc-4074-ba2e-1f08d77f9a5b": {},
				"704cc8e8-69e1-4db6-a3c1-bca56027fc02": {},
				"beadf808-2372-41d5-8a78-3ce8a5f354e4": {},
				"d8a880f9-9906-4b8d-b61f-8b59e0d3987c": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": -82,
			"y": -127.00000059604645,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"fd06847d-b657-405a-bff7-e39dee0e28aa": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 932.9999988079071,
			"y": -4.0000011920928955,
			"width": 35,
			"height": 35,
			"object": "57247c11-c4cd-4287-bdbb-5f677e2deedd"
		},
		"e5043661-148d-49c4-8ec1-c37951fa3482": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 40.999998807907104,
			"y": -141,
			"width": 100,
			"height": 60,
			"object": "72acd9ed-1dfb-4df1-888d-005718e8fdf2"
		},
		"4d924509-7adb-45d7-8b92-f88e4c3fdbe1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "-50,-111.00000059604645 40.999998807907104,-111",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "e5043661-148d-49c4-8ec1-c37951fa3482",
			"object": "ea5ba01e-4571-4b68-9163-1a86c4d285f7"
		},
		"fde1150e-5c11-4f6d-a9b3-b80854bf91a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "140.9999988079071,-111 236.9999976158142,-111.00000029802322",
			"sourceSymbol": "e5043661-148d-49c4-8ec1-c37951fa3482",
			"targetSymbol": "4ebab0c5-6e87-4623-8ad9-86de4e1e79b3",
			"object": "a081dd90-369e-4ff7-95fa-969b79456177"
		},
		"76f997d7-af23-42fc-9049-c1bb8da8dd5b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 343.9999964237213,
			"y": -140.50000029802322,
			"width": 100,
			"height": 60,
			"object": "59f12596-c7d4-4737-8967-ef65c06bfb6c"
		},
		"292de3a0-baee-494e-b813-1bd6ed565912": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "443.9999964237213,-110.75000029802322 552.9999952316284,-110.75000029802322",
			"sourceSymbol": "76f997d7-af23-42fc-9049-c1bb8da8dd5b",
			"targetSymbol": "a3e27ed8-40ff-4014-8e11-363bfd3b8bca",
			"object": "82a7dbd0-122f-4c6d-a49d-b8132ddd27a7"
		},
		"a3e27ed8-40ff-4014-8e11-363bfd3b8bca": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 552.9999952316284,
			"y": -141.00000029802322,
			"width": 100,
			"height": 60,
			"object": "d95d6984-32d8-49ad-9d18-6d6392606704"
		},
		"f988e43b-da65-4f23-bec1-0b35fb53a35d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "652.9999952316284,-111.00000029802322 707.75,-111 707.7500001098703,-111.00000762939453 761.9999941494058,-111.00000822544098",
			"sourceSymbol": "a3e27ed8-40ff-4014-8e11-363bfd3b8bca",
			"targetSymbol": "6d8f21c5-3090-4ff6-af23-af6339b8882e",
			"object": "100d78eb-69f2-4697-8112-fa69d1210051"
		},
		"6d8f21c5-3090-4ff6-af23-af6339b8882e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 761.9999940395355,
			"y": -141.00000059604645,
			"width": 100,
			"height": 60,
			"object": "28c64426-9553-4c6a-b5ed-a7e84a6defe6"
		},
		"27b06860-bc38-4bae-a6b7-158efdf88db8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "811.5,-121 811.5,13",
			"sourceSymbol": "6d8f21c5-3090-4ff6-af23-af6339b8882e",
			"targetSymbol": "4dfaeb0d-8791-4cf3-be29-61f989c76390",
			"object": "1b5aba20-c49f-456d-8391-411196359c1a"
		},
		"4dfaeb0d-8791-4cf3-be29-61f989c76390": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 791,
			"y": -8.000000596046448,
			"object": "d403f71f-f6ab-4ee0-a8e1-c5c53fadda69"
		},
		"6e66327c-acfe-4c58-9b90-f59b1017add4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 363.9999988079071,
			"y": -8,
			"object": "06074cd8-ef56-45f5-8ac8-3705a2d32239"
		},
		"f8d44e5b-3e26-4129-a64c-d760e490b4f4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "833,12.5 363.9999988079071,12.5",
			"sourceSymbol": "4dfaeb0d-8791-4cf3-be29-61f989c76390",
			"targetSymbol": "6e66327c-acfe-4c58-9b90-f59b1017add4",
			"object": "251f1c09-ad8f-4eb9-98ab-ab0bff098eb3"
		},
		"5a52ea73-6907-4ae8-85e6-5774ecf02064": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "833,13.249999105930328 932.9999988079071,13.249999105930328",
			"sourceSymbol": "4dfaeb0d-8791-4cf3-be29-61f989c76390",
			"targetSymbol": "fd06847d-b657-405a-bff7-e39dee0e28aa",
			"object": "19a80aef-9b8d-4219-8bfa-f759e77bccc9"
		},
		"912e89b7-31f8-4640-b6a2-6847df12e60a": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 932.9999964237213,
			"y": 149.49999970197678,
			"width": 35,
			"height": 35,
			"object": "018731c0-9e6e-4e61-85cd-5411500d1952"
		},
		"11893fec-e005-4f2c-b399-5b063fcf380c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "384.9999988079071,13 385,167",
			"sourceSymbol": "6e66327c-acfe-4c58-9b90-f59b1017add4",
			"targetSymbol": "beadf808-2372-41d5-8a78-3ce8a5f354e4",
			"object": "18313dda-8cff-4410-add4-01c8e40676bb"
		},
		"4ebab0c5-6e87-4623-8ad9-86de4e1e79b3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 236.9999976158142,
			"y": -132.00000029802322,
			"object": "a4e2dc33-d9c4-4ddc-a979-98b9826b76d6"
		},
		"4dbc4722-7d8f-4eb0-8d53-ca9ffaf57f93": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "278.9999976158142,-110.75000029802322 343.9999964237213,-110.75000029802322",
			"sourceSymbol": "4ebab0c5-6e87-4623-8ad9-86de4e1e79b3",
			"targetSymbol": "76f997d7-af23-42fc-9049-c1bb8da8dd5b",
			"object": "5edd788b-1a13-49ba-87bf-974853fc911c"
		},
		"aebe1dca-fa91-49d3-877f-0d1515a759d6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "405.9999988079071,13 187,13 187,-111 236.9999976158142,-111.00000029802322",
			"sourceSymbol": "6e66327c-acfe-4c58-9b90-f59b1017add4",
			"targetSymbol": "4ebab0c5-6e87-4623-8ad9-86de4e1e79b3",
			"object": "05ba49a6-9bc1-4c0c-a571-a5cf011ae314"
		},
		"4a32e177-97dc-4074-ba2e-1f08d77f9a5b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 614,
			"y": 137,
			"width": 100,
			"height": 60,
			"object": "5b32ccc0-af93-495c-80a9-a0034771d2df"
		},
		"704cc8e8-69e1-4db6-a3c1-bca56027fc02": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "664.2499982118607,167 950.2499982118607,166.99999970197678",
			"sourceSymbol": "4a32e177-97dc-4074-ba2e-1f08d77f9a5b",
			"targetSymbol": "912e89b7-31f8-4640-b6a2-6847df12e60a",
			"object": "6cfa67f4-25c9-469d-a6c2-c31c153b588c"
		},
		"beadf808-2372-41d5-8a78-3ce8a5f354e4": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 335,
			"y": 137,
			"width": 100,
			"height": 60,
			"object": "618485b4-e9d1-4b04-bc31-7ec038187871"
		},
		"d8a880f9-9906-4b8d-b61f-8b59e0d3987c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "385,167 664,167",
			"sourceSymbol": "beadf808-2372-41d5-8a78-3ce8a5f354e4",
			"targetSymbol": "4a32e177-97dc-4074-ba2e-1f08d77f9a5b",
			"object": "daa5bf10-cc43-4169-b8da-6cfc099eaf00"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 3,
			"hubapireference": 3,
			"sequenceflow": 28,
			"startevent": 1,
			"endevent": 3,
			"usertask": 3,
			"servicetask": 4,
			"scripttask": 5,
			"mailtask": 5,
			"exclusivegateway": 6,
			"parallelgateway": 2,
			"referencedsubflow": 4
		}
	}
}