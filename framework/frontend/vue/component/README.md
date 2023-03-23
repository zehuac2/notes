- [Template](#template)
  - [Fall Through Attribute](#fall-through-attribute)
  - [Model](#model)

# Template

## Fall Through Attribute

A fall through attribute is an attribtue that is not defined as a `prop` or as
an `emit`.

- These attributes can be retrieved using `$attrs` and applied to an element
  using `v-bind='$attrs'`
- By default, **fall through attributes are applied to the root element** of
  template
  - If there are **multiple root elements**, **use `v-bind='$attrs'`** on a
    specific element
  - **Add `inheritAttrs: false` to options to disable** this behavior

[Vue: Fallthrough Attributes](https://vuejs.org/guide/components/attrs.html)

## Model

To support `v-model` with custom components, the compoennt must

- Take a prop named `modelValue`
- Emit an event named `update:modelValue`
