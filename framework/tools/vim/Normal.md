- [General](#general)
  - [Enter Edit Mode](#enter-edit-mode)
  - [Move Cursor To X](#move-cursor-to-x)
  - [Move Current Line To X](#move-current-line-to-x)
  - [Move Viewport To X](#move-viewport-to-x)
  - [Go to Line](#go-to-line)
  - [Delete](#delete)
- [Code Editing](#code-editing)
  - [Parenthesis](#parenthesis)
  - [Indentation](#indentation)

# General

- `.`: repeat the last command

## Enter Edit Mode

- `a`: enter edit mode after cursor
- `A`: enter edit mode at the end of the line
- `i`: enter edit mode before cursor
- `I`: enter edit mode at the start of the line
- `o`: create a new line below and then enter edit mode on the new line
- `O`: create a new line above and then enter edit mode on the new line

## Move Cursor To X

- `j`: move the cursor to the line below
- `k`: move the cursor to the line above
- `h`: move the cursor to the character to the left
- `l`: move the cursor to the character to the right
- `w`: move the cursor to the next word
- `b`: move the cursor to the previous word
- `e`: move the cursor to the end of the next word
- `shift + g`: move cursor to the end of file (EOF)
- `gg`: move cursor to the top beginning of file (BOF)
- `$`: move cursor to the end of line
- `^`: move cursor to the beginning of line
- `f[c]`: move cursor to the next `c` in line
- `F[c]`: move cursor to the previous `c` in line

## Move Current Line To X

- `zz`: move the current line to the middle of the screen
- `zt`: move the current line to the top of the screen
- `zb`: move the current line to the bottom of the screen

## Move Viewport To X

- `ctrl + y`: move viewport up by one line
- `ctrl + e`: move viewport down by one line
- `ctrl + u`: move viewport up
- `ctrl + d` :move viewport down

## Go to Line

- `<line>gg`, `<line>G`: go to `line`

## Delete

- `dd`: delete current line and move it into the paste board

# Code Editing

## Parenthesis

- `%`: go to opening `([{`
- `%%`: go to the closing `)]}`
- `[(`: go to the closest `(` in the "parenthesis hierarchy"
- `])`: go to the closest `)` in the "parenthesis hierarchy"
  - Replace `(`, `)` with `[]` and `{}`

## Indentation

TODO: what is "reindent"?

- `>>`: indent by tab size
- `<<`: outdent by tab size
- `x>>`: indent x lines by tab size
- `x<<`: outdent x lines by tab size
- `x==`: reindent x lines
- **Place cursor on brace first**:
  - `>%`: indent block by tab size
  - `<%`: outdent block by tab size
  - `=%`: reindent block by tab size
- `]p`: paste text, aligning indentation with surrondings
- **Inner Block**: block the cursor is currently in
  - `>i{`: indent inner block content
  - `<i{`: outdent inner block content
  - `=i{`: reindent teh inner block
- `=a{`: reindent a block (block and containing braces)
- `=2a{`: reindent 2 blocks
