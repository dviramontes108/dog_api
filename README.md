<br>
# Dog Api

This is an app which display a simple list of dogs which comes using [dog list endpoint](https://dog.ceo/api/breeds/list/all) and display the detail page with the data comes using [dog detail endpoint](https://dog.ceo/api/breed/african/images/random).

## Pre-requisites 📐

| Technology | Recommended Version | Installation Guide                                                    |
|------------|---------------------|-----------------------------------------------------------------------|
| Flutter    | v3.16.x             | [Flutter Official Docs](https://flutter.dev/docs/get-started/install) |
| Dart       | v3.2.x              | Installed automatically with Flutter                                  |

## Get Started 🚀

- Clone this project
- Run `flutter pub get`
- Run `dart run build_runner build --delete-conflicting-outputs` to generate freezes files
- Run `flutter run` after you have simulator connected.
- Run Test `flutter test`
- you can download the apk file and install it on your android device to check the result.
[APK file](https://github.com/dviramontes108/dog_api/blob/c529b8549747ac9071c29f4a1f837abf5c7f7ae8/app-release.apk)

## Structure ✅

- [x] BLoC State Management
- [x] Model
    - [x] Dog Model
    - [x] Resp Model
- [x] Repository
    - [x] Dogs Repository
    - [x] Exceptions
- [x] View 
    - [x] DetailView
    - [x] ListView

## Maestro Test 🧪
- [Install Maestro](https://maestro.mobile.dev/getting-started/installing-maestro) 
- Run `maestro test maestro/main.yaml`
- you can also check the screen recording for Maestro Test [here](https://github.com/dviramontes108/dog_api/blob/c2c1fc63ec9743bf41aadc598162d174f54f75dc/Screen%20Recording%202024-05-06%20at%205.36.16%E2%80%AFPM.mov).

<br>

## Note :information_source:

- I didn't spend a fair amount of time to make better structure as well as clean code, and I just focused to show my coding style. I hope you understand this point as I totally agree that there are still many parts should be improved including folder/file structure, etc. Thanks for reviewing my assessment result! :heart:
