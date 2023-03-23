# Overview

```ts
@Directive({ selector: "[translateX],[translateY]" })
export class Transform implements OnChanges {
  @Input()
  translateX: number = 0;

  @Input()
  translateY: number = 0;

  constructor(private element: ElementRef<SVGElement>) {}

  ngOnChanges(changes: SimpleChanges): void {
    if (changes["translateX"] || changes["translateY"]) {
      this.#updateTransform();
    }
  }

  #updateTransform() {
    const transform = `translate(${this.translateX} ${this.translateY})`;
    this.element.nativeElement.setAttribute("transform", transform);
  }
}
```

```html
<g [translateX]="translateX" [translateY]="translateY"></g>
```

Directives are like components, except they don't have templates

- Activated by selectors
- Receive inputs and produce outputs via HTML attributes
- Same life cycle hooks
