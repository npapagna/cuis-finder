'From Cuis 6.0 [latest update: #6068] on 2 December 2023 at 12:52:46 am'!
'Description Fixes the way system categories are browsed in PackagesCatalog.

Uses setSelectedSystemCategory: to change the new browser''s selected system category instead of using #systemCategoryListIndex: (deprecated).'!
!provides: 'Tools-Finder' 1 26!
!requires: 'Cuis-Base' 50 4528 nil!
SystemOrganization addCategory: 'Tools-Finder-Model'!
SystemOrganization addCategory: 'Tools-Finder-UI'!
SystemOrganization addCategory: 'Tools-Finder-UI-Model'!
SystemOrganization addCategory: 'Tools-Finder-NGram'!
SystemOrganization addCategory: 'Tools-Finder-Indexing'!


!classDefinition: #FinderWindow category: 'Tools-Finder-UI'!
SystemWindow subclass: #FinderWindow
	instanceVariableNames: 'toolbar searchBar results'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI'!
!classDefinition: 'FinderWindow class' category: 'Tools-Finder-UI'!
FinderWindow class
	instanceVariableNames: ''!

!classDefinition: #SearchBar category: 'Tools-Finder-UI'!
BoxedMorph subclass: #SearchBar
	instanceVariableNames: 'layoutMorph searchBox changeHandler keyPressedHandler dateAndTimeOfLastKeyStroke timeToWaitBeforeNotifyingChanges'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI'!
!classDefinition: 'SearchBar class' category: 'Tools-Finder-UI'!
SearchBar class
	instanceVariableNames: ''!

!classDefinition: #NGramTokenizerTest category: 'Tools-Finder-NGram'!
TestCase subclass: #NGramTokenizerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-NGram'!
!classDefinition: 'NGramTokenizerTest class' category: 'Tools-Finder-NGram'!
NGramTokenizerTest class
	instanceVariableNames: ''!

!classDefinition: #InvertedIndexTest category: 'Tools-Finder-Indexing'!
TestCase subclass: #InvertedIndexTest
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Indexing'!
!classDefinition: 'InvertedIndexTest class' category: 'Tools-Finder-Indexing'!
InvertedIndexTest class
	instanceVariableNames: ''!

!classDefinition: #NGramIndexTest category: 'Tools-Finder-Indexing'!
TestCase subclass: #NGramIndexTest
	instanceVariableNames: 'trigramIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Indexing'!
!classDefinition: 'NGramIndexTest class' category: 'Tools-Finder-Indexing'!
NGramIndexTest class
	instanceVariableNames: ''!

!classDefinition: #SourceCodeIndexTest category: 'Tools-Finder-Indexing'!
TestCase subclass: #SourceCodeIndexTest
	instanceVariableNames: 'sourceCodeIndex m1 m2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Indexing'!
!classDefinition: 'SourceCodeIndexTest class' category: 'Tools-Finder-Indexing'!
SourceCodeIndexTest class
	instanceVariableNames: ''!

!classDefinition: #Catalog category: 'Tools-Finder-Model'!
Object subclass: #Catalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'Catalog class' category: 'Tools-Finder-Model'!
Catalog class
	instanceVariableNames: ''!

!classDefinition: #ClassNamesCatalog category: 'Tools-Finder-Model'!
Catalog subclass: #ClassNamesCatalog
	instanceVariableNames: 'results selectedResultIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ClassNamesCatalog class' category: 'Tools-Finder-Model'!
ClassNamesCatalog class
	instanceVariableNames: ''!

!classDefinition: #CompositeCatalog category: 'Tools-Finder-Model'!
Catalog subclass: #CompositeCatalog
	instanceVariableNames: 'catalogs'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'CompositeCatalog class' category: 'Tools-Finder-Model'!
CompositeCatalog class
	instanceVariableNames: ''!

!classDefinition: #ImplementedSelectorsCatalog category: 'Tools-Finder-Model'!
Catalog subclass: #ImplementedSelectorsCatalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ImplementedSelectorsCatalog class' category: 'Tools-Finder-Model'!
ImplementedSelectorsCatalog class
	instanceVariableNames: ''!

!classDefinition: #ImplementorsCatalog category: 'Tools-Finder-Model'!
Catalog subclass: #ImplementorsCatalog
	instanceVariableNames: 'resultsSorter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ImplementorsCatalog class' category: 'Tools-Finder-Model'!
ImplementorsCatalog class
	instanceVariableNames: ''!

!classDefinition: #PackagesCatalog category: 'Tools-Finder-Model'!
Catalog subclass: #PackagesCatalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'PackagesCatalog class' category: 'Tools-Finder-Model'!
PackagesCatalog class
	instanceVariableNames: ''!

!classDefinition: #SendersCatalog category: 'Tools-Finder-Model'!
Catalog subclass: #SendersCatalog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SendersCatalog class' category: 'Tools-Finder-Model'!
SendersCatalog class
	instanceVariableNames: ''!

!classDefinition: #SourceCodeCatalog category: 'Tools-Finder-Model'!
Catalog subclass: #SourceCodeCatalog
	instanceVariableNames: 'resultsSorter lastQuery'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SourceCodeCatalog class' category: 'Tools-Finder-Model'!
SourceCodeCatalog class
	instanceVariableNames: 'index'!

!classDefinition: #ToolsCatalog category: 'Tools-Finder-Model'!
Catalog subclass: #ToolsCatalog
	instanceVariableNames: 'tools implementorsCatalog'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ToolsCatalog class' category: 'Tools-Finder-Model'!
ToolsCatalog class
	instanceVariableNames: ''!

!classDefinition: #CompositeCatalogResult category: 'Tools-Finder-Model'!
Object subclass: #CompositeCatalogResult
	instanceVariableNames: 'catalog result'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'CompositeCatalogResult class' category: 'Tools-Finder-Model'!
CompositeCatalogResult class
	instanceVariableNames: ''!

!classDefinition: #Finder category: 'Tools-Finder-Model'!
Object subclass: #Finder
	instanceVariableNames: 'results selectedResultIndex selectedCatalog catalogs currentQuery changeSelectedCatalogSelectorPrefix isSelectedCatalogSelectorPrefix selectedCatalogChangeEvent browseSelectedResultEvent closeEvent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'Finder class' category: 'Tools-Finder-Model'!
Finder class
	instanceVariableNames: ''!

!classDefinition: #ResultsSorter category: 'Tools-Finder-Model'!
Object subclass: #ResultsSorter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'ResultsSorter class' category: 'Tools-Finder-Model'!
ResultsSorter class
	instanceVariableNames: ''!

!classDefinition: #AlphabeticalResultsSorter category: 'Tools-Finder-Model'!
ResultsSorter subclass: #AlphabeticalResultsSorter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'AlphabeticalResultsSorter class' category: 'Tools-Finder-Model'!
AlphabeticalResultsSorter class
	instanceVariableNames: ''!

!classDefinition: #SelectorSizeResultsSorter category: 'Tools-Finder-Model'!
ResultsSorter subclass: #SelectorSizeResultsSorter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SelectorSizeResultsSorter class' category: 'Tools-Finder-Model'!
SelectorSizeResultsSorter class
	instanceVariableNames: ''!

