# Calculator App

> 계산기 앱은 Swift와 UIKit을 사용하여 만들어진 간단한 계산기 애플리케이션으로, 자동 레이아웃(Auto Layout), UIStackView, 버튼 커스터마이징 등을 활용하여 기능적이고 시각적으로 매력적인 iOS 앱을 구현하는 것을 목표로 합니다.

---
<p align="">
  <img src="https://github.com/user-attachments/assets/b6bcc689-3bde-4ca2-827a-0ce0e9be7887" alt="Simulator Screenshot" style="width: 30%;">
</p>

## 📝 Project Overview

**계산기 앱**은 기본적인 산술 연산 기능을 제공하며, 사용자 친화적인 UI와 다양한 기기에서 일관된 레이아웃을 유지할 수 있도록 설계되었습니다.

## 🎯 Target Users
- 📱 간단하고 직관적인 계산기를 필요로 하는 모든 사용자
- 👨‍💻 iOS 개발에 관심 있는 개발자 또는 Swift 학습자

---

## 👥 Team Members
| 이름      | 역할       | GitHub                           |
| -------- | -------- | --------------------------------- |
| eden   | iOS 개발자 | [@daydreamplace](https://github.com/daydreamplace) |

---

## ⏰ Project Timeline
11/2024

---

## 🛠️ Technology Stack

### 🎨 Layout and UI
- UIKit
- AutoLayout (SnapKit)

---

## 📱 Key Features

1. **사용자 친화적 UI**  
   버튼은 가로 및 세로 스택 뷰를 사용하여 깔끔하고 정돈된 인터페이스로 배치되었습니다.

2. **동적 레이아웃**  
   SnapKit을 사용한 자동 레이아웃으로 다양한 기기 크기에서도 일관성을 유지합니다.

3. **모던한 디자인**  
   둥근 버튼과 부드러운 색상 테마를 사용하여 깔끔하고 사용자 친화적인 인터페이스를 제공합니다.

---

## 🚀 Installation and Setup

1. 저장소를 클론합니다:
    ```sh
    git clone https://github.com/daydreamplace/calculator-app.git
    ```
2. Xcode에서 프로젝트를 엽니다:
    ```sh
    cd calculator-app
    open calculator-app.xcodeproj
    ```
3. CocoaPods을 통해 SnapKit을 설치합니다 (설치되지 않은 경우):
    ```sh
    pod install
    ```
4. 시뮬레이터 또는 실제 기기에서 프로젝트를 빌드하고 실행합니다.

---

## 📂 Project Structure

- **ViewController.swift**: 버튼 및 레이블의 레이아웃과 사용자 상호작용을 처리하는 로직을 포함합니다.
- **SnapKit**: 간편하고 읽기 쉬운 자동 레이아웃 코드를 위해 SnapKit을 사용하여 다양한 기기에서도 일관된 UI 레이아웃을 보장합니다.

---

## 🎨 Design Approach

- **스택 뷰**: 가로 및 세로 스택 뷰를 사용하여 버튼을 배치하며, 다양한 화면 크기에 적응할 수 있는 반응형 레이아웃을 제공합니다.
- **자동 레이아웃**: 모든 뷰와 UI 구성 요소는 SnapKit으로 정의된 자동 레이아웃 제약을 사용하여 일관적이고 확장 가능한 디자인을 구현합니다.
- **버튼 커스터마이징**: 각 버튼의 배경색, 텍스트 색상, 코너 반경을 커스터마이징하여 모던하고 사용자 친화적인 인터페이스를 만듭니다.

---

## 🔧 Troubleshooting

이 프로젝트는 둥근 버튼을 만들고 모든 기기에서 모양을 유지하는 과정에서 흥미로운 트러블슈팅을 포함하고 있습니다.
- 개발 과정에서 발생했던 일반적인 레이아웃 문제들을 해결한 내용을 [계산기 앱: 버튼의 저주와 원형 복원기](https://velog.io/@daydreamplace/TIL-%EA%B3%84%EC%82%B0%EA%B8%B0-%EC%95%B1-UI-%ED%8A%B8%EB%9F%AC%EB%B8%94%EC%8A%88%ED%8C%85)에서 확인할 수 있습니다.

---

## 📧 Contact
**daydreamplace**에 의해 제작되었습니다. 질문이나 제안이 있으시면 [GitHub](https://github.com/daydreamplace)를 통해 연락해 주세요.

