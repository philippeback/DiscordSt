*Discord-Extension-Core-Tests
testIsFuelObject
	object := self newObjectToTest 
		fieldName: DSSendCommand fuelFieldName 
		value: DSSendObjectCommand commandName;
		yourself.
	self assert: object isFuelObject