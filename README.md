# DependencyInjection

A Swift package for implementing dependency injection using property wrappers. This library simplifies dependency management and promotes testability and loose coupling in Swift applications.

## Features
- **Property Wrapper for Dependency Injection**: Automatically resolve dependencies using the `@Injected` property wrapper.
- **Centralized Dependency Management**: Register and resolve dependencies using the `DependencyContainer`.
- **Support for Optional and Required Dependencies**: Gracefully handle missing dependencies with detailed error messages.

---

## Installation

### Swift Package Manager
#### 1. Using `Package.swift` File:
Add the dependency in your `Package.swift` file:
```swift
.package(url: "https://github.com/unique4sourav/DependencyInjection.git", from: "1.0.0")
```
Then, include the module:
```
import DependencyInjection
```

#### 2. Using Xcode’s "Add Package Dependencies" Option:
If you prefer to add the package through Xcode, follow these steps:

1. Open your Xcode project.
2. Navigate to the project navigator and select your project file at the top of the list.
3. Go to the Package Dependencies tab (usually under the "Swift Packages" section).
4. Click the Add Package button (`+`) at the bottom left.
5. Enter the package URL:

```swift
https://github.com/unique4sourav/DependencyInjection.git
```
6. Select the dependency rule:
    - Up to Next Major Version with a version like 1.0.0.
7. Click Add Package to confirm.
   
Xcode will fetch the package and link it to your project automatically. After the setup, you can start using the package by importing it:
```swift
import DependencyInjection
```

---

## Usage

### Registering Dependencies
```swift
let locationManager = LocationManager()
DependencyContainer.shared.register(locationManager)
```

### Resolving Dependencies
```swift
@Injected var locationManager: LocationManager
```

### Example
```swift
@main
struct WeatherApp: App {
    init() {
        addDependencies()
    }

    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }

    private func addDependencies() {
        let locationManager = LocationManager()
        DependencyContainer.shared.register(locationManager)
    }
}

struct DashboardViewModel: ObservableObject {
    @Injected var locationManager: LocationManager
}
```

---

## Contributing

We welcome contributions! Follow these steps:

1. Fork the repository.
2. Create a feature branch.
3. Commit changes with detailed messages.
4. Open a pull request.

---

## Version
See the [Changelog](CHANGELOG.md) for detailed version history.
