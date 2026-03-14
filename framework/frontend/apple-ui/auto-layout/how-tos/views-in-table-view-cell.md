# Views in Table Cell View

In this document, views refers to root-level views in the cell view; if the cell
view already contains a content view, then the "views" refer to directy children
of the content view

1. Add one **leading**, and one **trailing** horizontal constraint for each
   views
2. Add a **top constraint** to the top of the cell from the child view
3. If using a text element, add a **height constraint** to the element
   - Consider using the height of the cell
   - **Bottom constraint** cause the text elements to be crushed
4. Use **bottom constraint in other situations**
