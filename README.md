# Modular Architecture Example

## Overview

This repository demonstrates a Flutter project following Modular Architecture principles. The goal is to showcase how to structure a Flutter project with a modular approach, making it more scalable and maintainable.

## Modular Architecture

Modular Architecture is an approach to software design where the application is divided into separate modules or packages. Each module encapsulates its own functionality and dependencies, allowing for better separation of concerns, easier maintenance, and improved scalability. 

### Benefits of Modular Architecture

- **Separation of Concerns**: Modules are responsible for specific parts of the application, making it easier to manage and understand.
- **Scalability**: Adding new features or modules doesn’t require significant changes to existing code.
- **Reusability**: Modules can be reused across different projects.
- **Maintainability**: Easier to maintain and test smaller, self-contained modules.

## Project Structure

This project is organized into the following structure:


### `lib/main.dart`

The `main.dart` file is the entry point of the Flutter application. It initializes the app and sets up the routing using `AutoRoute`.

### `packages/network/`

This package contains network-related services and utilities. It includes:

- **ApiService**: Handles API requests and responses.
- **network.dart**: Contains configurations for network communication.

### `packages/fetch_post/`

This package demonstrates how to fetch and display posts. It includes:

- **PostApiService**: Fetches posts from a remote API.
- **post_screen.dart**: Displays a list of posts fetched from the API.
- **models/article_model.dart**: Defines the data structure for articles.

## Getting Started

To get started with this project, follow these steps:

1. **Clone the Repository**

    ```bash
    git clone https://github.com/yourusername/modular_repo.git
    cd modular_repo
    ```

2. **Install Dependencies**

    Make sure you have Flutter installed, then run:

    ```bash
    flutter pub get
    ```

3. **Run the Project**

    To run the application, use:

    ```bash
    flutter run
    ```

4. **Run Tests**

    To run the tests, use:

    ```bash
    flutter test
    ```

## Creating New Packages

To create new packages in this project, use the following command:

```bash
flutter create --template=package packageName
