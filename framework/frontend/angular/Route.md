- [Parameters](#parameters)
- [Guard](#guard)

# Parameters

```ts
class Page {
  quizId$: Observable<string> = this.route.paramMap.pipe(
    map((params) => params.get("id")!),
    filter((id) => id !== null),
    distinctUntilChanged(),
    shareReplay(1)
  );

  questionIndex$: Observable<number> = this.route.paramMap.pipe(
    map((params) => params.get("question")!),
    filter((question) => Boolean(question)),
    map((question) => Number.parseInt(question)),
    distinctUntilChanged(),
    shareReplay(1)
  );

  constructor(private route: ActivatedRoute) {}
}
```

Parameters are provided by `ActivatedRoute` service as observables.

- `route.paramMap`
- `route.params`
- `route.queryParamMap`
- `route.queryParams`

Since not all parameters are changed on each time, **use
`distinctUntilChanged`** (only emit if the new value is no longer equal to the
previous value) operator while building observable for a single parameter.

# Guard

```ts
@Injectable({ providedIn: 'root' })
export class FirebaseAuthGuard implements CanActivate, CanActivateChild {
  #canActivate: Observable<boolean | UrlTree>;

  constructor(private auth: FirebaseAuthService, private router: Router) {
    this.#canActivate = this.auth.user$.pipe(
      map((user) => (user ? true : this.router.parseUrl('/')))
    );
  }

  canActivate(
    route: ActivatedRouteSnapshot,
    state: RouterStateSnapshot
  ):
    | boolean
    | UrlTree
    | Observable<boolean | UrlTree>
    | Promise<boolean | UrlTree> {
    return this.#canActivate;
  }

  canActivateChild(
    childRoute: ActivatedRouteSnapshot,
    state: RouterStateSnapshot
  ):
    | boolean
    | UrlTree
    | Observable<boolean | UrlTree>
    | Promise<boolean | UrlTree> {
    return this.#canActivate;
  }
}

{
  path: 'app',
  async loadChildren() {
    const { AppModule } = await import('./pages/app.module');
    return AppModule;
  },
  canActivateChild: [FirebaseAuthGuard],
},
```

Route guards determine if a route activated

- `canActivate`: Guard for a single child; **guards need to implement
  `CanActivate`**
- `canActivateChild`: guard for a list of routes; **guards need to implement
  `CanActivateChild`**
- `CanDeactivate`
- `Resolve`

Route guard can return

- `true | false`: indicate if the route can be activated
- `UrlTree`: the route that the user will be directed to; create `UrlTree` using
  `Router` service

These two types of values can be returned as a literal, observable or promise
