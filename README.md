# 🕵️ Detect_IT

**Detect_IT** is an all-in-one AI-powered mobile app built with Flutter that combines **image detection**, **math solving**, and **AI image generation** into a seamless experience. With Firebase backend integration and stunning UI animations via Rive, Detect_IT offers both functionality and flair.

---

## 📱 App Overview

<p align="center">
  <img src="screenshots/login_register.png" width="600" alt="Login and Registration">
</p>

### Key Functionalities

- 🔐 **Login & Registration**  
  Secure authentication using Firebase Email/Password and Google Sign-In.  
  Supports user-friendly UI with Rive animations.

- 🖼️ **Gallery Access & Camera Capture**  
  - Requests permission and displays all local images.  
  - Allows image capture using the device’s camera.  

<p align="center">
  <img src="screenshots/gallery_camera.png" width="600" alt="Gallery and Camera">
</p>

- 🤖 **Image Detection**  
  Select or capture an image and detect content using an integrated ML model (e.g., TFLite or Firebase ML).

<p align="center">
  <img src="screenshots/classification_drawer.png" width="600" alt="Classification and Drawer">
</p>

- 🧠 **Math Solver**  
  Snap a picture of a math problem and get step-by-step solutions using OCR and custom math logic or APIs.

- 🎨 **AI Image Generator**  
  Enter a text prompt and generate images using APIs like DALL·E or Stable Diffusion.

- 🌐 **Navigation Drawer**  
  Smooth navigation drawer with access to Home, Features, Profile, About Us, and Logout.

---

## 🔧 Tech Stack

| Component      | Technology                    |
|----------------|-------------------------------|
| Frontend       | Flutter (Dart)                |
| Backend        | Firebase Auth, Firestore, Storage |
| Animations     | Rive                          |
| Detection      | TensorFlow Lite / ML Kit      |
| Math Solver    | OCR + Math API / Logic        |
| Image Gen      | AI APIs (DALL·E / Custom)     |
| State Mgmt     | Provider / Riverpod           |

---

## 🛠️ Installation

```bash
git clone https://github.com/yourusername/detect_it.git
cd detect_it
flutter pub get
flutter run
