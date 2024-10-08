"
I am a custom playground for Moose.
I include a **Models** toolbar button. It is used to insert an expression to assign a model to a variable.
"
Class {
	#name : 'MiPlayground',
	#superclass : 'StPlayground',
	#category : 'TestingWorkflows-Playground',
	#package : 'TestingWorkflows',
	#tag : 'Playground'
}

{ #category : 'accessing' }
MiPlayground class >> defaultTitle [ 

	^ 'Moose Playground'
]

{ #category : 'class initialization' }
MiPlayground class >> initialize [

	"Make playground active by default"

	self register
]

{ #category : 'world menu' }
MiPlayground class >> menuLabel [

	^ 'Moose Playground'
]

{ #category : 'instance creation' }
MiPlayground class >> open [

	<script>
	^ self new open
]

{ #category : 'tools registry' }
MiPlayground class >> registerToolsOn: registry [
	"Add ourselves to registry. See [Smalltalk tools]"

	registry workspaceTool: self
]

{ #category : 'private - factory' }
MiPlayground >> newDefaultPlaygroundPage [

	^ MiPlaygroundPage new
]
