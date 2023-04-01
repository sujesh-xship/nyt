# NewYorkTimes Most viewed article

## How to Use

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/sujesh-xship/nyt.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get 
```

# NYT Features:


* Home
* Most viewed article from nyt 
* Bloc state management
* web view



## Libraries & Tools Used

* http
* flutter_bloc
* webview_flutter
* google_fonts
* cached_network_image

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- constants/
|- model/
|- service/
|- view/
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- constants - All the application level constants are defined in this directory with-in their respective files. This directory contains the constants for  `api endpoints`, `strings` and etc.
2- model - Contains the data layer of your project.
3- service - containes api calling details. 
4- view-Contains all the ui of your project, contains sub directory for each screen and each sub directory contains bloc and view of each page.
5- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, title,  etc.
```


The app calls NYT api and the api call requires api_key this can be generated from * https://developer.nytimes.com/my-apps *

