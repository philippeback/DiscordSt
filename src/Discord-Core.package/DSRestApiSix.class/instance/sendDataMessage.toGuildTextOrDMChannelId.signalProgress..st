public
sendDataMessage: aDSClientDataPost toGuildTextOrDMChannelId: channelId signalProgress: aBoolean
	"Send a message to the particular text Guild or DM channel.
	See https://discordapp.com/developers/docs/resources/channel#create-message"

	| url response entity |
	url := self channelMessagesUrlForId: channelId.
	entity := DSPostToEntityCommand new
		post: aDSClientDataPost;
		execute;
		entity.
	response := self newZnClientAuthenticated
		url: url;
		signalProgress: aBoolean;
		entity: entity;
		post;
		response.
	^ response isSuccess
		ifTrue: [ self parseMessage: response ]
		ifFalse: [ DSUnauthorizedOperationError new
				response: response;
				signal: response contents ]