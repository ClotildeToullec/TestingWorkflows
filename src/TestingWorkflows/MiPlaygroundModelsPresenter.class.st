"
I am a presenter to show all installed MooseModels and a code preview of how they can be used in the playground.
By clicking OK, user can add this code to the playground.
"
Class {
	#name : 'MiPlaygroundModelsPresenter',
	#superclass : 'StPresenter',
	#instVars : [
		'modelsList',
		'codePreview',
		'modelsPanel',
		'previewPanel'
	],
	#category : 'TestingWorkflows-Playground',
	#package : 'TestingWorkflows',
	#tag : 'Playground'
}

{ #category : 'specs' }
MiPlaygroundModelsPresenter class >> defaultLayout [

	^ SpPanedLayout newLeftToRight
		  positionOfSlider: 30 percent;
		  add: #modelsPanel;
		  add: #previewPanel;
		  yourself
]

{ #category : 'accessing' }
MiPlaygroundModelsPresenter class >> defaultTitle [

	^ 'Add model to playground'
]

{ #category : 'code' }
MiPlaygroundModelsPresenter >> codeToAdd [

	^ codePreview text
]

{ #category : 'initialization' }
MiPlaygroundModelsPresenter >> initializePresenters [

	modelsPanel := (self instantiate: StHeaderPanel) label: 'Models'.
	modelsList := self newList
		              items: { 1.2. 3 };
		              whenSelectedDo: [ :model |  ].
	modelsPanel presenter: modelsList.

	previewPanel := (self instantiate: StHeaderPanel) label: 'Preview'.
	codePreview := self newCode beForScripting beNotEditable
		               withoutLineNumbers.
	previewPanel presenter: codePreview.

	self selectFirstModel
]

{ #category : 'initialization' }
MiPlaygroundModelsPresenter >> initializeWindow: aWindowPresenter [

	super initializeWindow: aWindowPresenter.
	aWindowPresenter
		title: self class defaultTitle;
		initialExtent: 800 @ 400
]

{ #category : 'initialization' }
MiPlaygroundModelsPresenter >> selectFirstModel [

	modelsList selectItem: 1
]
