# Flutter Login Page

<div align="center">

<img src="images/icon.jpg" alt="App Logo" width="120" />

<br />

![Flutter](https://img.shields.io/badge/Flutter-Login%20UI-blue?style=for-the-badge&logo=flutter)
![Dart](https://img.shields.io/badge/Dart-Programming-blue?style=for-the-badge&logo=dart)
![Platform](https://img.shields.io/badge/Platform-Web%20%7C%20Mobile-lightgrey?style=for-the-badge)

</div>

## Giới thiệu

**Flutter Login Page** là một project giao diện đăng nhập được xây dựng bằng **Flutter/Dart**.  
Project tập trung vào việc thiết kế màn hình login đơn giản, hiện đại, dễ nhìn và phù hợp cho bài thực hành Flutter UI.

Giao diện sử dụng nền gradient, form đăng nhập dạng card, input field tùy chỉnh, nút login có hiệu ứng nhấn và animation fade-in nhẹ khi mở màn hình.

## Demo
### Video demo


[Video demo project](PASTE_YOUR_VIDEO_LINK_HERE)

### Hình ảnh giao diện

<p align="center">
  <img width="416" height="733" alt="image" src="https://github.com/user-attachments/assets/b70ca72c-4022-4b5c-bf67-6ef779848c89" />
</p>

## Tính năng chính

- Thiết kế màn hình đăng nhập bằng Flutter.
- Giao diện nền gradient hiện đại.
- Card đăng nhập chứa logo, tiêu đề, email field và password field.
- Custom widget cho ô nhập liệu.
- Custom widget cho nút Login.
- Hiệu ứng fade-in khi màn hình được load.
- Hiệu ứng scale nhẹ khi nhấn nút Login.
- Cấu trúc thư mục rõ ràng, dễ bảo trì.

## Công nghệ sử dụng

| Công nghệ | Mô tả |
|---|---|
| Flutter | Framework xây dựng giao diện đa nền tảng |
| Dart | Ngôn ngữ lập trình chính |
| Material Design | Bộ widget giao diện của Flutter |
| AnimationController | Tạo hiệu ứng animation cho màn hình |
| AnimatedScale | Tạo hiệu ứng nhấn cho nút Login |

## Cấu trúc thư mục

```bash
flutter_login_page_dangngocduc/
│
├── android/
├── ios/
├── web/
├── images/
│   ├── icon.jpg
│
├── lib/
│   ├── core/
│   │   └── app_colors.dart
│   │
│   ├── screens/
│   │   └── login_screen.dart
│   │
│   ├── widgets/
│   │   ├── login_button.dart
│   │   └── login_text_field.dart
│   │
│   └── main.dart
│
├── pubspec.yaml
└── README.md
