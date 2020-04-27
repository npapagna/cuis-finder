'From Cuis 5.0 [latest update: #4112] on 26 April 2020 at 10:12:01 pm'!

!Preferences class methodsFor: 'get/set' stamp: 'NPM 4/26/2020 22:10:42'!
setPreference: prefSymbol toValue: aValue category: aCategory balloonHelp: preferenceDescription
	"Set the given preference to the given value, and answer that value"
	(self
		preferenceAt: prefSymbol
		ifAbsent: [ 
			^ self
				addPreference: prefSymbol
				category: aCategory
				default: aValue
				balloonHelp: preferenceDescription ])
		preferenceValue: aValue! !

!Preferences class methodsFor: 'tools-finder' stamp: 'NPM 4/26/2020 22:08:46'!
openClassFinder
	
	^ (self valueOfFlag: #classFinder) value! !

!Preferences class methodsFor: 'tools-finder' stamp: 'NPM 4/26/2020 22:11:00'!
setClassFinderTo: aBlock
	
	self
		setPreference: #classFinder
		toValue: aBlock
		category: #tools
		balloonHelp: 'The tool to use when pressing the Find Class shortcut.'! !


!Preferences class methodsFor: 'add preferences' stamp: 'NPM 4/26/2020 22:09:44'!
addPreference: prefSymbol categories: categoryList default: aValue balloonHelp: helpString changeInformee: informeeSymbol  changeSelector: aChangeSelector
	"Add or replace a preference as indicated.  Reuses the preexisting Preference object for this symbol, if there is one, so that UI artifacts that interact with it will remain valid."

	| aPreference |
	aPreference _ self preferencesDictionary at: prefSymbol ifAbsent: [Preference new].
	aPreference name: prefSymbol defaultValue: aValue helpString: helpString categoryList: categoryList changeInformee: informeeSymbol changeSelector: aChangeSelector.
	self preferencesDictionary at: prefSymbol put: aPreference.! !


!KeyboardEvent methodsFor: 'dispatching' stamp: 'NPM 4/26/2020 22:07:39'!
sentTo: aMorph localPosition: positionInAMorph
	"Dispatch the receiver into anObject"
	type == #keystroke ifTrue: [
		self isFindClassShortcut
			ifTrue: [ ^ Preferences openClassFinder ].
		self isCloseWindowShortcut
			ifTrue: [ ^ self closeCurrentWindowOf: aMorph ].
		^ aMorph
			processKeystroke: self
			localPosition: positionInAMorph ].
	type == #keyDown ifTrue: [
		^ aMorph
			processKeyDown: self
			localPosition: positionInAMorph ].
	type == #keyUp ifTrue: [ 
		^ aMorph
			processKeyUp: self
			localPosition: positionInAMorph ].
	^ super
		sentTo: aMorph
		localPosition: positionInAMorph.! !


!Preferences class reorganize!
('add preferences' addPreference:categories:default:balloonHelp: addPreference:categories:default:balloonHelp:changeInformee:changeSelector: addPreference:category:default:balloonHelp:)
('bigger and smaller GUI' bigFonts defaultFont05 defaultFont06 defaultFont07 defaultFont08 defaultFont09 defaultFont10 defaultFont11 defaultFont12 defaultFont14 defaultFont17 defaultFont22 defaultFont28 defaultFont36 defaultFont46 defaultFont60 defaultFont80 hugeFonts smallFonts standardFonts tinyFonts veryBigFonts verySmallFonts)
('class state access' parameters preferencesDictionary releaseClassState)
('code generation' leftArrowAssignmentsInGeneratedCodeWithComputedDefault)
('exception handling' allowNonLocalReturnsInExceptionHandlers warnAboutNonLocalReturnsInExceptionHandlers)
('fonts' properDisplayAlphaForFonts restoreDefaultFonts setButtonFontTo: setCodeFontTo: setDefaultFont:spec: setDefaultFonts: setListFontTo: setMenuFontTo: setSystemFontTo: setWindowTitleFontTo: standardButtonFont standardCodeFont standardListFont standardMenuFont subPixelRenderColorFonts windowTitleFont)
('get/set' disable: disableFocusFollowsMouse disableTileResizerInWindowMenu doesNotUnderstand: enable: enableFocusFollowsMouse enableTileResizerInWindowMenu setPreference:toValue: setPreference:toValue:category:balloonHelp: togglePreference: valueOfFlag: valueOfFlag:ifAbsent:)
('halos' haloSpecifications iconicHaloSpecifications installHaloSpecsFromArray: installHaloTheme: resetHaloSpecifications)
('hard-coded prefs' desktopMenuTitle)
('initialization' compileAccessMethodForPreference: setPreferencesFrom:)
('menu icons' useMenuIcons useNoMenuIcons)
('menu parameters' menuBorderWidth)
('misc' wantsChangeSetLogging)
('parameters' annotationInfo defaultAnnotationRequests defaultAuthorName setDefaultAnnotationInfo)
('personalization' compileHardCodedPref:enable: disableProgrammerFacilities enableProgrammerFacilities usePreDebugWindow)
('preference-object access' preferenceAt: preferenceAt:ifAbsent:)
('preferences panel' openPreferencesInspector)
('scrollbar parameters' scrollbarThickness)
('shout' backgroundColorFillsAllBackground highlightBlockNesting italicsInShout shoutInWorkspaces useAssignmentGlyphLeftArrow useAssignmentGlyphRightArrow)
('standard queries' aaFontsColormapDepth allowBlockArgumentAssignment alternativeBrowseIt assignmentGlyphSelector autoNumberUserChanges automaticPlatformSettings balloonHelpEnabled biggerCursors browseWithPrettyPrint canRecordWhilePlaying caseSensitiveFinds changeSetVersionNumbers cheapWindowReframe checkForSlips clickGrabsMorphs cmdDotEnabled ctrlArrowsScrollHorizontally debugHaloHandle debugLogTimestamp debugShowDamage debugShowDamage2 decorateBrowserButtons diffsInChangeList diffsWithPrettyPrint dismissAllOnOptionClose extraDebuggerButtons focusFollowsMouse focusIndicatorWidth fullScreenLeavesDeskMargins haloEnclosesFullBounds leftArrowAssignmentsInGeneratedCode listClassesHierarchically logDebuggerStackToFile menuKeyboardControl optionalButtons prettyPrintRectangularBlocks selectionsMayShrink selectiveHalos serverMode showLinesInHierarchyViews soundQuickStart soundStopWhenDone soundsEnabled subPixelRenderFonts syntaxHighlightingAsYouType syntaxHighlightingAsYouTypeAnsiAssignment syntaxHighlightingAsYouTypeLeftArrowAssignment systemWindowEmbedOK tapAndHoldEmulatesButton2 thoroughSenders tileResizerInWindowMenu transcriptLogVerbose wantsMenuIcons warnIfNoChangesFile warnIfNoSourcesFile)
('start up' checkLostChangesOnStartUp)
('user changes' use:asUserChangesFileNameExtensionWhile: userChangesFileNameExtension)
('themes' cuisDefaults forMouse forTouch slowMachine smalltalk80)
('tools-finder' openClassFinder setClassFinderTo:)
!

