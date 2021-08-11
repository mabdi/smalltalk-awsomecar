Class {
	#name : #AwsomeCar,
	#superclass : #Object,
	#instVars : [
		'isStarted',
		'speed',
		'gear'
	],
	#category : #AwsomeCar
}

{ #category : #'as yet unclassified' }
AwsomeCar class >> breakFactor [

	^ 10
]

{ #category : #'as yet unclassified' }
AwsomeCar class >> speedFactor [
	^ 5
]

{ #category : #action }
AwsomeCar >> accelerate [

	speed := speed + (gear * 5)
]

{ #category : #action }
AwsomeCar >> break [

	speed := speed - 5
]

{ #category : #accessing }
AwsomeCar >> gear [

	^ gear
]

{ #category : #accessing }
AwsomeCar >> gear: anObject [

	gear := anObject
]

{ #category : #action }
AwsomeCar >> gearDown [

	gear > 0 ifTrue: [gear := gear - 1]
]

{ #category : #action }
AwsomeCar >> gearUp [

	gear = 1 ifTrue: [ gear := 1 ].
	gear < 5 ifTrue: [ gear := gear + 1 ]
]

{ #category : #accessing }
AwsomeCar >> isStarted [

	^ isStarted
]

{ #category : #accessing }
AwsomeCar >> isStarted: anObject [

	isStarted := anObject
]

{ #category : #action }
AwsomeCar >> reverse [

	gear = 0 ifTrue: 
	[gear := -1]
]

{ #category : #accessing }
AwsomeCar >> speed [

	^ speed
]

{ #category : #accessing }
AwsomeCar >> speed: anObject [

	speed := anObject
]

{ #category : #action }
AwsomeCar >> stop [

	speed := 0.
	gear := 0
]

{ #category : #action }
AwsomeCar >> turnOff [

	speed = 0 ifFalse: [ self error: 'you must stop first' ].
	isStarted := false
]

{ #category : #action }
AwsomeCar >> turnOn [

	isStarted := true.
	gear := 0.
	speed := 0
]
