# github_commit_log_app

![screenshot](https://user-images.githubusercontent.com/31307345/71818543-57487d80-30af-11ea-8508-b6b8f1d3f3ae.jpg)

## Functionality
* Fetches the commit history for this project's repo.
* Has infinite scroll to fetch more commits once the user reaches the end of the list.
* Pull down from the top to fetch(refresh) the latest commits.
* Click on the commit to open the commit details in a new page.

## Running the app
> Flutter stable version 1.12.13+hotfix.5 is used to debug this app

1. Clone this repo
  ```
  git clone https://github.com/rvamsikrishna/flutter_github_api_test.git
  ```
  2. Open the cloned project in your desired IDE
  3. Get the packages
     * In the terminal where the path is pointing to this project's folder run `flutter pub get`
  
  
      * From Android Studio/IntelliJ: Click Packages get in the action ribbon at the top of pubspec.yaml.
   
      * From VS Code: Click Get Packages located in right side of the action ribbon at the top of pubspec.yaml.
  4. Run the app using
     * `flutter run` in the terminal or 
     *  Click start debugging under **Debug** menu in VSCode or 
     *  Click the Green play button in Android Studio