!classDefinition: #SequentialResultsSorter category: 'Tools-Finder-Model'!
ResultsSorter subclass: #SequentialResultsSorter
	instanceVariableNames: 'renameMe1 resultsSorters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SequentialResultsSorter class' category: 'Tools-Finder-Model'!
SequentialResultsSorter class
	instanceVariableNames: ''!

!classDefinition: #SizeResultsSorter category: 'Tools-Finder-Model'!
ResultsSorter subclass: #SizeResultsSorter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SizeResultsSorter class' category: 'Tools-Finder-Model'!
SizeResultsSorter class
	instanceVariableNames: ''!

!classDefinition: #SubstringMatcher category: 'Tools-Finder-Model'!
Object subclass: #SubstringMatcher
	instanceVariableNames: 'collection substring resultsSorter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Model'!
!classDefinition: 'SubstringMatcher class' category: 'Tools-Finder-Model'!
SubstringMatcher class
	instanceVariableNames: ''!

!classDefinition: #CatalogButton category: 'Tools-Finder-UI-Model'!
Object subclass: #CatalogButton
	instanceVariableNames: 'catalog model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI-Model'!
!classDefinition: 'CatalogButton class' category: 'Tools-Finder-UI-Model'!
CatalogButton class
	instanceVariableNames: ''!

!classDefinition: #SearchBoxEditor category: 'Tools-Finder-UI-Model'!
Object subclass: #SearchBoxEditor
	instanceVariableNames: 'textEditor model keyStrokeHandler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-UI-Model'!
!classDefinition: 'SearchBoxEditor class' category: 'Tools-Finder-UI-Model'!
SearchBoxEditor class
	instanceVariableNames: ''!

!classDefinition: #NGramTokenizer category: 'Tools-Finder-NGram'!
Object subclass: #NGramTokenizer
	instanceVariableNames: 'nGramSize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-NGram'!
!classDefinition: 'NGramTokenizer class' category: 'Tools-Finder-NGram'!
NGramTokenizer class
	instanceVariableNames: ''!

!classDefinition: #InvertedIndex category: 'Tools-Finder-Indexing'!
Object subclass: #InvertedIndex
	instanceVariableNames: 'documentsByTerms documentsCollectionCreationBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Indexing'!
!classDefinition: 'InvertedIndex class' category: 'Tools-Finder-Indexing'!
InvertedIndex class
	instanceVariableNames: ''!

!classDefinition: #NGramIndex category: 'Tools-Finder-Indexing'!
Object subclass: #NGramIndex
	instanceVariableNames: 'nGramTokenizer invertedIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Indexing'!
!classDefinition: 'NGramIndex class' category: 'Tools-Finder-Indexing'!
NGramIndex class
	instanceVariableNames: ''!

!classDefinition: #SourceCodeIndex category: 'Tools-Finder-Indexing'!
Object subclass: #SourceCodeIndex
	instanceVariableNames: 'tokenizer index sourceCodeCache trigramIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tools-Finder-Indexing'!
!classDefinition: 'SourceCodeIndex class' category: 'Tools-Finder-Indexing'!
SourceCodeIndex class
	instanceVariableNames: 'trigramIndex'!


!SearchBar commentStamp: 'NPM 5/9/2020 13:51:51' prior: 0!
I am responsible for capturing the query to be performed.

Performance
=========

