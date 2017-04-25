# DiggReddit

## Swift 3.1

## Pattern - MVVM
The problem with MVC is there are some massive controller, so to maintain and add new features might be painful.
So I'm trying to using MVVM to make sure separate the logic bussiness and the UI 

## Structure
### Project<br/>
+ **Engine:** Shared classes, enums, structures, or logic, business on backend, networks, parsers, helpers, caches, data store, etc…<br/>
  - **Manager:** Contains Singleton class to handle Application product, Authentication manager, Push notifications manager, REST manager files<br/>
  - **Constant:** AppConstants file, RESTConstants file, Constants file,…<br/>
  - **Utility:** AppUtils file, RESTUtils file, …<br/>
  - **Config:** Contains everything contribute for configuration app, AppConfig file: Configure all setting in app: Feedback, geting started with third party libraries, configure server’s hosts, configure logger, …<br/>
  - **Extension:** Extend class / struct / enum<br/>
  - **Service:** ApiService: Call API, SystemService: Handle system service (Push Notification, …)<br/>
  - **Persistence:** Store entities here<br/>
+ **Model:** Every object in app e.g: User, Topic<br/>
+ **ViewModel:** Model for view e.g: TopicsViewModel is model for view of topics<br/>
+ **View:** Every module contains View & anything related to front end.<br/>
  - **Component:** The views that they will be share between multiple screens. With each screen should be has a folder for itself<br/>
  - **View:** Represent for the screens. With each screen should be has a folder for itself. E.g. Feed: TopicsViewController<br/>
+ **Resource:** Can be contains Images, Sounds, Layout config file, etc. Assets.xcassets, Localizable.strings, …<br/>
+ **Storyboard:** Put all storyboards at here. With each screen should be has a storyboard file for itself => Reduce conflicts when merge Pull Request<br/>
+ **AppDelegate.swift**<br/>
+ **Info.plist**<br/>

## How it works:
There are 2 main screens:
+ **TopicsTableViewController**: Display the list of Topics, users able to Up/Down vote
+ **NewTopicViewController**: Allow user to contribute topic

## This repository is using Git Flow to manage code:
- Add new feature from on `develop` branch
- After finish the feature, merge to `develop`
- Make a release will go to `release` branch
- Finished release merge to `master`
- Do the hotfix on `hotfix` branch 

## Fastlane

To test project without open by XCode: `fastlane scan`
