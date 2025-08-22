# Flutter Demo Task Application

## 📂 Project Setup

Run flutter with the following commands:
flutter pub get
flutter run

---

## 🚀 Features Implemented

### 1. Splash Screen
- Added animation on the text using **`TweenAnimationBuilder`**.  
- The animation scales the child widget within a given duration.  

---

### 2. Home Screen
- Replicated the **Figma UI** as closely as possible (with slight differences in colors).  
- Added **extra features**:
  - **Language Toggle**:  
    - Supported **Korean** (from Figma) and **English** translations.  
    - Implemented using **GetX translations**.  
  - **Theme Toggle**:  
    - Light Theme → Matches Figma design.  
    - Dark Theme → Opposite color scheme.  

---

### 3. Campaign Page
- Loaded images using **NetworkImage** (shows different images each time).  
- Handled loading state.  
- Adjusted selected line styling (smaller looks better in this case).  

---

### 4. Form Pages
- **Form Selection UI** created using a reusable **menu item component**.  
- **Info Form**:
  - Validations for all fields.  
  - Email validation using **Regex**.  
  - Custom **TextField widget** reused across the app.  
- **File Picker**:
  - Added required **Android permissions**.  
  - Integrated file picker to select a file and display the file name.  
- Shows **success message** when all fields are valid.  

---

### 5. Set Password Screen
- Implemented **password validations**.  
- Compared password and confirm password fields.  
- Shows **success message** once validation passes.  

---

## 🛠️ Tech Stack
- **Flutter**  
- **GetX** (for state management, translations, and theme toggle)  
- **Dart**  

---

## 📸 Screenshots / Demo (Optional)
**White Theme**
<img width="1080" height="2400" alt="Screenshot_1755839830" src="https://github.com/user-attachments/assets/869af981-eafd-4b77-8c3f-eaaf2935b52b" />
<img width="1080" height="2400" alt="Screenshot_1755839711" src="https://github.com/user-attachments/assets/9cf25a8b-c136-445a-9fd1-97f5ea1b6aeb" />
<img width="1080" height="2400" alt="Screenshot_1755839758" src="https://github.com/user-attachments/assets/4e22a94c-2ee9-43d8-b637-3faca4ed0687" />
<img width="1080" height="2400" alt="Screenshot_1755839762" src="https://github.com/user-attachments/assets/6c699a82-cd29-4a81-bd66-539d50e48393" />
<img width="1080" height="2400" alt="Screenshot_1755839768" src="https://github.com/user-attachments/assets/c78b8d87-f3b3-4a58-97be-cec4522976f2" />
<img width="1080" height="2400" alt="Screenshot_1755839771" src="https://github.com/user-attachments/assets/df828350-79b9-4dd2-ac7e-670d11dc3334" />


**Dark Theme**
<img width="1080" height="2400" alt="Screenshot_1755839830" src="https://github.com/user-attachments/assets/371cd7c2-ecf6-4191-9ff5-bb8b4baf068e" />
<img width="1080" height="2400" alt="Screenshot_1755839896" src="https://github.com/user-attachments/assets/4535f0cd-bbdb-44f8-92c8-1ad4186670ba" />
<img width="1080" height="2400" alt="Screenshot_1755840034" src="https://github.com/user-attachments/assets/e5991378-2819-4e41-a245-93205b455a01" />
<img width="1080" height="2400" alt="Screenshot_1755840037" src="https://github.com/user-attachments/assets/fbf56763-8cc5-4b07-a9e2-9f2fd9256686" />
<img width="1080" height="2400" alt="Screenshot_1755840042" src="https://github.com/user-attachments/assets/6c8ddade-b40c-4c47-9ada-4b42dc24f41a" />
<img width="1080" height="2400" alt="Screenshot_1755840046" src="https://github.com/user-attachments/assets/cce76ff3-c85a-4664-8a55-3972d8619929" />

**Added a feature Language Toggle between English and Korean**
- As English is already covered in above screens shots so Below is Korean Text UI screen shots.
<img width="1080" height="2400" alt="Screenshot_1755840287" src="https://github.com/user-attachments/assets/4e75dbb3-0e15-4b96-9e20-a1cbbab27037" />
<img width="1080" height="2400" alt="Screenshot_1755840292" src="https://github.com/user-attachments/assets/0523b22c-4eeb-48eb-bb5c-e927d2ae432b" />
<img width="1080" height="2400" alt="Screenshot_1755840296" src="https://github.com/user-attachments/assets/a9473112-e932-4c44-b2f9-7a7188e3faee" />
<img width="1080" height="2400" alt="Screenshot_1755840299" src="https://github.com/user-attachments/assets/04a95a4d-e478-4d45-af9e-b1d37937587f" />
<img width="1080" height="2400" alt="Screenshot_1755840302" src="https://github.com/user-attachments/assets/a21637b1-fc07-43ac-90cf-b3cf3bbf1774" />



---
```bash

