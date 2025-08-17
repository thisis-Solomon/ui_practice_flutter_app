# ui_practice_flutter_app  

A demo Flutter project created to practice **UI layouts and widgets** in Flutter.  
The goal of this project is to explore and understand how to build user interfaces by experimenting with common Flutter layout and styling widgets.  

---

## Features & Concepts Practiced  

This app demonstrates the use of the following Flutter concepts:  

### 1. **Image Display**

- Enabled image assets via the `pubspec.yaml` file.  
- Understood how to add images to the `assets/` folder and display them using the `Image.asset()` widget.  

### 2. **Basic Layout Widgets**

- **Column** → Arranges widgets vertically.  
- **Row** → Arranges widgets horizontally.  
- **Container** → A box model widget used for alignment, styling, padding, and margins.  

### 3. **Advanced Layout Widgets**

- **Stack** → Places widgets on top of each other (useful for overlays).  
- **Align** → Positions a child widget within its parent using alignment rules.  

### 4. **Styling**

- **BoxDecoration** → Applied background colors, borders, gradients, and rounded corners to containers.  
- **Text & TextStyle** → Customized fonts, sizes, colors, and weights for better text styling.  

### 5. **Layout Control**

- **MainAxisAlignment** → Controls alignment of children along the main axis in `Row` or `Column`.  
- **CrossAxisAlignment** → Controls alignment of children along the cross axis in `Row` or `Column`.  
- **Padding & Margin** → Controlled spacing inside (`padding`) and outside (`margin`) widgets.  

### 6. **Responsive Design**

- **MediaQuery** → Accessed screen size and orientation to make the layout responsive.  
- **SafeArea** → Prevented UI elements from overlapping with system UI (e.g., notches, status bar).  

### 7. **Interactive Widgets**

- **DropdownButton** → Allowed selection from a list of items.  
- **MaterialButton** → Implemented a clickable button with Material design.  

### 8. **Code Organization**

- **Widget Separation** → Broke down large UI into smaller, reusable custom widgets for clarity and maintainability.  

### 9. **Data Structures**

- **List** → Used to manage collections of items (e.g., dropdown options).  

---

## Getting Started  

### Prerequisites

- Install [Flutter SDK](https://docs.flutter.dev/get-started/install).  
- Ensure you have an IDE (VS Code / Android Studio).  

### Running the App

```bash
# Clone this repository
git clone https://github.com/your-username/ui_practice_flutter_app.git

# Navigate to project folder
cd ui_practice_flutter_app

# Get the dependencies
flutter pub get

# Run the app
flutter run

---

# Project Structure

lib/
│
├── main.dart            # Entry point
├── widgets/             # Reusable custom widgets
│   ├── custom_dropdown.dart
├── pages/               # UI screens for practice
│   └── home_screen.dart
assets/
│   └── img/          # Image assets
pubspec.yaml          # Asset & dependency configuration

### Learning Outcomes

1. Through this project, I learned how to:

2. Configure and display assets in Flutter.

3. Use layout widgets (Column, Row, Stack, Align) effectively.

4. Apply styling with BoxDecoration and TextStyle.

5. Control widget alignment and spacing.

6. Build responsive UIs with MediaQuery and SafeArea.

7. Add interactivity with DropdownButton and MaterialButton.

8. Organize code by separating widgets.