# Example

Example of how we can build two different applications with flutter, by using two entry points.

These entry points provide the available routes, a `isFull` boolean (but use a better name for this variable), and maybe the admin-specific services.

The services and the boolean can be given through `Provider`.

Then you launch/build the application with the `-t` option to specify the endpoint needed:

```
flutter run -t lib/normal-routes.dart
flutter run -t lib/more-routes.dart
```
