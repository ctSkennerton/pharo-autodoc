"
Create markup documentation of a class

### Examples

	ad := AutoDoc new.
	rws := String new writeStream.
	ad outputStream: rws.
	ad toSphinx: Dictionary 
"
Class {
	#name : #AutoDoc,
	#superclass : #Object,
	#instVars : [
		'outputStream'
	],
	#category : #AutoDoc
}

{ #category : #accessing }
AutoDoc >> outputStream [ 

	"comment stating purpose of instance-side method"

	^ outputStream
]

{ #category : #accessing }
AutoDoc >> outputStream: anOutputStream [

	"comment stating purpose of instance-side method"

	outputStream := anOutputStream 
]

{ #category : #formatting }
AutoDoc >> toSphinx: aClass [
	"Output information about a class in Sphinx format"

	outputStream nextPutAll: ':class:: '.
	outputStream nextPutAll: aClass name.
	outputStream crlf.
	outputStream nextPutAll: '    '.
	aClass hasComment ifTrue: [ outputStream nextPutAll: aClass comment ].


	aClass methodsDo: [ :method | 
		outputStream nextPutAll: '    :method:: '.
		outputStream nextPutAll: method selector.
		outputStream crlf.
		outputStream nextPutAll: '    '.
		method hasComment ifTrue: [ outputStream nextPutAll: method comment ].
		outputStream crlf.
		outputStream crlf ].

	outputStream crlf.
	outputStream crlf
]
