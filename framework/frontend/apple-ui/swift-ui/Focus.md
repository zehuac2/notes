# Focus

- Declare a focus value

  ```swift
  struct FocusedNoteBinding: FocusedValueKey {
    typealias Value = Binding<String>
  }

  extension FocusedValues {
    var noteBinding: FocusedNoteBinding.Value? {
      get { self[FocusedNoteBinding.self] }
      set { self[FocusedNoteBinding.self] = newValue }
    }
  }
  ```

- Assign focus values using `.focusedValue(\.noteBinding, $note)` modifier
