'From Cuis 5.0 [latest update: #4103] on 20 April 2020 at 5:08:14 pm'!
'Description '!
!provides: 'Tools-Finder' 1 5!
SystemOrganization addCategory: #'Tools-Finder-Model'!
SystemOrganization addCategory: #'Tools-Finder-UI'!
SystemOrganization addCategory: #'Tools-Finder-UI-Model'!


!classDefinition: #FinderWindow category: #'Tools-Finder-UI'!
SystemWindow subclass: #FinderWindow
	instanceVariableNames: 'toolbar searchBox results'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI'!
!classDefinition: 'FinderWindow class' category: #'Tools-Finder-UI'!
FinderWindow class
	instanceVariableNames: ''!

!classDefinition: #Catalog category: #'Tools-Finder-Model'!
Object subclass: #Catalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'Catalog class' category: #'Tools-Finder-Model'!
Catalog class
	instanceVariableNames: ''!

!classDefinition: #ClassNamesCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #ClassNamesCatalog
	instanceVariableNames: 'results selectedResultIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ClassNamesCatalog class' category: #'Tools-Finder-Model'!
ClassNamesCatalog class
	instanceVariableNames: ''!

!classDefinition: #CompositeCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #CompositeCatalog
	instanceVariableNames: 'catalogs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'CompositeCatalog class' category: #'Tools-Finder-Model'!
CompositeCatalog class
	instanceVariableNames: ''!

!classDefinition: #ImplementedSelectorsCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #ImplementedSelectorsCatalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ImplementedSelectorsCatalog class' category: #'Tools-Finder-Model'!
ImplementedSelectorsCatalog class
	instanceVariableNames: ''!

!classDefinition: #ImplementorsCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #ImplementorsCatalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ImplementorsCatalog class' category: #'Tools-Finder-Model'!
ImplementorsCatalog class
	instanceVariableNames: ''!

!classDefinition: #PackagesCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #PackagesCatalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'PackagesCatalog class' category: #'Tools-Finder-Model'!
PackagesCatalog class
	instanceVariableNames: ''!

!classDefinition: #SendersCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #SendersCatalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SendersCatalog class' category: #'Tools-Finder-Model'!
SendersCatalog class
	instanceVariableNames: ''!

!classDefinition: #ToolsCatalog category: #'Tools-Finder-Model'!
Catalog subclass: #ToolsCatalog
	instanceVariableNames: 'tools implementorsCatalog'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ToolsCatalog class' category: #'Tools-Finder-Model'!
ToolsCatalog class
	instanceVariableNames: ''!

!classDefinition: #CompositeCatalogResult category: #'Tools-Finder-Model'!
Object subclass: #CompositeCatalogResult
	instanceVariableNames: 'catalog result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'CompositeCatalogResult class' category: #'Tools-Finder-Model'!
CompositeCatalogResult class
	instanceVariableNames: ''!

!classDefinition: #Finder category: #'Tools-Finder-Model'!
Object subclass: #Finder
	instanceVariableNames: 'results selectedResultIndex selectedCatalog catalogs currentQuery changeSelectedCatalogSelectorPrefix isSelectedCatalogSelectorPrefix selectedCatalogChangeEvent browseSelectedResultEvent closeEvent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'Finder class' category: #'Tools-Finder-Model'!
Finder class
	instanceVariableNames: ''!

!classDefinition: #SubstringMatcher category: #'Tools-Finder-Model'!
Object subclass: #SubstringMatcher
	instanceVariableNames: 'collection substring'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SubstringMatcher class' category: #'Tools-Finder-Model'!
SubstringMatcher class
	instanceVariableNames: ''!

!classDefinition: #CatalogButton category: #'Tools-Finder-UI-Model'!
Object subclass: #CatalogButton
	instanceVariableNames: 'catalog model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI-Model'!
!classDefinition: 'CatalogButton class' category: #'Tools-Finder-UI-Model'!
CatalogButton class
	instanceVariableNames: ''!

