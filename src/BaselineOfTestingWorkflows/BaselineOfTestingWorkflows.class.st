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
		spec
			package: 'TestingWorkflows';
			package: 'TestingWorkflows-Tests'
			with: [ spec requires: #( 'TestingWorkflows' ) ].

		spec postLoadDoIt: #registerCustomTools ]
]

{ #category : 'actions' }
BaselineOfTestingWorkflows >> registerCustomTools [

	MiPlayground register
]
