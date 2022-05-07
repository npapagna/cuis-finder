# Changelog
This file follows the [Keep a Changelog](https://keepachangelog.com/en/1.0.0/) format.

Due to the way [Cuis Smalltalk](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev) manages package versions, this project does not follow [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

### Fixed

* Change SearchBar superclass from `WidgetMorph` (deprecated) to `BoxedMorph`.
* Chance how the `searchBox`'s text morph is accessed in `SearchBar`: from `textMorph` (deprecated) to `innerTextMorph`.
* Fix `FinderWindow>>buildResults`: the last cascade message (`#setProperty:toValue:`) was returning the closure passed
   into the `#toValue:` keyword instead of returning the `PluggableListMorph` instance itself.

## [1.17](https://github.com/npapagna/cuis-finder/releases/tag/v1.17) - 2021-01-29

### Deprecated

* Loading of the `4113-CuisCore-NicolasPapagnaMaldonado-2020Apr26-22h07m-NPM.001.cs.st` changeset (now removed) to allow
finder to be configured as the default class finder. It now can be configured using `Preferences classFinder:`. 

## [1.15](https://github.com/npapagna/cuis-finder/releases/tag/v1.15) - 2021-01-25

### Added

* Finder allowing users to search for Classes, Selectors, Senders, Implementors, System categories and tools.
