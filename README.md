# Online_Bookstore
<img width="700" alt="_2021-01-20__10 37 03" src="https://user-images.githubusercontent.com/68542404/109126586-c5a73e00-7790-11eb-8a84-8a8ae836efc6.png">

## Description
> 알라딘 오픈 API를 이용한 도서 구매사이트
>> 중고 책 판매 & 구매 사이트

### Table of Contents
* [개발환경](#개발환경)
* [프로젝트목표](#프로젝트목표)
* [역할분배](#역할분배)
* [DB구조](#DB구조)
* [기능구현](#기능구현)

## 개발환경
| 언어 | 프레임워크 | 서버 | 개발도구 |
|:---:|:---:|:---:|:---:|
|Java 11|SpringBoot v.2.4-[Gradle]|Apach Tomcat v8.5|STS(Spring Tool Stuite4)|
|HTML5/CSS3|JPA||MySQL WorkBench|
|JavaScript|Jquery v.3.2.1||Github|
||Bootstrap|||


## 프로젝트목표
* **REST API 활용** : HTTP 통신으로 DATA를 주고받을 목적으로 사용
* **JPA 사용** : JPA를 사용하여 DATA를 관리하도록 사용 
* **Open API 활용** : Open API 사용하여 필요한 정보를 가공하여 사용할 목적

## 핵심기능
* **장바구니 기능** : 내가 원하는 상품을 장바구니에 담아 한번에 결제 기능 구현
* **주문결제 서비스** : 카카오페이로 결제 가능 구현
* **1:1채팅** : 중고책 거래시 판매자랑 1:1 채팅 기능 구현 

## 역할분배
- **홍지영**
  - 메인페이지 및 카테고리
  - 중고 책 거래
  - 1:1 채팅 기능
- **이서영**
  - 장바구니 
  - 검색페이지 
  - 결제 DB 설계 
- **윤성현**
  - 책 상세 페이지 및 리뷰 기능
  - 장바구니에 담는 기능
  - 리뷰 DB 설계
  - 결제 페이지 및 결제(카카오api) 기능 
## DB구조
<img width="700" alt="스크린샷 2021-02-25 오후 5 40 16" src="https://user-images.githubusercontent.com/68542404/109126448-955f9f80-7790-11eb-85f2-c14d66404121.png">

## 기능구현
- [장바구니 기능](#장바구니-기능)
- [결제 서비스](#결제-서비스)
- [1:1 채팅 기능 구현](#1:1-채팅-기능-구현)
___

## 장바구니 기능
ex) 예시
![ezgif com-gif-to-mp4](https://user-images.githubusercontent.com/68542404/109152219-88ea3f80-77ae-11eb-84da-57da28731aee.gif)

___
## 결제 서비스
이미지 첨부 + 내용 
___
## 1:1 채팅 기능 구현
이미지 첨부 + 내용 
___
