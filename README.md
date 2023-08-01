# LaunchOnLogin

A simple Objective-C based application which adds your app to login items under system setting for macOS Ventura.

## File Structure

- `main.m`: Contains the main function that initialises the application
- `AppDelegate.m`: Contains functions to enable and disable launch on login
- `ViewController.m`: Contains view elements including windows, buttons etc.

## Building the Project

1. Open Terminal and navigate to the root directory of the project.

 2. ```sh
	mkdir build && cd build
	cmake -H../ -B. -GXcode
  	cmake --build .
	```

## Running the Project

Launch the project using:

```sh
open Debug/Executable.app
```
