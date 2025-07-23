# 🕵️ Detect_IT

**Detect_IT** is a smart, all-in-one mobile app built with Flutter that uses Artificial Intelligence to deliver real-time **image detection**, **math solving**, and **AI image generation** features. The app also allows users to browse their gallery, capture images using the live camera, and interact with a beautiful UI enhanced by **Rive animations**.

---

## 🚀 Features

- 🔐 **Login & Registration**
  - Firebase Email/Password Authentication
  - Google Sign-In integration
  - Separate screens for login and registration

- 🖼️ **Gallery Access**
  - Requests permission and displays all local images in a structured grid
  - Supports image selection for detection or analysis

- 📷 **Live Camera Capture**
  - Capture real-time photos directly from the device's camera
  - Use captured photos for detection or solving tasks

- 🤖 **Image Detection**
  - Analyze and classify objects within any selected or captured image
  - Displays detected labels with confidence scores

- ➗ **Math Solver**
  - Scan handwritten or printed math problems
  - Returns step-by-step solutions using OCR and AI

- 🎨 **AI Image Generator**
  - Enter a text prompt and generate high-quality images using AI APIs

- 🎮 **Smooth UI/UX**
  - Rive animations for loaders, transitions, and states
  - Custom drawer navigation with pages like Home, Profile, Features, and About Us

---

## 🛠️ Tech Stack

| Technology    | Usage                                 |
|---------------|----------------------------------------|
| Flutter       | Cross-platform app development         |
| Firebase      | Auth, Firestore, and Storage backend   |
| Rive          | Animations and UI effects              |
| Camera        | Live image capture                     |
| Image Picker  | Gallery image selection                |
| ML Kit / TFLite | Object detection and math solving    |
| REST APIs     | For AI image generation or math APIs   |
| Provider      | State management                       |

---

## 🛠️ Installation

```bash
git clone https://github.com/yourusername/detect_it.git
cd detect_it
flutter pub get
flutter run
