Class {
	#name : #BaselineOfAutoDoc,
	#superclass : #BaselineOf,
	#category : #BaselineOfAutoDoc
}

{ #category : #baselines }
BaselineOfAutoDoc >> baseline: spec [

	<baseline>
	spec for: #common do: [ spec package: 'AutoDoc' ]
]
