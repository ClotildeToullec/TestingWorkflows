Class {
	#name : 'MiPlaygroundInspectInMooseCommand',
	#superclass : 'MiPlaygroundCommand',
	#category : 'TestingWorkflows-Playground',
	#package : 'TestingWorkflows',
	#tag : 'Playground'
}

{ #category : 'default' }
MiPlaygroundInspectInMooseCommand class >> defaultDescription [

	^ 'Execute selection and inspect the result in a Moose inspector'
]

{ #category : 'default' }
MiPlaygroundInspectInMooseCommand class >> defaultName [

	^ 'Inspect in Moose'
]

{ #category : 'default' }
MiPlaygroundInspectInMooseCommand class >> defaultShortcutKey [

	^ $m shift meta , $i shift meta
]

{ #category : 'converting' }
MiPlaygroundInspectInMooseCommand >> asSpecCommand [

	^ SpToolCurrentApplicationCommand decorate: (super asSpecCommand
			   iconName: #smallInspectIt;
			   shortcutKey: self class defaultShortcutKey;
			   beDisplayedOnRightSide;
			   yourself)
]

{ #category : 'executing' }
MiPlaygroundInspectInMooseCommand >> execute [

	
]
