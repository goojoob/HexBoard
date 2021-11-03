# HexBoard
SwiftUI Hexadecimal Keyboard

<p align="left">
    <img src ="https://goojoob.dev/hexBoard/hexBoard1.png" width=400 />
</p>

<br/>

## About HexBoard ⌨️

_HexBoard is an Hexadecimal Keyboard for `iOS` made entirely using `SwiftUI 3` and `Swift 5.5.1`_

<br/>

<p align="left">
    <img src ="https://goojoob.dev/hexBoard/play1.gif" width="300" />
</p>

<br/>

### Usage 🔧

_HexBoard is a SwiftUI KeyboardView that is initially positioned off the screen_

_It needs to be stacked in the last position of a ZStack in order to overlap all the other views when it shows_

```
ZStack {
  //... your views here ...

  KeyboardView(text: $text, showKeyboard: $showKeyboard)
}
```

_It needs two parameters to work:_

* `showKeyboard: bool` - in order to toggle the view of the HexBoard
* `text: String` - the value on which the HexBoard works

<br/>

## Installation ⚙️

_You need all the files (except the MainView that is an example) in your XCode project_

<br/>

### HexBoard working in a real iOS App 🔩


<br/>

## Created with 🛠️

* [XCode 13](https://developer.apple.com/xcode/)
* [Swift 5.5.1](https://swift.org/)
* [SwiftUI 3](https://developer.apple.com/xcode/swiftui/)

<br/>

## Author ✒️

* **Goojoob.dev** - *Original development* - [goojoob](https://twitter.com/goojoobdev)

<br/>

## License 📄

<a rel="license" target="_blank" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International license (CC BY 4.0)</a>.

<br/>

## Thank You 🎁

* Talk to others about this project 📢
* We can have a ☕ whenever you want

<br/>