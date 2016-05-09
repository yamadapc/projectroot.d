# projectroot.d
D bindings for the projectroot C library. Made to practice C/D interop.

```d
auto currentRoot = findProjectRoot();
auto otherRoot = findProjectRoot("/some/path");
auto weightedRoot = findProjectRootWeighted();
auto otherWeightedRoot = findProjectRootWeighted("/some/path");
```

## Interface
- `bool isProjectRoot(string cdt);`
- `string findProjectRoot(string cwd = getcwd());`
- `string findProjectRootWeighted(string cwd = getcwd());`

## License
MIT
