<p align="center">
    <img src="https://img.shields.io/badge/Swift-5.0-orange" />
    <a href="https://swift.org/package-manager">
        <img src="https://img.shields.io/badge/built-Swift%20Package%20Manager-brightgreen" />
    </a>
    <img src="https://img.shields.io/badge/Version-0.1.0-red" />
    <a href="https://www.linkedin.com/in/cauealvessilva/">
        <img src="https://img.shields.io/badge/Contact-CaueAlves-blue" />
    </a>
</p>

# **PodGenerator**

PodGenerator is a command line tool written in Swift that generates your Pod base development workspace with framework and sample app targets.
- Easy setup for a modularized project.
- Create a framework prepared to be distributed using CocoaPods as local or remote, private or public pod.
- Provide a configured workspace for the framework source code with integrated unit tests and a sample app for UX tests simulations.
____

#### Required conditions

- [Homebrew](https://brew.sh/index_pt-br)
- [CocoaPods](https://cocoapods.org) ~> 1.8.1
- [Xcode](https://developer.apple.com/xcode/) ~> 11.0
____

## Installing

#### Make
```shell
git clone https://github.com/CaueAlvesSilva/PodGenerator.git
cd PodGenerator
make install
```

#### Homebrew
```
Coming soon...
```
____

## Usage

Navigate to your repo directory and simply run:
```shell
podgen YourPodName
```

The below folders and files structure will be created:
```
YourPodName
│ - Gemfile
│ - Podile
│ - project.yml
│ - YourPodName.podspec
└── YourPodName
│   │ - Info.plist
│   │ - YourPodName.h
│   └── Classes
│       │ - YourPodName.swift
└── YourPodNameTests
│   │ - Info.plist
│   │ - YourPodNameTests.swift
└── SampleApp
│   │ - project.yml
│   └── SampleApp
│       │ - AppDelegate.swift
│       │ - Info.plist
│       │ - Assets.xcassets
│       │ - Main.storyboard
│       │ - LaunchScreen.storyboard
│       │ - ViewController.swift
```

Then, a script using brew will install and execute [XcodeGen](https://github.com/yonaskolb/XcodeGen) and [Bundler](https://bundler.io) to respectively generate the `.xcodeproj` and `.xcworkspace`.
____

#### Attributions

This tool is powered by:

- [XcodeGen](https://github.com/yonaskolb/XcodeGen)
- [Files](https://github.com/JohnSundell/Files)
____

#### License

PodGenerator is licensed under the MIT license. See [LICENSE](LICENSE) for more info.
____
