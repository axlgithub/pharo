"
I am a special layout version for CompiledMethods. 
Unlike default Object layouts, CompiledMethods define a custom format integer since they mix bytes and pointer types.

See CompiledMethod for more details.
"
Class {
	#name : #CompiledMethodLayout,
	#superclass : #ObjectLayout,
	#category : #'Kernel-Layout'
}

{ #category : #'instance creation' }
CompiledMethodLayout class >> extending: superLayout scope: aScope host: aClass [
	^ superLayout extendCompiledMethod
		host: aClass;
		yourself
]

{ #category : #description }
CompiledMethodLayout class >> kind [ 
	^ #compiledMethod 
]

{ #category : #extending }
CompiledMethodLayout >> extend [
	self error: 'CompiledMethodLayout can not be extendend'
]

{ #category : #format }
CompiledMethodLayout >> instanceSpecification [
	 ^ 24
]

{ #category : #accessing }
CompiledMethodLayout >> kindOfSubclass [
	"not really true but this is what is shows now"
	^' variableByteSubclass: '
]

{ #category : #accessing }
CompiledMethodLayout >> typeOfClass [
	^#compiledMethod
]
