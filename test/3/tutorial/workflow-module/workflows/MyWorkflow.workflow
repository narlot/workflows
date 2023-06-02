{
	"contents": {
		"dc57ed85-30e6-42dc-b0ca-92160c707076": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "namespace.wf.myworkflow",
			"subject": "Employee onboarding  process initiated for ${context.employeename}",
			"businessKey": "${context.employeeid}",
			"customAttributes": [{
				"id": "employeename",
				"label": "Employee Name",
				"type": "string",
				"value": "${context.employeename}"
			}, {
				"id": "employeeid",
				"label": "Employee ID",
				"type": "string",
				"value": "${context.employeeid}"
			}],
			"name": "MyWorkflow",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent"
				}
			},
			"activities": {
				"b648ef0b-2628-4d89-a2cb-2671d7fc49d7": {
					"name": "UserTask"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"065cd7a6-43e8-49a5-b540-7a581e913dc1": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent",
			"documentation": "Tutorial workflow start event.",
			"sampleContextRefs": {
				"df77c66d-b26d-4f1b-8a70-5498e619c758": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent",
			"documentation": "Tutorial workflow end event."
		},
		"b648ef0b-2628-4d89-a2cb-2671d7fc49d7": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Tutorial workflow user-task.",
			"description": "Tutorial workflow user-task.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": true,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "aleksandrs.antonuks@ecenta.com",
			"formReference": "/forms/MyWorkflow/tutorialwfform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "tutorialwfform"
			}, {
				"key": "formRevision",
				"value": "v1"
			}],
			"id": "usertask1",
			"name": "UserTask",
			"documentation": "Tutorial workflow user-task."
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "b648ef0b-2628-4d89-a2cb-2671d7fc49d7"
		},
		"065cd7a6-43e8-49a5-b540-7a581e913dc1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "b648ef0b-2628-4d89-a2cb-2671d7fc49d7",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"cf212221-c75a-4ea2-9157-e33ad77e482e": {},
				"f4dae3fa-a427-4bb0-861e-b5a06609ca44": {}
			}
		},
		"df77c66d-b26d-4f1b-8a70-5498e619c758": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/MyWorkflow/tutorial-workflow-simple-context.json",
			"id": "default-start-context"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 527,
			"y": 142,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,117 228,117",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "cf212221-c75a-4ea2-9157-e33ad77e482e",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"cf212221-c75a-4ea2-9157-e33ad77e482e": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 178,
			"y": 88,
			"width": 100,
			"height": 60,
			"object": "b648ef0b-2628-4d89-a2cb-2671d7fc49d7"
		},
		"f4dae3fa-a427-4bb0-861e-b5a06609ca44": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "228,118 402.75,118 402.75,159.5 544.5,159.5",
			"sourceSymbol": "cf212221-c75a-4ea2-9157-e33ad77e482e",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "065cd7a6-43e8-49a5-b540-7a581e913dc1"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1
		}
	}
}