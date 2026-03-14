- [Overview](#overview)
- [`applicationShouldOpenUntitledFile`](#applicationshouldopenuntitledfile)
- [`applicationShouldHandleReopen`](#applicationshouldhandlereopen)

# Overview

App delegates should implement `NSApplicationDelegate`

# `applicationShouldOpenUntitledFile`

Called for a document based app when the user click on the app icon in the dock
and `applicationShouldHandleReopen` has returned true

- Return true to create an untitled file

# `applicationShouldHandleReopen`

Called when the user double click on the application in finder or single click
in the dock

- Return true if the application want to reopen
