Class {
	#name : 'BaselineOfTestingWorkflows',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfTestingWorkflows',
	#package : 'BaselineOfTestingWorkflows'
}

{ #category : 'baselines' }
BaselineOfTestingWorkflows >> baseline: spec [

	<baseline>
	spec for: #common do: [
		self mooseIDE: spec.
		spec package: 'TestingWorkflows'.
		spec
			package: 'TestingWorkflows-Tests'
			with: [ spec requires: #( 'TestingWorkflows' 'MooseIDE' ) ] ]
]

{ #category : 'dependencies' }
BaselineOfTestingWorkflows >> mooseIDE: spec [

	spec
		baseline: 'MooseIDE'
		with: [ 
		spec repository: 'github://moosetechnology/MooseIDE:development/src' ]
]
