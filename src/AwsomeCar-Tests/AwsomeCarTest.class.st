"
An AwsomeCarTest is a test class for testing the behavior of AwsomeCar
"
Class {
	#name : #AwsomeCarTest,
	#superclass : #TestCase,
	#category : #'AwsomeCar-Tests'
}

{ #category : #tests }
AwsomeCarTest >> testGear [

	| c |
	c := AwsomeCar new.
	c turnOn.
	c gearUp.
	c gearUp.
	self assert: c gear equals: 2.
	c gearDown.
	self assert: c gear equals: 1
]

{ #category : #tests }
AwsomeCarTest >> testSpeed [

	| c |
	c := AwsomeCar new.
	c turnOn.
	c gearUp.
	c accelerate.
	self assert: c speed equals: 5.
	c gearUp.
	c accelerate.
	self assert: c speed equals: 15.
	c break.
	self assert: c speed equals: 10
]

{ #category : #tests }
AwsomeCarTest >> testStart [

	| c |
	c := AwsomeCar new.
	c turnOn.
	self assert: c isStarted.
	c turnOff.
	self deny: c isStarted.
	
]
