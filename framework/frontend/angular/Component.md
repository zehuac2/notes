- [Overview](#overview)
  - [Property vs Attribute](#property-vs-attribute)
- [IO](#io)
  - [Input](#input)
  - [Output](#output)
- [Template](#template)
  - [Expression](#expression)
    - [No Visible Side Effects](#no-visible-side-effects)
  - [SVG](#svg)
  - [Binding](#binding)
    - [One Way Binding](#one-way-binding)
    - [Two Way Binding](#two-way-binding)
  - [Template Variable](#template-variable)
  - [`@ViewChild`](#viewchild)
- [Host](#host)
  - [`@Component`](#component)
  - [`@HostBind`](#hostbind)
  - [CSS](#css)

# Overview

```ts
import { Component, Input } from "@angular/core";

@Component({
  selector: "hello,div[hello]",
  template: `<h1>Hello {{ name }}!</h1>`,
  // or
  // templateUrl: './app.component.html',
  styles: [
    `
      h1 {
        font-family: Lato;
      }
    `,
  ],
  // or
  // styleUrls: ['./app.component.css'],
})
export class HelloComponent {
  @Input() name: string;
}
```

An angular component is class decorated with `@Component`

- `selector` specifies selector that would trigger the instantiation of the
  component in a template
- `template`: a template string
- `templateUrl`: path to template defined in `.html` file
- `styles`: a list of css styles
- `styleUrls`: a list of url to css files
- Angular components instantiated as elements (ex. `<my-component />`) will have
  their `display` set to `inline`. See [Host](#host) section for how to
  configure this

## Property vs Attribute

```ts
@Component(...)
export class HelloComponent {
  @Input() name: string;
  @Output() nameChanged = new EventEmitter<string>();
}
```

- `name` and `nameChanged` are **properties**; **properties must be defined in
  the class** definition
- `aria-label` is an (HTML) **attribute**; **attributes part of HTML and not
  defined** in class definition
- **Both** properties and attributes **will be stored in DOM**

# IO

## Input

```ts
@Component({})
export class MyComponent {
  @Input()
  input = "";

  @Input()
  get value(): string {
    // ...
  }

  set value(v: string) {
    // ...
  }
}
```

- `@Input()` can be used on properties with getters and setters
  - Apply `@Input()` on the getter

## Output

```ts
@Component({})
export class MyComponent {
  @Output()
  inputChange = new EventEmitter<string>();
}
```

# Template

- Expressions, and bindings **can be getters or setters**

## Expression

```html
<div>{{ expression }}</div>
```

Expression is surrounded by `{{` and `}}`

- Given `exp1` in the previous render and `exp2` in this render, only when
  `exp1 !== exp2`, `exp2` will be applied to the view. For example, given
  `{{ array }}`, `array.push` will not update the view because the identity of
  `array` did not change

### No Visible Side Effects

A template expression **should not change any application state other than the
value of the target property**. Reading a component value should not change some
other displayed value. The view should be stable throughout a single rendering
pass.

- `get event$(): Observable`, `event$ | async` should not create a new
  observable, otherwise the app will be stuck in an infinite loop (evaluate
  template, new observable, new value from observable, evaluate template ...)

## SVG

```ts
import { Component, Input, Output, EventEmitter } from "@angular/core";

@Component({
  selector: "[note]",
  template: `
    <svg:circle
      class="button"
      [class.disabled]="disabled"
      [attr.cy]="stickHeight / 2"
      [attr.r]="buttonSize / 2"
      (click)="play.emit()"
    ></svg:circle>
    <svg:text
      class="button-label"
      [class.disabled]="disabled"
      text-anchor="middle"
      y="-20"
    >
      {{ label }}
    </svg:text>
  `,
  styleUrls: ["./note.component.scss"],
})
export class Note {
  @Input()
  label: string = "";

  @Input()
  disabled: boolean = false;

  @Input()
  buttonSize: number = 10;

  @Input()
  stickHeight: number = 10;

  @Output()
  play: EventEmitter<void> = new EventEmitter();
}
```

SVG elements in component templates without a `<svg>` root element, **make sure
to prefix the elements with `svg:` namespace**. Otherwise, the elements won't be
rendered.

## Binding

- Similar to expressions, **bindings should not chnage the application state**
  other than the value of the target property

### One Way Binding

```html
<button [style.background]="backgroundColor" (click)="onButtonClick">
  Click Me!
</button>
```

- `[name]="..."`: one way binding from data to view
  - **Data may be visible in HTML**; To hide sensitive data, obtain a reference
    to component using `@ViewChild` and set property of the reference in
    TypeScript
- `(name)="..."`: one way binding from view to data

### Two Way Binding

```html
<component [(property)]="variable" />
```

`component` must have the following for `variable` to sync with `property

- `@Input() property: T`: take input value
- `@Output() propertyChange: EventEmitter<T>`: emit new values

## Template Variable

```ts
@Component({
  template: `
    <input #name placeholder="Name" />
    <div>{{ name.value }}</div>
  `,
})
class FooComponent {
  @ViewChild("name")
  name!: HTMLInputElement;
}
```

- `#name` defines a template variable called `name`
- Template variable declared on HTML element will be `HTMLElement`
- Template variable declared on component will have the type of the component
- Template variable `ng-template` will have type `TemplateRef`
- If the variable specifies a name on the right-hand side, such as
  `#var="ngModel"`, the variable refers to the directive or component on the
  element with a matching exportAs name.
- Template variables are only available in component after
  `ngAfterViewInit(): void` (`AfterViewInit`)

## `@ViewChild`

```
@ViewChild(selector, { read, static })
```

- `selector` can be
  - a string equal to the identifier of a template variable (ex. `name`). The
    property will be of type `ElementRef` (`@angular/core`)

# Host

```html
<mat-button></mat-button>
<button mat-button></button mat-button>
```

Hosts are HTML elements that contain an angular component

- `<mat-button></mat-button>`: host element will be the custom HTML element
  `mat-button`
- `<button mat-button></button mat-button>`: host element will be `button`

## `@Component`

```ts
@Component({
  selector: 'app-page-learn',
  templateUrl: './learn.component.html',
  styleUrls: ['./learn.component.scss'],
  host: {
    class: 'h-full-component',
  },
})
```

`host` property of `@Component` is the most convenient way of modifying the host

## `@HostBind`

```ts
class MyComponent {
  @HostBind("class")
  get className(): string {
    return "some class";
  }
}
```

## CSS

```css
:host {
  display: block;
}
```

Content of `:host` will be applied to the host element
