Class {
	#name : 'TWObject',
	#superclass : 'Object',
	#instVars : [
		'isValid'
	],
	#category : 'TestingWorkflows',
	#package : 'TestingWorkflows'
}

{ #category : 'initialization' }
TWObject >> initialize [

	super initialize.
	isValid := false
]

{ #category : 'accessing' }
TWObject >> isValid [

	^ isValid
]

{ #category : 'accessing' }
TWObject >> validate [

	isValid := true
]
