# Test on LGSideMenuController Framework

This repo is a demo of applying [LGSideMenuController](https://github.com/Friend-LGA/LGSideMenuController) framework created by Friend-LGA on a Swift APP Project

## About
LGSideMenuController, which is written in objective-c, provides API to create side menus(both left and right) on iOS Application, meanwhile supporting animation transitions.

## Usage 
The common usage is as stated on its README.
Here is a demo of its usage with customization"
(leftViewPresentationStyle: scaleFromLittle)

![](https://i.imgur.com/FmE7cZ7.gif)


### Navigation with Navigation Item
Here mainly test adding navigation item on navigation bar to control to the toggle of the side menu.
My idea is to add a callback to the view controller on where the related navigation item is.
The usage is written in the [HomeViewController](https://github.com/lumanmann/TestLGSideMenuController/blob/master/TestLGSideMenuController/Controller/HomeViewController.swift) and [AppDelegate](https://github.com/lumanmann/TestLGSideMenuController/blob/master/TestLGSideMenuController/AppDelegate.swift) file

@[HomeViewController](https://github.com/lumanmann/TestLGSideMenuController/blob/master/TestLGSideMenuController/Controller/HomeViewController.swift)

To implement the callback block set to it, assign leftNavItemClicked(_:UIBarButtonItem) to the navigation item:

```swift
var leftItemCallback: (() -> Void)?

@objc func leftNavItemClicked(_ sender: UIBarButtonItem) {
        leftItemCallback?()
}
``` 

```swift
 private func setUpNavBar() {
        let item = UIBarButtonItem(image: UIImage(named: "iconUser"), style: .plain, target: self, action: #selector(leftNavItemClicked))

        self.navigationItem.leftBarButtonItem = item
    }
```
@[AppDelegate](https://github.com/lumanmann/TestLGSideMenuController/blob/master/TestLGSideMenuController/AppDelegate.swift)

Set the callback action to the side menu controller:
```swift
rootViewController.leftItemCallback = { sideMenuController.toggleLeftViewAnimated()
}
```

### Init
```swift
public init(rootViewController: UIViewController?)

public init(rootViewController: UIViewController?,
            leftViewController: UIViewController?,
           rightViewController: UIViewController?)

public init(rootView: UIView?)

public init(rootView: UIView?,
            leftView: UIView?,
           rightView: UIView?)
```

### Set Custom Navigation Bar
```swift
let navigationController = CustomNavigationController(rootViewController: rootViewController)
        
let sideMenuController = LGSideMenuController(rootViewController: navigationController)
        
```

### Set Container View Controller Background Color
As uausal:
```swift

// set Container Controller bg color
sideMenuController.view.backgroundColor = .white
```

### Set Animation
default: no animation

```swift
// set animation
sideMenuController.leftViewPresentationStyle = .scaleFromLittle
```

### Set Side Menu Width
```swift
sideMenuController.leftViewWidth = 250.0;
```
