initialization
setFileName
	"Set a filename for a Discord message attachment (this attachment will hold the stack).
	Compute it from the actual time and from the class name on the interrputed context."
	| date |
	date := DateAndTime now.
	self fileName: (String streamContents: [ :stream |
		stream
			<< 'Stack-';
			<< self interruptedContext receiver class theNonMetaClass name;
			<< '.fuel' ]).