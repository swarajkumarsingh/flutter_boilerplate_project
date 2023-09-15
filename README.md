<div align="center">
<a href="https://opensource.org/licenses/MIT" target="_blank"><img src="https://img.shields.io/badge/License-MIT-yellow.svg"/></a>
</div>

# Flutter Boilerplate Project

This is a boilerplate Flutter project that demonstrates best practices for setting up a project with Riverpod, including various essential packages for common tasks.

## Getting Started

The Boilerplate contains the minimal implementation required to create a new library or project. The repository code is preloaded with some basic components like basic app architecture, app theme, constants and required dependencies to create a new project. By using boiler plate code as standard initializer, we can have same patterns in all the projects that will inherit it. This will also help in reducing setup & development time by allowing you to use same code pattern and avoid re-writing from scratch.

### Up-Coming Features:

* more optimizations and utilities files
## Features

* Custom Logging
* Custom Routing (without context)
* Custom Snackbar & Toast (without context)
* Local storage
* Code generation
* Analysis template
* Clean architecture
* Sentry Crashlytics
* Dependency Injection
* Firebase Performance
* Crashlytics template
* Local database and examples
* Api integration and examples
* State management with riverpod and examples

## Dependencies

This boilerplate includes several common dependencies that you may find useful when building your application:

| Packages                                                                 | Description                                     |
| :----------------------------------------------------------------------- | :---------------------------------------------- |
| [Dio](https://pub.dev/packages/dio)                                      | REST Api calls                                  |
| [intl](https://pub.dev/packages/intl)                                    | Internationalization and Localization           |
| [riverpod](https://pub.dev/packages/riverpod)                            | State Manager                                   |
| [freezed](https://pub.dev/packages/freezed)                              | Code generation for models                      |
| [logger](https://pub.dev/packages/flutter_logger_plus)                   | Logger                                          |
| [App Router](https://pub.dev/packages/flutter_approuter)                 | Approuter (without context)                     |
| [json_serializable](https://pub.dev/packages/json_serializable)          | Code generation for converting to and from JSON |
| [SharedPreferences](https://pub.dev/packages/shared_preferences)         | Native splash screen                            |
| [Dependency Injection](https://github.com/fluttercommunity/get_it)       | For Dependency Injection                        |
| [Firebase analysis](https://pub.dev/packages/firebase_analytics)         | For firebase_analytics                          |
| [firebase Performance](https://pub.dev/packages/firebase_performance)    | For firebase_crashlytics                        |
| [firebase Crashlytics](https://pub.dev/packages/firebase_crashlytics)    | For firebase_crashlytics                        |
| [Sentry Crashlytics](https://pub.dev/packages/sentry)                    | For Crashlytics                                 |
| [cached_network_image](https://pub.dev/packages/cached_network_image)    | Load and cache network images                   |
| [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)  | Native splash screen                            |

You can add or remove dependencies as needed for your specific use case.

## App Flow Chart 
<br />

![CallFlow](https://i0.wp.com/resocoder.com/wp-content/uploads/2019/08/Clean-Architecture-Flutter-Diagram.png?resize=556%2C707&ssl=1)
<br />

<br />

## How to Use 
**Step 1:**

Fork, download or clone this repo by using the link below:

```
git clone https://github.com/swarajkumarsingh/flutter_boilerplate_project.git
cd flutter_boilerplate_project
```

**Step 2:**
Go to project root and execute the following command in terminal to get the required dependencies and generate languages, freezed, flutter gen: 

```cmd
flutter pub get
```

**Step 3:**
Change the project name from pubspec.yaml, AndroidManifest.xml, and build.gradle

**Step 4:**
Change sentryDSN variable from the constants.dart file

## Configuration
### Firebase
To enable Firebase services (Analytics, Crashlytics, Performance), follow these steps:

1. Create a Firebase project in the Firebase Console.

2. Use firebase-cli to change the google-service.json file

### Sentry
To set up Sentry for error tracking, create an account on Sentry.io, create a new project, and follow the setup instructions provided on the Sentry dashboard.

## Folder structure
```
flutter_boilerplate_project/
|- assets/                    (assets)
|- android/                   (android)
|- ios/                       (ios)
|- tools/                     (custom tools)
|- lib/
  |- core/                    (Riverpod observer, theme,...)
    |- common/                (common files)
    |- configs/               (app config)
    |- constants/             (app constants)
    |- di/                    (dependency injection)
    |- dio/                   (custom dio class)
    |- event_tracker/         (firebase, sentry event tracker)
    |- error_tracker/         (firebase, sentry error tracker)
    |- utils/                 (utility files)
  |- data/                    (repository)
    |- data_source/           (app's main logic source)
    |- db/                    (local db)
    |- local/                 (local files)
    |- providers/             (providers files)
    |- repository/            (repository implementation files)
    |- service/               (service files)
  |- domain/                  (domain)
    |- models/                (models)
    |- repository/            (repository)
  |- presentation/            (repository)
    |- view/                  (app screen)
    |- viewModel/             (views's viewModel)
    |- widgets/               (views's widgets)
  |- my_app.dart/             (my_app file)
  |- main.dart/               (main file)

```

## [Freezed](https://pub.dev/packages/freezed): 
### Create a immutable Model with any features available
- Define a `constructor` + the `properties`
- Override `toString`, operator `==`, hashCode
- Implement a `copyWith` method to clone the object
- Handling `de/serialization`
### Example
```dart
part 'dog_image.freezed.dart';
part 'dog_image.g.dart';

@Freezed(fromJson: true)
class DogImage with _$DogImage {
  const factory DogImage({
    required String message,
    required String status,
  }) = _DogImage;

  factory DogImage.fromJson(Map<String, dynamic> json) =>
      _$DogImageFromJson(json);
}
```
### Implement
```dart
final DogImage dogImage = DogImage.fromJson(json);
///
final DogImage dogImage = dogImage.copyWith(status: 'failed');
/// Deep copy, equal operator ...
...
```

### flutter_native_splash

To create splash, execute the following command: `dart run flutter_native_splash:create`

## License

This boilerplate is [MIT licensed](./LICENSE).

## Contributing

Contributions are welcome! If you find a bug or want to add a new feature, please open an issue or submit a pull request.