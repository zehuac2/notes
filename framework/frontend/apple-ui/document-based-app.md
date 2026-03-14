- [Overview](#overview)
  - [File System Access](#file-system-access)
  - [UTI](#uti)
  - [Tracking Changes and Auto Save](#tracking-changes-and-auto-save)
- [Related Items](#related-items)
  - [`NSDocument`](#nsdocument)

# Overview

- Document extensions are specified in `Info.plist`
- `UTType`
- **User-specified files**: a sandboxed app (with an appropriate entitlement)
  automatically obtains access to files in arbitrary locations when those files
  are explicitly opened by the user or are dragged and dropped onto the
  application by the user.
- **Related items**: file with the same name as a user-specified file, but a
  different extension
  - Related item can be folders (Ex. Xcode)
  - Related item must also be registered in `Info.plist`
  - If related item does not exist on disk, they can be created

## File System Access

In a sand-boxed environment, regardless of platforms, a document app

- **Cannot acess** any url's content (including querying directories)
- **Can access** the user-specified file's content
- **Can access** related item's content
- **Can access any url's metadata**

## UTI

UTI stands for Universal Type Identifier. A UTI associates an identifier with a
file type

- If an app wants to open or create any UTI, it must register the UTI in its
  `Info.plist`'s `CFBundleDocumentTypes` ("Document Type" in Xcode)
  - The first entry must be associated with a `NSDocument` subclass
- If the UTI is **unknown to the system and not owned by the app**, then the app
  must register the UTI in `Info.plist`'s `UTImportedTypeDeclarations`
  ("Imported Type Identifiers" in Xcode)
- If the UTI is **unknown to the system and owned by the app**, then the app
  must register the UTI in `Info.plist`'s `UTExportedTypeDeclarations`
  ("Exported Type Identifiers" in Xcode)
  - Exported type identifiers must specify UTI conformance, i.e. a generic
    descritpion of the content of a file that uses this extension. Ex.
    `public.text`
- [System-defined UTIs](https://developer.apple.com/library/archive/documentation/Miscellaneous/Reference/UTIRef/Articles/System-DeclaredUniformTypeIdentifiers.html#//apple_ref/doc/uid/TP40009259-SW1)

## Tracking Changes and Auto Save

There are two ways to track changes to a document

- `updateChangeCount(_:)`
- Using undo manager. Document will observe the undo manager and update their
  change count automatically

If the document supports auto saving then the document is automatically saved as
needed when there are new changes.

# Related Items

For document types that can be used as a related item, set `NSIsRelatedItemType`
to `YES`

## `NSDocument`

- `primaryPresentedItemURL`: returns url to **user-specified file**
- `presentedItemURL`: returns url to **related item**