To avoid notifying changes every time a key is pressed, I keep track of the date and time of the last keystroke (see #processKeyStroke).
I use that information in my #stepAt: method to check whether I should notify #query has changed or not, using my #timeToWaitBeforeNotifyingChanges instance variable.

Hacks
====
To implement shortcuts, I use SearchBoxEditor (see #initializeSearchBoxEditor and comments in SearchBoxEditor class).


!

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

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 00:30:30'!
addToolbarButtonFor: catalog

	^ toolbar addMorph: (self toolbarButtonFor: catalog )! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 5/9/2020 13:51:01'!
buildLayout

	^ self layoutMorph
		beColumn
		addMorph: toolbar fixedHeight: self defaultButtonPaneHeight;
		addMorph: searchBar fixedHeight: self defaultButtonPaneHeight;
		addMorphUseAll: results! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 5/9/2020 13:50:45'!
buildMorphicWindow
	
	self buildToolbar.
	self buildSearchBar.
	self buildResults.
	self buildLayout.! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 5/7/2022 11:26:55'!
buildResults

	results := (PluggableListMorph
		model: model
		listGetter: #results
		indexGetter: #selectedResultIndex
		indexSetter: #selectedResultIndex:)
		autoDeselect: false;
		setProperty: #click:localPosition:
		toValue: [ :aMouseEvent :localEventPosition | self browseResultAt: localEventPosition ];
		yourself! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 5/9/2020 13:51:01'!
buildSearchBar
	
	searchBar := SearchBar
		onChanged: [ :query | model search: query ]
		onKeyPressed: [ :event | self processKeyStroke: event ]
		notifyingChangesAfter: 250 milliSeconds
	
	
	
	
	! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 00:30:12'!
buildToolbar
	
	toolbar := LayoutMorph newRow.
	
	self buildToolbarButtonsForCatalogs.! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 00:30:32'!
buildToolbarButtonsForCatalogs

	^ model catalogsDo: [ :catalog | self addToolbarButtonFor: catalog ]! !

!FinderWindow methodsFor: 'GUI building' stamp: 'NPM 4/2/2020 00:48:23'!
toolbarButtonFor: aCatalog

	^ PluggableButtonMorph
		model: (CatalogButton for: aCatalog model: model)
		stateGetter: #isSelected
		action: #value
		label: aCatalog name! !

!FinderWindow methodsFor: 'top window' stamp: 'NPM 5/9/2020 13:51:01'!
submorphToFocusKeyboard

	^ searchBar searchField! !

!FinderWindow methodsFor: 'events-old protocol' stamp: 'NPM 4/20/2020 17:06:01'!
update: aSymbol

	model
		isBrowseSelectedResultEvent: aSymbol
		ifTrue:  [ ^ self closeBoxHit ].
		
	model
		isCloseEvent: aSymbol
		ifTrue:  [ ^ self closeBoxHit ].! !

!FinderWindow methodsFor: 'shortcuts' stamp: 'NPM 5/3/2020 20:57:03'!
forwardToResults: aKeyboardEvent

	^ (results arrowKey: aKeyboardEvent)
		isNil not
! !

!FinderWindow methodsFor: 'shortcuts' stamp: 'NPM 5/3/2020 20:46:46'!
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

!FinderWindow methodsFor: 'shortcuts' stamp: 'NPM 5/3/2020 20:47:36'!
processEscKey: aKeyboardEvent

	(aKeyboardEvent isEsc)
		ifTrue: [ model close ].
		
	^ aKeyboardEvent isEsc! !

!FinderWindow methodsFor: 'shortcuts' stamp: 'NPM 5/3/2020 20:49:02'!
processKeyStroke: aKeyboardEvent 
	
	(self processTab: aKeyboardEvent)
		ifTrue: [ ^ true ].
	
	(self processArrowUpOrDown: aKeyboardEvent)
		ifTrue: [ ^ true ].
		
	(self processReturnKey: aKeyboardEvent)
		ifTrue: [ ^ true ].
		
	(self processEscKey: aKeyboardEvent)
		ifTrue: [ ^ true ].

	(self forwardToResults: aKeyboardEvent)
		ifTrue: [ ^ true ].
		
	^ false! !

!FinderWindow methodsFor: 'shortcuts' stamp: 'HAW 6/30/2020 09:31:42'!
processReturnKey: aKeyboardEvent

	(aKeyboardEvent isReturnKey)
		ifTrue: [ 
			searchBar notifyQueryChanged.
			model browseSelectedResult ].
		
	^ aKeyboardEvent isReturnKey! !

!FinderWindow methodsFor: 'shortcuts' stamp: 'NPM 5/3/2020 20:46:15'!
processTab: aKeyboardEvent 
	
	aKeyboardEvent isTab
		ifTrue: [ 
			aKeyboardEvent shiftPressed
				ifTrue: [ model selectPreviousCatalog ]
				ifFalse: [ model selectNextCatalog ]].
	
	^ aKeyboardEvent isTab! !

!FinderWindow methodsFor: 'as yet unclassified' stamp: 'NPM 4/20/2020 18:20:33'!
browseResultAt: aPosition 
	
	model
		selectedResultIndex: (results rowAtLocation: aPosition);
		browseSelectedResult
			
			! !

!FinderWindow class methodsFor: 'class initialization' stamp: 'NPM 4/26/2020 17:56:36'!
initialize

	super initialize.
	self configureAsClassFinder.! !

!FinderWindow class methodsFor: 'instance creation' stamp: 'NPM 4/22/2020 19:33:33'!
open
	
	^ self
		open: Finder withDefaultCatalogs
		label: 'Finder'! !

!FinderWindow class methodsFor: 'preferences' stamp: 'NPM 3/12/2023 23:21:37'!
configureAsClassFinder
	
	Preferences at: #classFinder put: [ self open ]! !

!SearchBar methodsFor: 'key stroke handling' stamp: 'HAW 6/30/2020 09:31:20'!
notifyQueryChanged

	self stopStepping.
	^ changeHandler value: self query! !

!SearchBar methodsFor: 'key stroke handling' stamp: 'NPM 5/9/2020 13:23:26'!
processKeyStroke
	
	dateAndTimeOfLastKeyStroke  := DateAndTime now.
	
	self startStepping! !

!SearchBar methodsFor: 'key stroke handling' stamp: 'NPM 5/7/2022 11:23:49'!
registerKeyStrokeHandler

	^ searchBox innerTextMorph
		setProperty: #'keyStroke:'
		toValue: [ :event | self processKeyStroke ]! !

!SearchBar methodsFor: 'key stroke handling' stamp: 'NPM 5/7/2022 11:30:50'!
unregisterKeyStrokeHandler

	searchBox innerTextMorph
		removeProperty: #'keyStroke:'! !

!SearchBar methodsFor: 'initialization' stamp: 'NPM 5/9/2020 13:16:37'!
initializeHandlingChangesWith: aChangeHandler handlingKeysPressedWith: aKeyPressedHandler notifyingChangesAfter: anAmountOfTime  
	
	changeHandler := aChangeHandler.
	keyPressedHandler := aKeyPressedHandler.
	timeToWaitBeforeNotifyingChanges := anAmountOfTime.
	
	self initializeLayout.
	self initializeSearchBox.
	self initializeSearchBoxEditor.
	self registerKeyStrokeHandler.! !

!SearchBar methodsFor: 'initialization' stamp: 'NPM 5/3/2020 20:24:51'!
initializeLayout

	layoutMorph := LayoutMorph newColumn.
	
	self addMorph: layoutMorph.! !

!SearchBar methodsFor: 'initialization' stamp: 'NPM 5/3/2020 19:45:38'!
initializeSearchBox

	searchBox := (TextModelMorph withText: '').
	searchBox askBeforeDiscardingEdits: false.
	
	layoutMorph addMorphUseAll: searchBox.! !

!SearchBar methodsFor: 'initialization' stamp: 'NPM 5/3/2020 21:02:26'!
initializeSearchBoxEditor
	
	^ SearchBoxEditor
		installOn: searchBox
		handlingKeyStrokesWith: keyPressedHandler
		! !

!SearchBar methodsFor: 'accessing' stamp: 'NPM 5/3/2020 20:22:39'!
query
	
	^ searchBox text asString! !

!SearchBar methodsFor: 'accessing' stamp: 'NPM 5/7/2022 11:27:38'!
searchField
	
	^ searchBox innerTextMorph! !

!SearchBar methodsFor: 'accessing' stamp: 'NPM 5/9/2020 13:11:44'!
timeSinceLastKeyStroke

	^ DateAndTime now - dateAndTimeOfLastKeyStroke! !

!SearchBar methodsFor: 'submorphs-add/remove' stamp: 'NPM 5/9/2020 13:04:54'!
delete

	self unregisterKeyStrokeHandler.
	
	^ super delete.! !

!SearchBar methodsFor: 'layout' stamp: 'NPM 5/3/2020 20:25:01'!
layoutSubmorphs
	
	layoutMorph
		morphPosition: 0@0
		extent: self morphExtent.
	
	layoutNeeded _ false! !

!SearchBar methodsFor: 'stepping' stamp: 'HAW 6/30/2020 09:31:12'!
stepAt: millisecondSinceLast

	self shouldNotifyQueryChanged
		ifTrue: [ self notifyQueryChanged ]
	
	

	
	! !

!SearchBar methodsFor: 'testing' stamp: 'NPM 5/9/2020 13:17:30'!
shouldNotifyQueryChanged

	^ self timeSinceLastKeyStroke >= timeToWaitBeforeNotifyingChanges! !

!SearchBar methodsFor: 'testing' stamp: 'NPM 5/9/2020 13:21:53'!
stepTime

	^ timeToWaitBeforeNotifyingChanges totalMilliseconds! !

!SearchBar class methodsFor: 'instance creation' stamp: 'NPM 5/9/2020 13:31:18'!
onChanged: aChangeHandler onKeyPressed: aKeyPressedHandler notifyingChangesAfter: anAmountOfTime  
	
	^ self
		new
			initializeHandlingChangesWith: aChangeHandler
			handlingKeysPressedWith: aKeyPressedHandler
			notifyingChangesAfter: anAmountOfTime! !

!NGramTokenizerTest methodsFor: 'assertions' stamp: 'NPM 6/19/2023 15:22:52'!
assertNGramsOfSize: aSize of: aString are: expectedNGrams

	| nGrams tokenizer |
	tokenizer := NGramTokenizer nGramSize: aSize.
	
	nGrams := tokenizer value: aString.
	
	self
		assert: expectedNGrams asArray sort
		equals: nGrams asArray sort! !

!NGramTokenizerTest methodsFor: 'tests' stamp: 'NPM 7/14/2023 00:15:57'!
test000_DoesNotReturnNGramsWhenTheStringIsEmpty

	self
		assertNGramsOfSize: 2
		of: ''
		are: {}! !

!NGramTokenizerTest methodsFor: 'tests' stamp: 'NPM 7/14/2023 00:16:44'!
test001_DoesNotReturnNGramsWhenTheLengthOfTheStringIsLessThanTheNGramSize

	self
		assertNGramsOfSize: 2
		of: 'a'
		are: {}! !

!NGramTokenizerTest methodsFor: 'tests' stamp: 'NPM 7/14/2023 00:17:11'!
test002_ReturnsAllNGramsWhenTheLengthOfTheStringIsEqualToTheNGramSize

	self
		assertNGramsOfSize: 2
		of: 'abc'
		are: {#ab. #bc}! !

!NGramTokenizerTest methodsFor: 'tests' stamp: 'NPM 7/14/2023 00:18:02'!
test003_ReturnsAllNGramsWhenTheLengthOfTheStringIsGreaterThanTheNGramSize

	self
		assertNGramsOfSize: 2
		of: 'abcd'
		are: {#ab. #bc. #cd}! !

!NGramTokenizerTest methodsFor: 'tests' stamp: 'NPM 7/14/2023 00:18:24'!
test004_DoesNotRepeatNGrams

	self
		assertNGramsOfSize: 2
		of: 'aaa'
		are: {#aa}! !

!InvertedIndexTest methodsFor: 'assertions' stamp: 'NPM 11/30/2023 10:28:12'!
assert: aTerm isFoundIn: aDocument 
	
	self assertAll: {aTerm} areFoundInAll: {aDocument}.! !

!InvertedIndexTest methodsFor: 'assertions' stamp: 'NPM 11/30/2023 10:26:40'!
assertAll: terms areFoundIn: aDocument 
	
	self assertAll: terms areFoundInAll: {aDocument}! !

!InvertedIndexTest methodsFor: 'assertions' stamp: 'NPM 11/30/2023 11:01:20'!
assertAll: terms areFoundInAll: documents 
	
	self
		assert: (index documentsIncludingAll: terms)
		equals: documents asSet! !

!InvertedIndexTest methodsFor: 'assertions' stamp: 'NPM 11/30/2023 10:42:12'!
denyAreFound: terms 
	
	self assertAll: terms areFoundInAll: {}! !

!InvertedIndexTest methodsFor: 'assertions' stamp: 'NPM 11/30/2023 10:44:58'!
denyIsFound: aTerm

	self denyAreFound: {aTerm}! !

!InvertedIndexTest methodsFor: 'exercise' stamp: 'NPM 11/30/2023 10:58:35'!
add: aDocument including: aTerm 

	self add: aDocument includingAll: {aTerm}.! !

!InvertedIndexTest methodsFor: 'exercise' stamp: 'NPM 11/30/2023 10:58:23'!
add: aDocument includingAll: terms

	index add: aDocument includingAll: terms! !

!InvertedIndexTest methodsFor: 'exercise' stamp: 'NPM 11/30/2023 10:38:57'!
remove: aDocument  
	
	index remove: aDocument
		! !

!InvertedIndexTest methodsFor: 'setUp/tearDown' stamp: 'NPM 12/1/2023 00:45:47'!
setUp

	super setUp.
	
	index := InvertedIndex
		storingEntriesIn: Dictionary new
		creatingDocumentCollectionsWith: [ Set new ].! !

!InvertedIndexTest methodsFor: 'tests' stamp: 'NPM 11/30/2023 10:22:28'!
test001_FindsASingleDocumentContainingASingleTerm

	self add: #fruits including: #apple.
	
	self assert: #apple isFoundIn: #fruits.! !

!InvertedIndexTest methodsFor: 'tests' stamp: 'NPM 11/30/2023 10:24:47'!
test002_FindsASingleDocumentContainingMultipleTerms

	self add: #fruits includingAll: {#apple. #orange}.
	
	self assertAll: {#apple. #orange} areFoundIn: #fruits.! !

!InvertedIndexTest methodsFor: 'tests' stamp: 'NPM 11/30/2023 10:41:53'!
test003_DoesNotFindDocumentsForTermsThatHaveNotBeenIndexed

	self denyIsFound: #apple! !

!InvertedIndexTest methodsFor: 'tests' stamp: 'NPM 11/30/2023 10:30:41'!
test004_FindsOnlyTheDocumentsContainingTheSearchedTerms

	self add: #fruits including: #apple.
	self add: #drinks including: #water.
	
	self assert: #apple isFoundIn: #fruits.! !

!InvertedIndexTest methodsFor: 'tests' stamp: 'NPM 11/30/2023 10:33:36'!
test005_FindsTheDocumentsContainingAllSearchedTerms

	self add: #fruits includingAll: {#apple. #cherry}.
	self add: #redFruits includingAll: {#apple. #cherry}.
	self add: #bigFruits includingAll: {#apple.}.
	self add: #smallFruits includingAll: {#cherry}.
	
	self assertAll: {#apple. #cherry} areFoundInAll: {#fruits. #redFruits}.! !

!InvertedIndexTest methodsFor: 'tests' stamp: 'NPM 11/30/2023 10:42:12'!
test006_DoesNotFindDocumentsContainingAnyOfTheSearchedTerms

	self add: #bigFruits includingAll: {#apple}.
	self add: #smallFruits includingAll: {#cherry}.
	
	self denyAreFound: {#apple. #cherry}.! !

!InvertedIndexTest methodsFor: 'tests' stamp: 'NPM 11/30/2023 10:41:53'!
test007_RemovesADocumentAndItsTermsFromTheIndex
	
	self add: #fruits including: #apple.
	
	self remove: #fruits.
	
	self denyIsFound: #apple.! !

!InvertedIndexTest methodsFor: 'tests' stamp: 'NPM 11/30/2023 10:40:47'!
test008_DoesNotRemoveTermsIncludedInManyDocumentsWhenRemovingOne
	
	self add: #fruits including: #apple.
	self add: #redFruits including: #apple.
	
	self remove: #fruits.
	
	self assert: #apple isFoundIn: #redFruits.! !

!NGramIndexTest methodsFor: 'assertions' stamp: 'NPM 12/1/2023 00:31:43'!
assert: aQuery isFoundIn: aDocument

	self
		assert: (trigramIndex locationsMatching: aQuery)
		equals: {aDocument} asSet! !

!NGramIndexTest methodsFor: 'assertions' stamp: 'NPM 12/1/2023 00:56:06'!
denyIsFound: aQuery

	self
		assert: (trigramIndex locationsMatching: aQuery)
		equals: {} asSet! !

!NGramIndexTest methodsFor: 'excercise' stamp: 'NPM 12/1/2023 00:28:31'!
add: aDocument at: aLocation 
	
	trigramIndex add: aDocument at: aLocation! !

!NGramIndexTest methodsFor: 'excercise' stamp: 'NPM 12/1/2023 01:02:22'!
remove: aLocation 
	
	trigramIndex removeDocumentsAt: aLocation! !

!NGramIndexTest methodsFor: 'setUp/tearDown' stamp: 'NPM 12/1/2023 00:56:22'!
setUp

	super setUp.
	
	trigramIndex := NGramIndex
		ofSize: 3
		storingEntriesIn: Dictionary new
		creatingDocumentCollectionsWith: [ Set new ].! !

!NGramIndexTest methodsFor: 'tests' stamp: 'NPM 12/1/2023 00:49:32'!
test001_FindsADocumentContainingASingleNGram
	
	self add: 'car' at: 'car.txt'.
	
	self assert: 'car' isFoundIn: 'car.txt'.! !

!NGramIndexTest methodsFor: 'tests' stamp: 'NPM 12/1/2023 00:56:06'!
test002_DoesNotFindDocumentsWhenTheQuerySizeIsLessThanTheNGramSize
	
	self add: '' at: 'car.txt'.
	self add: 'c' at: 'car1.txt'.
	self add: 'ca' at: 'car1.txt'.
		
	self denyIsFound: ''.
	self denyIsFound: 'c'.
	self denyIsFound: 'd'.! !

!NGramIndexTest methodsFor: 'tests' stamp: 'NPM 12/1/2023 00:56:06'!
test003_DoesNotFindDocumentsWhenItIsEmpty
	
	self denyIsFound: 'car'.! !

!NGramIndexTest methodsFor: 'tests' stamp: 'NPM 12/1/2023 00:50:37'!
test004_FindsDocumentsContainingAllNGramsInTheQuery
	
	self add: 'truck' at: 'trucks.txt'.
	
	self assert: 'tru' isFoundIn: 'trucks.txt'.
	self assert: 'ruc' isFoundIn: 'trucks.txt'.
	self assert: 'uck' isFoundIn: 'trucks.txt'.! !

!NGramIndexTest methodsFor: 'tests' stamp: 'NPM 12/1/2023 00:52:06'!
test005_FindsDocumentsWhenTheQuerySizeIsGreaterThanTheNGramSize
	
	self add: 'truck' at: 'trucks.txt'.
	
	self assert: 'truc' isFoundIn: 'trucks.txt'.
	self assert: 'ruck' isFoundIn: 'trucks.txt'.! !

!NGramIndexTest methodsFor: 'tests' stamp: 'NPM 12/1/2023 00:53:00'!
test006_FindsDocumentsIgnoringTheQueryCase
	
	self add: 'car' at: 'car.txt'.
	
	self assert: 'CAR' isFoundIn: 'car.txt'.! !

!NGramIndexTest methodsFor: 'tests' stamp: 'NPM 12/1/2023 00:53:42'!
test007_FindsDocumentsIgnoringTheDocumentsCase
	
	self add: 'CAR' at: 'car.txt'.
	
	self assert: 'car' isFoundIn: 'car.txt'.! !

!NGramIndexTest methodsFor: 'tests' stamp: 'NPM 12/1/2023 00:56:06'!
test008_DoesNotFindDocumentsWhenThereAreNoMatchesForAtLeastOneNGramFromTheQuery
	
	self add: 'truck' at: 'trucks.txt'.
	
	self denyIsFound: 'trux'.! !

!NGramIndexTest methodsFor: 'tests' stamp: 'NPM 12/1/2023 01:01:42'!
test009_DoesNotFindDocumentsAtALocationWhenItIsRemoved
	
	self add: 'truck' at: 'trucks.txt'.
	
	self remove: 'trucks.txt'.
	
	self denyIsFound: 'truck'.! !

!SourceCodeIndexTest methodsFor: 'assertions' stamp: 'NPM 6/20/2023 12:28:33'!
assertSearchingFor: aQuery caseSensitive: aBoolean returns: expectedCompiledMethods 
	
	| actualCompiledMethods |
	actualCompiledMethods := sourceCodeIndex searchFor: aQuery caseSensitive: aBoolean.
	
	self assert: (expectedCompiledMethods includesAllOf: actualCompiledMethods).
	self assert: expectedCompiledMethods size equals: actualCompiledMethods size.! !

!SourceCodeIndexTest methodsFor: 'excercise' stamp: 'NPM 7/1/2023 16:46:58'!
addToIndex: aCompiledMethod 

	sourceCodeIndex add: aCompiledMethod.! !

!SourceCodeIndexTest methodsFor: 'excercise' stamp: 'NPM 12/1/2023 01:03:57'!
removeFromIndex: aCompiledMethod
	
	sourceCodeIndex remove: aCompiledMethod! !

!SourceCodeIndexTest methodsFor: 'setUp/tearDown' stamp: 'NPM 6/19/2023 15:44:47'!
setUp

	super setUp.

	sourceCodeIndex := SourceCodeIndex new.
	m1 := self class>>#m1.
	m2 := self class>>#m2.! !

!SourceCodeIndexTest methodsFor: 'tests' stamp: 'NPM 6/20/2023 12:05:19'!
test001_DoesNotReturnResulsWhenTheQueryIsLessThan3CharactersLong

	self
		assertSearchingFor: ''
		caseSensitive: true
		returns: {}.
	
	self
		assertSearchingFor: 'A'
		caseSensitive: true
		returns: {}.
	
	self
		assertSearchingFor: 'Ar'
		caseSensitive: true
		returns: {}! !

!SourceCodeIndexTest methodsFor: 'tests' stamp: 'NPM 7/1/2023 16:47:45'!
test002_MatchesTheQueryInTheMiddleOfWords
	
	self addToIndex: m1.

	self
		assertSearchingFor: 'rra'
		caseSensitive: true
		returns: {m1}.! !

!SourceCodeIndexTest methodsFor: 'tests' stamp: 'NPM 7/1/2023 16:47:49'!
test003_SearchesForResultsIgnoringTheLetterCase

	self addToIndex: m1.

	self
		assertSearchingFor: 'arr'
		caseSensitive: false
		returns: {m1}.! !

!SourceCodeIndexTest methodsFor: 'tests' stamp: 'NPM 7/1/2023 16:47:52'!
test004_DoesNotResultResultsTheQueryHasNoMatches
	
	self addToIndex: m1.

	self
		assertSearchingFor: 'foo'
		caseSensitive: true
		returns: {}.! !

!SourceCodeIndexTest methodsFor: 'tests' stamp: 'NPM 7/1/2023 16:47:55'!
test005_SupportsSearchQueriesLongerThan3Characters
	
	self addToIndex: m1.

	self
		assertSearchingFor: 'Arra'
		caseSensitive: true
		returns: {m1}.! !

!SourceCodeIndexTest methodsFor: 'tests' stamp: 'NPM 7/1/2023 16:46:58'!
test006_DoesNotReturnResultsWhenTheQueryIsNotContiguousInTheSourceCode
	
	self addToIndex: m2.

	self
		assertSearchingFor: 'abcd'
		caseSensitive: true
		returns: {}.! !

!SourceCodeIndexTest methodsFor: 'tests' stamp: 'NPM 7/1/2023 16:46:58'!
test007_IndexesMethodsWithSameSourceCodeKeepingTheirIdentity
	
	| m1Copy |
	m1Copy := m1 copy.
	self addToIndex: m1.
	self addToIndex: m1Copy.

	self
		assertSearchingFor: 'Arr'
		caseSensitive: true
		returns: {m1. m1Copy}.! !

!SourceCodeIndexTest methodsFor: 'tests' stamp: 'NPM 7/15/2023 16:00:28'!
test008_CachesTheSourceCodeOfCompiledMethodsWhenIdexingThem
	
	self addToIndex: m1.
	
	self removeFromIndex: m1.

	self
		assertSearchingFor: 'Arr'
		caseSensitive: true
		returns: {}.! !

!SourceCodeIndexTest methodsFor: 'tests' stamp: 'NPM 7/15/2023 16:00:10'!
test009_RemovesACompiledMethodFromTheIndex
	
	self addToIndex: m1.
	
	self removeFromIndex: m1.

	self
		assertSearchingFor: 'Arr'
		caseSensitive: true
		returns: {}.! !

!SourceCodeIndexTest methodsFor: 'tests' stamp: 'NPM 7/15/2023 16:00:05'!
test010_RemovesACompiledMethodSourceFromTheCache
	
	self addToIndex: m1.
	
	self removeFromIndex: m1.

	self
		assertSearchingFor: 'Arr'
		caseSensitive: true
		returns: {}.! !

!SourceCodeIndexTest methodsFor: 'tests objects' stamp: 'NPM 6/19/2023 15:30:11'!
m1

	Array! !

!SourceCodeIndexTest methodsFor: 'tests objects' stamp: 'NPM 6/20/2023 00:24:46'!
m2

	"abc"
	"bcd"! !

!Catalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 02:38:49'!
name

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

!Catalog class methodsFor: 'known instances' stamp: 'NPM 4/22/2020 19:31:34'!
classNames
	
	^ ClassNamesCatalog create! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 4/4/2020 02:01:12'!
composite: children 
	
	^ CompositeCatalog withAll: children ! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 4/22/2020 19:31:37'!
implementedSelectors
	
	^ ImplementedSelectorsCatalog create! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 4/22/2020 19:31:40'!
implementors
	
	^ ImplementorsCatalog create! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 4/22/2020 19:31:45'!
senders
	
	^ SendersCatalog create! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 5/19/2023 16:51:27'!
sourceCode
	
	^ SourceCodeCatalog new! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 4/22/2020 19:31:51'!
systemCategories
	
	^ PackagesCatalog create! !

!Catalog class methodsFor: 'known instances' stamp: 'NPM 4/22/2020 19:31:53'!
tools
	
	^ ToolsCatalog create! !

!Catalog class methodsFor: 'instance creation' stamp: 'NPM 4/4/2020 02:01:53'!
create
	
	^ self new! !

!ClassNamesCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 02:39:01'!
name
	
	^ 'Classes'! !

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

!CompositeCatalog methodsFor: 'accessing' stamp: 'NPM 4/1/2020 00:31:00'!
name
	
	^ 'All'! !

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

!ImplementedSelectorsCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 02:39:13'!
name
	
	^ 'Selectors'! !

!ImplementedSelectorsCatalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:30:48'!
processNonEmptySearchQuery: aQuery

	^ SubstringMatcher
		valueFiltering: Smalltalk allImplementedMessages
		with: aQuery! !

!ImplementedSelectorsCatalog methodsFor: 'browsing' stamp: 'NPM 4/2/2020 02:25:34'!
browse: aSelector

	Smalltalk browseAllImplementorsOf: aSelector! !

!ImplementorsCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 02:47:38'!
name
	
	^ 'Implementors'! !

!ImplementorsCatalog methodsFor: 'searching' stamp: 'NPM 5/24/2020 13:40:14'!
processNonEmptySearchQuery: aQuery

	| implementors |
	implementors _ OrderedCollection new.
	
	Smalltalk allBehaviorsDo: [ :class | 
		class selectors
			select: [ :selector | selector includesSubstring: aQuery caseSensitive: false ]
			thenDo: [ :selector | implementors add: (MethodReference class: class selector: selector) ] ].
		
	^ resultsSorter value: implementors! !

!ImplementorsCatalog methodsFor: 'browsing' stamp: 'NPM 4/2/2020 02:25:34'!
browse: aMethodReference 

	HierarchyBrowserWindow
		onClass: aMethodReference methodClass
		selector: aMethodReference selector! !

!ImplementorsCatalog methodsFor: 'initialization' stamp: 'NPM 5/24/2020 13:49:04'!
initialize

	super initialize.
	
	resultsSorter := ResultsSorter alphabetically, ResultsSorter bySelectorSize ! !

!PackagesCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 03:12:11'!
name
	
	^ 'System categories'! !

!PackagesCatalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:30:48'!
processNonEmptySearchQuery: aQuery 
	
	^ SubstringMatcher
		valueFiltering: SystemOrganization categories
		with: aQuery! !

!PackagesCatalog methodsFor: 'browsing' stamp: 'NPM 5/7/2022 11:48:02'!
browse: aSystemCategoryName 
	
	| newBrowser |
	
	newBrowser _ Browser new.
	newBrowser setSelectedSystemCategory: aSystemCategoryName.

	BrowserWindow open: newBrowser label: newBrowser defaultBrowserTitle! !

!SendersCatalog methodsFor: 'accessing' stamp: 'NPM 3/28/2020 02:54:18'!
name
	
	^ 'Senders'! !

!SendersCatalog methodsFor: 'searching' stamp: 'NPM 4/2/2020 02:30:48'!
processNonEmptySearchQuery: aQuery 
	
	^ (Smalltalk allCallsOn: aQuery asString asSymbol) asArray sort! !

!SendersCatalog methodsFor: 'browsing' stamp: 'NPM 4/2/2020 02:25:34'!
browse: aMethodReference 
	
	HierarchyBrowserWindow
		onClass: aMethodReference methodClass
		selector: aMethodReference selector! !

!SourceCodeCatalog methodsFor: 'accessing' stamp: 'NPM 5/19/2023 16:51:50'!
name
	
	^ 'Source code'! !

!SourceCodeCatalog methodsFor: 'browsing' stamp: 'NPM 7/14/2023 00:14:49'!
browse: aMethodReference 

	Smalltalk
		browseMessageList: {aMethodReference}
		name:  'Methods containing ' , lastQuery
		autoHighlight: lastQuery
		allOccurrences: true
			! !

!SourceCodeCatalog methodsFor: 'initialization' stamp: 'NPM 5/19/2023 17:01:44'!
initialize

	super initialize.
	
	resultsSorter := ResultsSorter alphabetically, ResultsSorter bySelectorSize ! !

!SourceCodeCatalog methodsFor: 'searching' stamp: 'NPM 7/14/2023 00:22:47'!
methodsWithSourceCodeIncluding: aQuery

	^ (self class index searchFor: aQuery caseSensitive: false)
		asArray
		collect: [:compiledMethod | compiledMethod asMethodReference ]! !

!SourceCodeCatalog methodsFor: 'searching' stamp: 'NPM 7/14/2023 00:22:30'!
processNonEmptySearchQuery: aQuery

	| sortedResults results |
	
	results := self methodsWithSourceCodeIncluding: aQuery.
	sortedResults := resultsSorter value:results.
	
	lastQuery := aQuery.
	
	^ sortedResults.! !

!SourceCodeCatalog class methodsFor: 'indexing' stamp: 'NPM 7/14/2023 00:23:08'!
buildIndex

	| newIndex |
	newIndex := SourceCodeIndex new.
	
	CompiledMethod allInstances
		do: [ :compiledMethod | newIndex add: compiledMethod ]
		displayingProgress: 'Indexing source code...'.
		
	^ newIndex! !

!SourceCodeCatalog class methodsFor: 'indexing' stamp: 'NPM 11/9/2023 14:20:18'!
index

	index ifNil: [ self rebuildIndex ].
	
	^ index! !

!SourceCodeCatalog class methodsFor: 'indexing' stamp: 'NPM 11/9/2023 14:20:18'!
rebuildIndex

	^ index := self buildIndex! !

!ToolsCatalog methodsFor: 'accessing' stamp: 'NPM 3/31/2020 19:09:53'!
name
	
	^ 'Tools'! !

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

!Finder methodsFor: 'initialization' stamp: 'NPM 5/24/2020 13:27:54'!
initializeResults
	
	currentQuery := ''.
	results := OrderedCollection new.
	selectedResultIndex := 0.! !

!Finder methodsFor: 'initialization' stamp: 'NPM 5/24/2020 13:26:37'!
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

!Finder methodsFor: 'results' stamp: 'HAW 6/30/2020 09:32:42'!
browseSelectedResult
	
	| selected |
	
	selected := results at: selectedResultIndex ifAbsent: [^self].
	selectedCatalog browse: selected.
	
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

!Finder methodsFor: 'results' stamp: 'NPM 4/26/2020 22:20:18'!
selectPreviousResult

	results ifEmpty: [ ^ self ].
	
	selectedResultIndex = 1
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

!Finder class methodsFor: 'instance creation' stamp: 'NPM 7/1/2023 16:39:30'!
availableCatalogs

	| catalogs |
	catalogs := (OrderedCollection
		with: Catalog classNames
		with: Catalog implementedSelectors
		with: Catalog senders
		with: Catalog implementors
		with: Catalog systemCategories
		with: Catalog tools).
		
	catalogs add: Catalog sourceCode.
	
	^ catalogs
		! !

!Finder class methodsFor: 'instance creation' stamp: 'NPM 4/22/2020 19:35:35'!
defaultCatalogs
	
	| catalogs |
	catalogs := self availableCatalogs.
		
	catalogs addFirst: (Catalog composite: catalogs copy).
	
	^ catalogs! !

!Finder class methodsFor: 'instance creation' stamp: 'NPM 4/22/2020 19:33:33'!
withDefaultCatalogs
	
	^ self
		new
		initializeWithAll: self defaultCatalogs! !

!ResultsSorter methodsFor: 'evaluating' stamp: 'NPM 5/24/2020 14:02:25'!
value: results
	
	self subclassResponsibility! !

!ResultsSorter methodsFor: 'combining' stamp: 'NPM 5/24/2020 14:11:31'!
, other
	
	^ SequentialResultsSorter with: self with: other! !

!ResultsSorter class methodsFor: 'known instances' stamp: 'NPM 5/24/2020 13:40:30'!
alphabetically
	
	^ AlphabeticalResultsSorter new! !

!ResultsSorter class methodsFor: 'known instances' stamp: 'NPM 5/24/2020 14:09:38'!
bySelectorSize
	
	^ SelectorSizeResultsSorter new! !

!ResultsSorter class methodsFor: 'known instances' stamp: 'NPM 5/24/2020 14:09:28'!
bySize
	
	^ SizeResultsSorter new! !

!AlphabeticalResultsSorter methodsFor: 'evaluating' stamp: 'NPM 5/24/2020 13:46:23'!
value: results

	^ results sort: [ :result :otherResult | result <= otherResult ]! !

!SelectorSizeResultsSorter methodsFor: 'evaluating' stamp: 'NPM 5/24/2020 14:09:59'!
value: results

	^ results sort: [ :result :otherResult | result selector size <= otherResult selector size ]! !

!SequentialResultsSorter methodsFor: 'initialization' stamp: 'NPM 5/24/2020 14:03:38'!
initializeWithAll: aCollectionOfResultsSorters 
	
	resultsSorters := aCollectionOfResultsSorters.! !

!SequentialResultsSorter methodsFor: 'evaluating' stamp: 'NPM 5/24/2020 14:03:21'!
value: results
	
	^ resultsSorters
		inject: results
		into: [ :partiallySortedResults :resultsSorter | resultsSorter value: partiallySortedResults ]! !

!SequentialResultsSorter class methodsFor: 'instance creation' stamp: 'NPM 5/24/2020 13:43:10'!
with: firstResultsSorter with: secondResultsSorter 
	
	^ self
		new
		initializeWithAll: (Array with: firstResultsSorter with: secondResultsSorter)! !

!SizeResultsSorter methodsFor: 'evaluating' stamp: 'NPM 5/24/2020 14:08:43'!
value: results

	^ results sort: [ :result :otherResult | result size <= otherResult size ]! !

!SubstringMatcher methodsFor: 'filtering' stamp: 'NPM 4/2/2020 01:25:02'!
filterCollection

	^ collection select: [ :item | item includesSubstring: substring caseSensitive: false ]! !

!SubstringMatcher methodsFor: 'evaluating' stamp: 'NPM 5/24/2020 13:59:04'!
value

	^ resultsSorter value: (self filterCollection asOrderedCollection)! !

!SubstringMatcher methodsFor: 'initialization' stamp: 'NPM 5/24/2020 13:57:53'!
initializeFiltering: aCollection with: aSubstring 
	
	collection := aCollection.
	substring := aSubstring.
	resultsSorter := ResultsSorter alphabetically, ResultsSorter bySize.! !

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

!SearchBoxEditor methodsFor: 'event handling' stamp: 'NPM 1/25/2021 21:33:49'!
forwardToEditor: aKeyboardEvent

	textEditor processKeystrokeEvent: aKeyboardEvent! !

!SearchBoxEditor methodsFor: 'event handling' stamp: 'NPM 5/3/2020 20:52:59'!
handleKeyStroke: aKeyboardEvent

	^ keyStrokeHandler value: aKeyboardEvent
! !

!SearchBoxEditor methodsFor: 'event handling' stamp: 'NPM 1/25/2021 21:33:20'!
processKeystrokeEvent: aKeyboardEvent

	(self handleKeyStroke: aKeyboardEvent)
		ifTrue: [ ^ self ].
	
	self forwardToEditor: aKeyboardEvent! !

!SearchBoxEditor methodsFor: 'initialization' stamp: 'NPM 5/3/2020 20:53:48'!
initializeFor: aTextEditor handlingKeyStrokesWith: aKeyStrokeHandler 

	textEditor := aTextEditor.
	keyStrokeHandler := aKeyStrokeHandler.! !

!SearchBoxEditor methodsFor: 'error handling' stamp: 'NPM 4/2/2020 00:39:43'!
doesNotUnderstand: aMessage

	^ aMessage sendTo: textEditor! !

!SearchBoxEditor class methodsFor: 'installing' stamp: 'NPM 5/7/2022 11:23:39'!
installOn: aTextModelMorph handlingKeyStrokesWith: aKeyStrokeHandler  
	
	| newEditor textMorph |
	textMorph _ aTextModelMorph innerTextMorph.
	
	newEditor _ self
		forEditor: textMorph editor
		handlingKeyStrokesWith: aKeyStrokeHandler
		.
	
	textMorph
		instVarNamed: #editor
		put: newEditor.
	! !

!SearchBoxEditor class methodsFor: 'instance creation' stamp: 'NPM 5/3/2020 20:55:32'!
forEditor: aTextEditor handlingKeyStrokesWith: aKeyStrokeHandler  
	
	^ self
		new
		initializeFor: aTextEditor
		handlingKeyStrokesWith: aKeyStrokeHandler
		! !

!NGramTokenizer methodsFor: 'initialization' stamp: 'NPM 6/19/2023 15:23:37'!
initializeNGramSize: aQuantity 
	
	nGramSize := aQuantity.! !

!NGramTokenizer methodsFor: 'evaluating' stamp: 'NPM 9/14/2023 01:45:23'!
value: aString 
	
	| nGrams |
	"An IdentitySet is used to speed lookups because set elements are instances of Symbol"
	nGrams := IdentitySet new.
	
	(1 to: aString size - nGramSize + 1) do: [ :nGramIndex | 
		| nGram |
		nGram := aString copyFrom: nGramIndex to: nGramIndex + nGramSize -1.
		nGrams add: (nGram asLowercase asSymbol)
	].
	
	^ nGrams ! !

!NGramTokenizer class methodsFor: 'instance creation' stamp: 'NPM 6/19/2023 15:23:22'!
nGramSize: numberOfCharacters 
	
	^self
		new
		initializeNGramSize: numberOfCharacters ! !

!InvertedIndex methodsFor: 'indexing' stamp: 'NPM 12/1/2023 00:42:41'!
add: aDocument including: aTerm 
	
	| documentsIncludingTheTerm |
	
	documentsIncludingTheTerm := documentsByTerms
		at: aTerm
		ifAbsentPut: documentsCollectionCreationBlock.
	
	documentsIncludingTheTerm add: aDocument! !

!InvertedIndex methodsFor: 'indexing' stamp: 'NPM 11/30/2023 10:56:52'!
add: aDocument includingAll: terms 
	
	terms do: [ :term | self add: aDocument including: term ]! !

!InvertedIndex methodsFor: 'indexing' stamp: 'NPM 11/30/2023 10:39:03'!
remove: aDocument  
	
	documentsByTerms
		keysAndValuesRemove: [ :term :documents |
			documents remove: aDocument ifAbsent: [ "Do nothing. NPM" ].
			documents isEmpty ]! !

!InvertedIndex methodsFor: 'enumerating' stamp: 'NPM 12/1/2023 00:42:41'!
documentsIncluding: aTerm

	^ documentsByTerms
		at: aTerm
		ifAbsent: documentsCollectionCreationBlock! !

!InvertedIndex methodsFor: 'enumerating' stamp: 'NPM 12/1/2023 00:42:41'!
documentsIncludingAll: terms 

	^ terms
		collect: [ :term | self documentsIncluding: term ]
		andFold: [ :result :documentsIncludingATerm | result intersection: documentsIncludingATerm ]
		ifEmpty: documentsCollectionCreationBlock! !

!InvertedIndex methodsFor: 'initialization' stamp: 'NPM 12/1/2023 00:46:01'!
initializeStoringEntriesIn: aDictionary creatingDocumentCollectionsWith: aBlock

	documentsByTerms := aDictionary.
	documentsCollectionCreationBlock := aBlock.! !

!InvertedIndex class methodsFor: 'instance creation' stamp: 'NPM 12/1/2023 00:46:01'!
storingEntriesIn: aDictionary creatingDocumentCollectionsWith: aBlock

	^ self
		new
		initializeStoringEntriesIn: aDictionary
		creatingDocumentCollectionsWith: aBlock! !

!InvertedIndex class methodsFor: 'as yet unclassified' stamp: 'NPM 12/2/2023 00:23:13'!
empty
	
	^ self
		storingEntriesIn: Dictionary new
		creatingDocumentCollectionsWith: [ Set new ]! !

!NGramIndex methodsFor: 'enumerating' stamp: 'NPM 12/1/2023 00:39:57'!
locationsMatching: aQuery 
	
	^ invertedIndex documentsIncludingAll: (nGramTokenizer value: aQuery)! !

!NGramIndex methodsFor: 'indexing' stamp: 'NPM 12/1/2023 00:34:03'!
add: aDocument at: aLocation 
	
	invertedIndex
		add: aLocation
		includingAll: (nGramTokenizer value: aDocument)! !

!NGramIndex methodsFor: 'indexing' stamp: 'NPM 12/1/2023 01:03:15'!
removeDocumentsAt: aLocation 
	
	invertedIndex remove: aLocation! !

!NGramIndex methodsFor: 'initialization' stamp: 'NPM 12/1/2023 01:17:04'!
initializeTokenizingDocumentsWith: anNGramTokenizer storingEntriesIn: anInvertedIndex 
	
	nGramTokenizer := anNGramTokenizer.
	invertedIndex := anInvertedIndex.! !

!NGramIndex class methodsFor: 'as yet unclassified' stamp: 'NPM 12/1/2023 00:46:52'!
ofSize: nGramSize storingEntriesIn: aDictionary creatingDocumentCollectionsWith: postingListCreationBlock 

	^ self 
		tokenizingDocumentsWith: (NGramTokenizer nGramSize: nGramSize)
		storingEntriesIn: (InvertedIndex storingEntriesIn: aDictionary creatingDocumentCollectionsWith: postingListCreationBlock)! !

!NGramIndex class methodsFor: 'as yet unclassified' stamp: 'NPM 12/1/2023 01:17:04'!
tokenizingDocumentsWith: anNGramTokenizer storingEntriesIn: anInvertedIndex 

	^ self new
		initializeTokenizingDocumentsWith: anNGramTokenizer
		storingEntriesIn: anInvertedIndex ! !

!NGramIndex class methodsFor: 'instance creation' stamp: 'NPM 12/2/2023 00:27:06'!
trigram
	
	^ self
		ofSize: 3
		storingEntriesIn: Dictionary new
		creatingDocumentCollectionsWith: [ Set new ]! !

!SourceCodeIndex methodsFor: 'enumerating' stamp: 'NPM 12/1/2023 00:59:15'!
searchFor: aQuery caseSensitive: aBoolean  

	| candidateResults |
	candidateResults := trigramIndex locationsMatching: aQuery.
	
	^ candidateResults
		select: [ :compiledMethod | self matches: compiledMethod query: aQuery caseSensitive: aBoolean ].! !

!SourceCodeIndex methodsFor: 'indexing' stamp: 'NPM 11/9/2023 16:58:38'!
add: aCompiledMethod

	| sourceCode |
	sourceCode := aCompiledMethod sourceCode.
	
	"Performance optimization: we cache the source code so we
	don't have to fetch it from the disk each time. NPM"
	sourceCodeCache at: aCompiledMethod put: sourceCode.
	
	trigramIndex add: sourceCode at: aCompiledMethod.! !

!SourceCodeIndex methodsFor: 'indexing' stamp: 'NPM 12/1/2023 01:04:02'!
remove: aCompiledMethod 
	
	trigramIndex removeDocumentsAt: aCompiledMethod! !

!SourceCodeIndex methodsFor: 'initialization' stamp: 'NPM 12/1/2023 00:58:16'!
initialize

	super initialize.
	
	"An IdentitySet is used because elements are instances of CompiledMethod."
	trigramIndex := NGramIndex ofSize: 3 storingEntriesIn: Dictionary new creatingDocumentCollectionsWith: [ IdentitySet new ].
		
	"An IdentityDictionary is used because keys are instances of CompiledMethod."
	sourceCodeCache := IdentityDictionary new.! !

!SourceCodeIndex methodsFor: 'testing' stamp: 'NPM 7/1/2023 16:21:26'!
matches: aCompiledMethod query: aQuery caseSensitive: aBoolean  
	
	^ (sourceCodeCache at: aCompiledMethod)
		includesSubstring: aQuery
		caseSensitive: aBoolean! !
FinderWindow initialize!
