"
A TWObjectTest is a test class for testing the behavior of TWObject
"
Class {
	#name : 'TWObjectTest',
	#superclass : 'TestCase',
	#instVars : [
		'twObject'
	],
	#category : 'TestingWorkflows-Tests',
	#package : 'TestingWorkflows-Tests'
}

{ #category : 'running' }
TWObjectTest >> setUp [

	super setUp.

	twObject := TWObject new
]

{ #category : 'tests' }
TWObjectTest >> testValidate [

	self deny: twObject isValid.
	twObject validate.
	self assert: twObject isValid
]
