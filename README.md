# 🕵️ Detect_IT

**Detect_IT** is a smart detection app built with Flutter, Firebase, and integrated Machine Learning to help users identify **[insert what it detects — e.g., inappropriate content, skin diseases, objects, etc.]**. Designed for performance and user engagement, it also uses **Rive animations** to deliver a smooth and modern UI experience.

## ✨ Features

- 📷 Real-time detection via camera or image picker
- 🧠 On-device ML model integration (e.g., TensorFlow Lite / ML Kit)
- ☁️ Firebase Authentication, Firestore, and Cloud Storage
- 🧾 Detection history tracking per user
- 🎨 Smooth Rive animations for transitions, loaders, empty states, and success/failure screens
- 📱 Fully responsive across Android & iOS
- 🔐 Role-based UI/UX (optional if applicable)

## 📽️ Built With

- **Flutter** – Cross-platform UI toolkit
- **Firebase** – Authentication, Firestore, Storage
- **Rive** – Real-time animations in Flutter
- **ML Model** – [Insert your ML framework here]
- **State Management** – Provider / Riverpod / Bloc

## 📸 Screenshots

| Home Screen | Detection Animation | Result |
|-------------|---------------------|--------|
| ![Home](screenshots/home.png) | ![Rive](screenshots/animation.png) | ![Result](screenshots/result.png) |

## 🧩 How It Works

1. User opens the app and is greeted with a Rive-powered intro animation.
2. User captures or selects an image.
3. The image is analyzed using the embedded ML model.
4. Detection results are shown with animated feedback using Rive.
5. History is stored in Firebase per user account.

## 🛠️ Installation

```bash
git clone https://github.com/yourusername/detect_it.git
cd detect_it
flutter pub get
flutter run
