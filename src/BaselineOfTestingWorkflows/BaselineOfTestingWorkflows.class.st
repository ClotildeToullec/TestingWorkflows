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
		spec package: 'TestingWorkflows'.
		spec
			package: 'TestingWorkflows-Tests'
			with: [ spec requires: #( 'TestingWorkflows' ) ] ]
]