!classDefinition: #SearchBoxEditor category: #'Tools-Finder-UI-Model'!
Object subclass: #SearchBoxEditor
	instanceVariableNames: 'textEditor model results'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI-Model'!
!classDefinition: 'SearchBoxEditor class' category: #'Tools-Finder-UI-Model'!
SearchBoxEditor class
	instanceVariableNames: ''!


!ToolsCatalog commentStamp: '<historical>' prior: 0!
I am a catalog that contains all tools available in the World > Open... menu.

To avoid hardcoding them, I look for implementors of #worldMenuForOpenGroup and evaluate them to retrieve each menu item (see #initializeTools).!

!CatalogButton commentStamp: 'NPM 4/2/2020 00:48:04' prior: 0!
I represent a catalog button's model.

The way catatalog buttons work in FinderWindow is similar to radio buttons: only
one can be active at a time, and once one is selected the previous catalog button
is deselected.

To react to selected catalog change events, I subscribe to my finder to determine whether 
I am the selected catalog or not (see #isSelected).

When I am clicked, I set myself as the selected catalog (see #value).!

!SearchBoxEditor commentStamp: '<historical>' prior: 0!
My purpose is wrapping instances of TextEditor to override keyboard shortcuts.

If I cannot handle a keyboard event, I forward it to my wrapped text editor.

Any message I do not override is forwarded to my wrapped editor as well.

I also forward event to the results list, so it can be browsed from the editor (see)

Note
===
I exist as a hack, only to allow overriding keyboard handlers.

The way I am installed, and replace, an InnerTextMorph's editor is by assigning 
its #editor instance variable using reflection (see #installOn:mode: in my class).

Currently, TextEditor's keyboard shortcut mappings are shared among all instances and 
cannot be modified/overriden for a particular instance (see Editor>>#shortcuts).!

!Catalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 02:38:49'!
name

	self subclassResponsibility! !

!ClassNamesCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 02:39:01'!
name
	
	^ 'Classes'! !

!CompositeCatalog methodsFor: 'accessing' stamp: 'NPM 4/1/2020 00:31:00'!
name
	
	^ 'All'! !

!ImplementedSelectorsCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 02:39:13'!
name
	
	^ 'Selectors'! !

!ImplementorsCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 02:47:38'!
name
	
	^ 'Implementors'! !

!PackagesCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 03:12:11'!
name
	
	^ 'System categories'! !

!SendersCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 02:54:18'!
name
	
	^ 'Senders'! !

!ToolsCatalog methodsFor: 'accessing' stamp: 'NPM 3/31/2020 19:09:53'!
name
	
	^ 'Tools'! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 00:30:30'!
addToolbarButtonFor: catalog

	^ toolbar addMorph: (self toolbarButtonFor: catalog )! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 3/29/2020 23:52:15'!
buildLayout

	^ self layoutMorph
		beColumn
		addMorph: toolbar fixedHeight: self defaultButtonPaneHeight;
		addMorph: searchBox fixedHeight: self defaultButtonPaneHeight;
		addMorphUseAll: results! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 01:41:12'!
buildMorphicWindow
	
	self buildToolbar.
	self buildSearchBox.
	self buildResults.
	self buildLayout.	
	self installSearchBoxEditor.! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/1/2020 23:47:36'!
buildResults

	results := PluggableListMorph
		model: model
		listGetter: #results
		indexGetter: #selectedResultIndex
		indexSetter: #selectedResultIndex:.! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 01:40:52'!
buildSearchBox
	
	self initializeSearchBox.
	self registerKeyStrokeHandlerInSearchBox.
	
	
	
	
	
	! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 00:30:12'!
buildToolbar
	
	toolbar := LayoutMorph newRow.
	
	self buildToolbarButtonsForCatalogs.! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 00:30:32'!
buildToolbarButtonsForCatalogs

	^ model catalogsDo: [ :catalog | self addToolbarButtonFor: catalog ]! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 00:25:02'!
initializeSearchBox

	searchBox := TextModelMorph withText: ''.
	searchBox askBeforeDiscardingEdits: false.	
	! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 01:41:10'!
installSearchBoxEditor

	^ SearchBoxEditor
		installOn: searchBox
		results: results
		model: model! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 00:24:54'!
registerKeyStrokeHandlerInSearchBox

	^ searchBox textMorph
		setProperty: #'keyStroke:'
		toValue: [ :event | self search ]! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 00:48:23'!
toolbarButtonFor: aCatalog

	^ PluggableButtonMorph
		model: (CatalogButton for: aCatalog model: model)
		stateGetter: #isSelected
		action: #value
		label: aCatalog name! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 00:25:37'!
unregisterKeyStrokeHandlerFromSearchBox

	^ searchBox textMorph removeProperty: #'keyStroke:'! !

!FinderWindow methodsFor: 'top window' stamp: 'NPM 4/2/2020 00:32:14'!
submorphToFocusKeyboard

	^ searchBox textMorph! !

!FinderWindow methodsFor: 'events-old protocol' stamp: 'NPM 4/20/2020 17:06:01'!
update: aSymbol

	model
		isBrowseSelectedResultEvent: aSymbol
		ifTrue:  [ ^ self closeBoxHit ].
		
	model
		isCloseEvent: aSymbol
		ifTrue:  [ ^ self closeBoxHit ].! !

!FinderWindow methodsFor: 'searching' stamp: 'NPM 4/2/2020 00:05:36'!
search
	
	model search: searchBox text asString! !

!FinderWindow methodsFor: 'submorphs-add/remove' stamp: 'NPM 4/2/2020 00:25:37'!
delete

	self unregisterKeyStrokeHandlerFromSearchBox.
	
	^ super delete.! !

!FinderWindow class methodsFor: 'instance creation' stamp: 'NPM 3/29/2020 02:02:48'!
open
	
	^ self
		open: Finder withAllCatalogs
		label: 'Finder'! !

!Catalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 03:18:59'!
order

	self subclassResponsibility! !

!Catalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:29:31'!
processEmptySearchQuery
	
	^ OrderedCollection new! !

!Catalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:30:48'!
processNonEmptySearchQuery: aQuery

	self subclassResponsibility! !

!Catalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:30:48'!
search: aQuery

	^ aQuery
		ifEmpty: [ self processEmptySearchQuery ]
		ifNotEmpty: [ self processNonEmptySearchQuery: aQuery ]! !

!Catalog methodsFor: 'testing' stamp: 'NPM 3/29/2020 01:40:37'!
isNamed: aName 
	
	^ self name = aName! !

!Catalog methodsFor: 'browsing' stamp: 'NPM 4/2/2020 02:25:34'!
browse: aResult

	self subclassResponsibility! !

!Catalog class methodsFor: 'instance creation' stamp: 'NPM 4/4/2020 02:01:29'!
all
	
	| allCatalogs |
	allCatalogs := (self createAllCatalogs).
	
	allCatalogs addFirst: (self composite: allCatalogs copy).
		
	^ allCatalogs sort: [ :aCatalog :anotherCatalog | aCatalog order <= anotherCatalog order ] .! !

!Catalog class methodsFor: 'instance creation' stamp: 'NPM 4/4/2020 02:01:12'!
composite: children 
	
	^ CompositeCatalog withAll: children ! !

!Catalog class methodsFor: 'instance creation' stamp: 'NPM 4/4/2020 02:01:53'!
create
	
	^ self new! !

!Catalog class methodsFor: 'instance creation' stamp: 'NPM 4/4/2020 02:01:05'!
createAllCatalogs

	^ self allSubclasses
		select: [ :subclass | subclass ~= CompositeCatalog ]
		thenCollect: [ :subclass | subclass create ]! !

!ClassNamesCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 03:19:15'!
order 

	^ 1! !

!ClassNamesCatalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:30:48'!
processNonEmptySearchQuery: aQuery

	^ SubstringMatcher
		valueFiltering: Smalltalk classNames
		with: aQuery! !

!ClassNamesCatalog methodsFor: 'browsing' stamp: 'NPM 4/2/2020 02:25:34'!
browse: aClassName 
	
	| class |
	class := (Smalltalk classNamed: aClassName).
	
	BrowserWindow
		fullOnClass: class! !

!CompositeCatalog methodsFor: 'accessing' stamp: 'NPM 4/1/2020 00:43:42'!
order
	
	^ 999! !

!CompositeCatalog methodsFor: 'initialization' stamp: 'NPM 4/1/2020 00:30:46'!
initializeWithAll: children

	catalogs := children! !

!CompositeCatalog methodsFor: 'browsing' stamp: 'NPM 4/20/2020 16:31:26'!
browse: aResult

	aResult browse
	! !

!CompositeCatalog methodsFor: 'searching' stamp: 'NPM 4/20/2020 16:47:20'!
processNonEmptySearchQuery: aQuery
	
	^ catalogs
		inject: OrderedCollection new
		into: [ :results :catalog |
			results
				addAll: (self search: aQuery using: catalog);
				yourself ]! !

!CompositeCatalog methodsFor: 'searching' stamp: 'NPM 4/20/2020 16:53:30'!
search: aQuery using: aCatalog
	
	^ (aCatalog search: aQuery)
		collect: [ :result | CompositeCatalogResult with: aCatalog from: result ]! !

!CompositeCatalog class methodsFor: 'instance creation' stamp: 'NPM 4/1/2020 00:30:33'!
withAll: children 
	
	^ self
		new
		initializeWithAll: children! !

!ImplementedSelectorsCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 03:19:26'!
order 

	^ 2! !

!ImplementedSelectorsCatalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:30:48'!
processNonEmptySearchQuery: aQuery

	^ SubstringMatcher
		valueFiltering: Smalltalk allImplementedMessages
		with: aQuery! !

!ImplementedSelectorsCatalog methodsFor: 'browsing' stamp: 'NPM 4/2/2020 02:25:34'!
browse: aSelector

	Smalltalk browseAllImplementorsOf: aSelector! !

!ImplementorsCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 03:19:39'!
order 

	^ 4! !

!ImplementorsCatalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:30:48'!
processNonEmptySearchQuery: aQuery

	^ Smalltalk
		allImplementorsOf: aQuery asString asSymbol! !

!ImplementorsCatalog methodsFor: 'browsing' stamp: 'NPM 4/2/2020 02:25:34'!
browse: aMethodReference 

	HierarchyBrowserWindow
		onClass: aMethodReference methodClass
		selector: aMethodReference selector! !

!PackagesCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 03:19:44'!
order 

	^ 5! !

!PackagesCatalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:30:48'!
processNonEmptySearchQuery: aQuery 
	
	^ SubstringMatcher
		valueFiltering: SystemOrganization categories
		with: aQuery! !

!PackagesCatalog methodsFor: 'browsing' stamp: 'NPM 4/2/2020 02:25:34'!
browse: aSystemCategoryName 
	
	
	| newBrowser |
	newBrowser _ Browser new.
			newBrowser systemCategoryListIndex: (newBrowser systemCategoryList indexOf: aSystemCategoryName).

			BrowserWindow
				open: newBrowser label: newBrowser defaultBrowserTitle! !

!SendersCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 03:19:31'!
order 

	^ 3! !

!SendersCatalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:30:48'!
processNonEmptySearchQuery: aQuery 
	
	^ (Smalltalk allCallsOn: aQuery asString asSymbol) asArray sort! !

!SendersCatalog methodsFor: 'browsing' stamp: 'NPM 4/2/2020 02:25:34'!
browse: aMethodReference 
	
	HierarchyBrowserWindow
		onClass: aMethodReference methodClass
		selector: aMethodReference selector! !

!ToolsCatalog methodsFor: 'accessing' stamp: 'NPM 3/31/2020 19:09:42'!
order
	
	^ 100! !

!ToolsCatalog methodsFor: 'initialization' stamp: 'NPM 4/4/2020 02:04:59'!
initializeTools

	self
		menuItemsForOpenGroup
		sort: self blockForSortingItemsByLabel;
		do: [ :menuItem | self addToolFrom: menuItem ]! !

!ToolsCatalog methodsFor: 'initialization' stamp: 'NPM 4/4/2020 02:05:05'!
initializeWith: anImplementorsCatalog

	super initialize.
	
	implementorsCatalog := anImplementorsCatalog.
	tools := OrderedDictionary new.
	
	self initializeTools.! !

!ToolsCatalog methodsFor: 'browsing' stamp: 'NPM 4/2/2020 02:25:34'!
browse: aToolName

	(tools at: aToolName) value! !

!ToolsCatalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:30:08'!
processEmptySearchQuery
	
	^ self toolNames! !

!ToolsCatalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:30:48'!
processNonEmptySearchQuery: aQuery

	^ SubstringMatcher
		valueFiltering: self toolNames
		with: aQuery! !

!ToolsCatalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:29:52'!
toolNames

	^ tools keysSortedSafely! !

!ToolsCatalog methodsFor: 'tools' stamp: 'NPM 4/4/2020 01:48:12'!
addToolFrom: aMenuItem 
	
	tools
		at: (self labelFor: aMenuItem)
		put: [ (aMenuItem first at: #object) perform: (aMenuItem first at: #selector) ]! !

!ToolsCatalog methodsFor: 'tools' stamp: 'NPM 4/4/2020 01:47:55'!
blockForSortingItemsByLabel
	
	^ [ :aMenuItem :anotherMenuItem | (self labelFor: aMenuItem) <= (self labelFor: anotherMenuItem) ]! !

!ToolsCatalog methodsFor: 'tools' stamp: 'NPM 4/4/2020 01:47:24'!
labelFor: aMenuItem

	^ aMenuItem first at: #label! !

!ToolsCatalog methodsFor: 'tools' stamp: 'NPM 4/4/2020 01:49:39'!
menuItemsForOpenGroup

	^ (ImplementorsCatalog new search: #worldMenuForOpenGroup)
		collect: [ :implementor |
				implementor compiledMethod
					valueWithReceiver: implementor
					methodClass arguments: {} ]! !

!ToolsCatalog class methodsFor: 'instance creation' stamp: 'NPM 4/4/2020 02:04:14'!
create

	^ self
		new
		initializeWith: ImplementorsCatalog create! !

!CompositeCatalogResult methodsFor: 'browsing' stamp: 'NPM 4/20/2020 16:31:40'!
browse
	
	catalog browse: result! !

!CompositeCatalogResult methodsFor: 'initialization' stamp: 'NPM 4/20/2020 16:54:28'!
initializeWith: aResult from: aCatalog

	catalog := aCatalog.
	result := aResult.! !

!CompositeCatalogResult methodsFor: 'printing' stamp: 'NPM 4/20/2020 16:24:02'!
catalogNamePrefix
	
	^ '[', catalog name, ']'! !

!CompositeCatalogResult methodsFor: 'printing' stamp: 'NPM 4/20/2020 16:29:57'!
displayStringOrText

	^ self catalogNamePrefix, ' ', result displayStringOrText! !

!CompositeCatalogResult class methodsFor: 'instance creation' stamp: 'NPM 4/20/2020 16:54:28'!
with: aResult from: aCatalog

	^ self
		new
		initializeWith: aCatalog
		from: aResult! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 4/2/2020 01:20:03'!
catalogAfterSelectedCatalog

	^ (catalogs last = selectedCatalog)
		ifTrue: [ catalogs first ]
		ifFalse: [ catalogs at: (catalogs indexOf: selectedCatalog) + 1 ]! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 4/2/2020 01:19:40'!
catalogBeforeSelectedCatalog

	^ (catalogs first = selectedCatalog)
		ifTrue: [ catalogs last ]
		ifFalse: [ catalogs at: (catalogs indexOf: selectedCatalog) - 1 ]! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 4/2/2020 00:29:28'!
catalogsDo: aBlock
	
	catalogs do: aBlock! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 3/29/2020 13:05:43'!
changeSelectedCatalog: aCatalog

	self selectCatalog: aCatalog.
	self refreshSearchResults.
		
	! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 3/29/2020 13:03:03'!
isSelectedCatalog: aCatalog

	^ selectedCatalog = aCatalog
		
	! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 4/2/2020 01:04:44'!
selectCatalog: aCatalog

	selectedCatalog := aCatalog.
	
	self changed: selectedCatalogChangeEvent.
	! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 4/2/2020 01:20:35'!
selectNextCatalog
	
	self changeSelectedCatalog: self catalogAfterSelectedCatalog! !

!Finder methodsFor: 'catalogs' stamp: 'NPM 4/2/2020 01:19:50'!
selectPreviousCatalog
	
	self changeSelectedCatalog: self catalogBeforeSelectedCatalog! !

!Finder methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:33:58'!
refreshSearchResults

	self searchForResults! !

!Finder methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:33:25'!
search: aQuery

	currentQuery = aQuery
		ifTrue: [ ^ self ].

	currentQuery := aQuery.
	self searchForResults.
	! !

!Finder methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:33:29'!
searchForResults

	results := selectedCatalog search: currentQuery.
	
	selectedResultIndex := results
		ifEmpty: 0
		ifNotEmpty: 1.
		
	self changed: #results.! !

!Finder methodsFor: 'initialization' stamp: 'NPM 3/29/2020 01:59:55'!
initializeCatalogs: aCollectionOfCatalogs

	catalogs := aCollectionOfCatalogs.
	selectedCatalog := catalogs first.! !

!Finder methodsFor: 'initialization' stamp: 'NPM 4/20/2020 17:03:35'!
initializeEventNames

	selectedCatalogChangeEvent := #selectedCatalog.
	browseSelectedResultEvent := #browseSelectedResult.
	closeEvent := #close.! !

!Finder methodsFor: 'initialization' stamp: 'NPM 4/2/2020 02:33:01'!
initializeResults
	
	currentQuery := ''.
	results := OrderedCollection new.
	selectedResultIndex := 0.! !

!Finder methodsFor: 'initialization' stamp: 'NPM 4/2/2020 02:33:01'!
initializeWithAll: aCollectionOfCatalogs

	super initialize.
	
	self initializeResults.
	self initializeCatalogs: aCollectionOfCatalogs.	
	self initializeEventNames.! !

!Finder methodsFor: 'events-old protocol' stamp: 'NPM 4/2/2020 01:04:08'!
isBrowseSelectedResultEvent: anEvent ifTrue: aBlock
	
	anEvent = browseSelectedResultEvent
		ifTrue: aBlock! !

!Finder methodsFor: 'events-old protocol' stamp: 'NPM 4/20/2020 17:06:25'!
isCloseEvent: anEvent ifTrue: aBlock

	anEvent = closeEvent
		ifTrue: aBlock! !

!Finder methodsFor: 'events-old protocol' stamp: 'NPM 4/2/2020 01:05:06'!
isSelectedCatalogChange: anEvent ifTrue: aBlock

	anEvent = selectedCatalogChangeEvent
		ifTrue: aBlock! !

!Finder methodsFor: 'results' stamp: 'NPM 4/2/2020 02:24:59'!
browseSelectedResult
	
	selectedCatalog browse: (results at: selectedResultIndex).
	
	self changed: browseSelectedResultEvent! !

!Finder methodsFor: 'results' stamp: 'NPM 4/20/2020 17:03:53'!
close
	
	self changed: closeEvent! !

!Finder methodsFor: 'results' stamp: 'NPM 3/28/2020 01:43:57'!
results
	
	^ results! !

!Finder methodsFor: 'results' stamp: 'NPM 4/2/2020 01:09:49'!
selectNextResult
	
	results ifEmpty: [ ^ self ].
	
	selectedResultIndex = results size
		ifTrue: [ self selectedResultIndex: 1 ]
		ifFalse: [ self selectedResultIndex: selectedResultIndex + 1].! !

!Finder methodsFor: 'results' stamp: 'NPM 4/2/2020 01:10:08'!
selectPreviousResult
	
	results ifEmpty: [ ^ self ].
	
	selectedResultIndex = 0
		ifTrue: [ self selectedResultIndex: results size ]
		ifFalse: [ self selectedResultIndex: selectedResultIndex - 1].
	! !

!Finder methodsFor: 'results' stamp: 'NPM 3/28/2020 01:44:05'!
selectedResultIndex
	
	^ selectedResultIndex! !

!Finder methodsFor: 'results' stamp: 'NPM 4/2/2020 01:07:20'!
selectedResultIndex: anIndex 
	
	selectedResultIndex _ anIndex.
	self changed: #selectedResultIndex.! !

!Finder class methodsFor: 'instance creation' stamp: 'NPM 3/29/2020 01:58:53'!
withAllCatalogs
	
	^ self
		new
		initializeWithAll: Catalog all! !

!SubstringMatcher methodsFor: 'filtering' stamp: 'NPM 4/2/2020 01:25:02'!
filterCollection

	^ collection select: [ :item | item includesSubstring: substring caseSensitive: false ]! !

!SubstringMatcher methodsFor: 'sorting' stamp: 'NPM 4/2/2020 01:28:01'!
sortAlphabetically
	
	^ [ :result :otherResult | result <= otherResult ]! !

!SubstringMatcher methodsFor: 'sorting' stamp: 'NPM 4/2/2020 01:28:19'!
sortByLength
	
	^ [ :result :otherResult | result size <= otherResult size ]! !

!SubstringMatcher methodsFor: 'evaluating' stamp: 'NPM 4/2/2020 01:27:28'!
value

	^ (self filterCollection)
		asOrderedCollection
		sort: self sortAlphabetically;
		sort: self sortByLength! !

!SubstringMatcher methodsFor: 'initialization' stamp: 'NPM 4/2/2020 01:25:02'!
initializeFiltering: aCollection with: aSubstring 
	
	collection := aCollection.
	substring := aSubstring.! !

!SubstringMatcher class methodsFor: 'evaluating' stamp: 'NPM 4/2/2020 01:25:22'!
valueFiltering: aCollection with: aSubstring 
	
	^ (self forFiltering: aCollection with: aSubstring)
		value
		! !

!SubstringMatcher class methodsFor: 'instance creation' stamp: 'NPM 4/2/2020 01:25:18'!
forFiltering: aCollection with: aSubstring 
	
	^ self
		new
		initializeFiltering: aCollection
		with: aSubstring ! !

!CatalogButton methodsFor: 'evaluating' stamp: 'NPM 3/29/2020 13:13:43'!
value
	
	model changeSelectedCatalog: catalog! !

!CatalogButton methodsFor: 'events-old protocol' stamp: 'NPM 4/2/2020 00:45:07'!
handleSelectedCatalogChange: anEvent

	^ model
		isSelectedCatalogChange: anEvent
		ifTrue: [ self changed: #isSelected ]! !

!CatalogButton methodsFor: 'events-old protocol' stamp: 'NPM 4/2/2020 00:45:01'!
update: anEvent

	super update: anEvent.
	
	self handleSelectedCatalogChange: anEvent! !

!CatalogButton methodsFor: 'initialization' stamp: 'NPM 4/2/2020 00:48:35'!
initializeFor: aCatalog model: aFinder 
	
	catalog := aCatalog .
	model := aFinder.
	model addDependent: self.! !

!CatalogButton methodsFor: 'testing' stamp: 'NPM 3/29/2020 13:02:57'!
isSelected

	^ model isSelectedCatalog: catalog! !

!CatalogButton class methodsFor: 'instance creation' stamp: 'NPM 4/2/2020 00:48:35'!
for: aCatalog model: aFinder 
	
	^ self
		new
		initializeFor: aCatalog
		model: aFinder ! !

!SearchBoxEditor methodsFor: 'event handling' stamp: 'NPM 4/2/2020 01:40:07'!
forwardToEditor: aKeyboardEvent

	textEditor processKeyStroke: aKeyboardEvent! !

!SearchBoxEditor methodsFor: 'event handling' stamp: 'NPM 4/2/2020 01:39:11'!
forwardToResults: aKeyboardEvent

	^ (results arrowKey: aKeyboardEvent)
		isNil not
! !

!SearchBoxEditor methodsFor: 'event handling' stamp: 'NPM 4/2/2020 00:22:12'!
processArrowUpOrDown: aKeyboardEvent

	aKeyboardEvent isArrowUp 
		ifTrue: [ 
			model selectPreviousResult.
			^ true ].
		
	aKeyboardEvent isArrowDown 
		ifTrue: [ 
			model selectNextResult.
			^ true ].

	^ false
	! !

!SearchBoxEditor methodsFor: 'event handling' stamp: 'NPM 4/20/2020 17:02:53'!
processEscKey: aKeyboardEvent

	(aKeyboardEvent isEsc)
		ifTrue: [ model close ].
		
	^ aKeyboardEvent isEsc! !

!SearchBoxEditor methodsFor: 'event handling' stamp: 'NPM 4/20/2020 17:01:51'!
processKeyStroke: aKeyboardEvent

	(self processTab: aKeyboardEvent)
		ifTrue: [ ^ self ].
	
	(self processArrowUpOrDown: aKeyboardEvent)
		ifTrue: [ ^ self ].
		
	(self processReturnKey: aKeyboardEvent)
		ifTrue: [ ^ self ].
		
	(self processEscKey: aKeyboardEvent)
		ifTrue: [ ^ self ].

	(self forwardToResults: aKeyboardEvent)
		ifTrue: [ ^ self ].
	
	self forwardToEditor: aKeyboardEvent! !

!SearchBoxEditor methodsFor: 'event handling' stamp: 'NPM 4/2/2020 00:23:36'!
processReturnKey: aKeyboardEvent

	(aKeyboardEvent isReturnKey)
		ifTrue: [ model browseSelectedResult ].
		
	^ aKeyboardEvent isReturnKey! !

!SearchBoxEditor methodsFor: 'event handling' stamp: 'NPM 4/2/2020 00:16:32'!
processTab: aKeyboardEvent
	
	aKeyboardEvent isTab
		ifTrue: [ 
			aKeyboardEvent shiftPressed
				ifTrue: [ model selectPreviousCatalog ]
				ifFalse: [ model selectNextCatalog ]].
	
	^ aKeyboardEvent isTab! !

!SearchBoxEditor methodsFor: 'initialization' stamp: 'NPM 4/2/2020 01:34:54'!
initializeFor: aTextEditor results: aPluggableListMorph model: aFinder

	textEditor := aTextEditor.
	results := aPluggableListMorph.
	model := aFinder.! !

!SearchBoxEditor methodsFor: 'error handling' stamp: 'NPM 4/2/2020 00:39:43'!
doesNotUnderstand: aMessage

	^ aMessage sendTo: textEditor! !

!SearchBoxEditor class methodsFor: 'installing' stamp: 'NPM 4/2/2020 01:36:04'!
installOn: aTextModelMorph results: aPluggableListMorph model: aFinder 
	
	| newEditor textMorph |
	textMorph _ aTextModelMorph textMorph.
	
	newEditor _ self
		forEditor: textMorph editor
		results: aPluggableListMorph
		model: aFinder.
	
	textMorph
		instVarNamed: #editor
		put: newEditor.
	! !

!SearchBoxEditor class methodsFor: 'instance creation' stamp: 'NPM 4/2/2020 01:36:04'!
forEditor: aTextEditor results: aPluggableListMorph model: aFinder 
	
	^ self
		new
		initializeFor: aTextEditor
		results: aPluggableListMorph
		model: aFinder! !
