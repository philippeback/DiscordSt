*Discord-Extension-Core-Tests
testIsFuelStack
	object := self newObjectToTest 
		embeds: (Array with: (self newEmbedObject
			fieldName: DSSendCommand fuelFieldName 
			value: DSSendStackCommand commandName;
			yourself));
		yourself.
	self assert: object isFuelStack