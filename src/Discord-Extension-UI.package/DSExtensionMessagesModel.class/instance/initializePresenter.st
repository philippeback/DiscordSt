initialization
initializePresenter
	"Initialize widgets behavior"
	listModel whenSelectedItemChanged: [ :selection | 
		selection 
			ifNil: [ listModel menu: nil ]
			ifNotNil: [ listModel menu: [ :aMenu | 
					self populateMenuFor: selection in: aMenu ] ] ].
	toolbarModel all activationAction: [ self displayAllMessages ].
	toolbarModel fuel activationAction: [ self displayFuelMessages ]