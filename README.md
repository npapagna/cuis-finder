# Cuis Finder

## Description

Finder is a system-wide search tool for [Cuis Smalltalk](https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev).

You can use it to search for classes, methods, senders, implementors, system categories... you name it!

It is inspired by Pharo's Spotter and the search feature provided by JetBrains tools, such as IntelliJ IDEA. 

## Feedback
Finder is in its early stages, so all feedback is welcomed!

Feel free to [submit an issue](https://github.com/npapagna/cuis-finder/issues) to report bugs, improvements, etc.

## Installing

**Prerequisite**: Finder creates a new preference named `#classFinder`, that allows the user to configure the tool that will be used when pressing the Find Class shortcut (`shift + enter`).  
As this is a working prototype the new preference does not exist in Cuis's base image, you need to initialize it by filing in [4113-CuisCore-NicolasPapagnaMaldonado-2020Apr26-22h07m-NPM.001.cs.st](4113-CuisCore-NicolasPapagnaMaldonado-2020Apr26-22h07m-NPM.001.cs.st).

Once that change is filed in, just load [Tools-Finder.pck.st](Tools-Finder.pck.st).

## Usage Instructions

## Opening
Press `shift + enter` to open Finder:

![Finder window](assets/finder-window.png)

The main window displays the **catalogs** that are available for searching (top), the **search bar** to enter queries (below the catalogs) and the **results** pane.

### Closing
Press `esc` while the search bar has focus to close Finder.

### Searching
Enter a query in the search bar to see results as you type:
![Search bar](assets/finder-search-bar.gif)

### Catalog Navigation
You can scroll through the catalogs to narrow your search by pressing:
 
 * `tab` to select the next catalog
 * `shift + tab` to select the previous catalog
 
 while the search bar has focus.
 
![Catalogs navigations](assets/finder-catalog-navigation.gif)

### Results Navigation
You can scroll through the results either by pressing:
* `up` and `down` arrows
* `enter` to browse the selected result
![Results navigation](assets/finder-results-navigation.gif)

