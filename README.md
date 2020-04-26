# eye_cinema_app

A new Flutter project being developed solely for the Eye cinema of Galway, Ireland.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Project Structure

### screens
This folder holds many subfolders, each of which corresponds to a different screen
of the app.
Each screen folder holds three things:
1. A primary screen file which serves to organize each component
2. A BLoC file that is only used for that screen
3. "components" folder that holds each component file used by the screen

Any section of a screen more complicated than a few widgets should be its own
component, and some very complex components may even require their own BLoC file
and components as a screen does.