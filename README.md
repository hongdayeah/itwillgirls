# 도담도담 어린이문화센터

>아동의 성향을 파악할 수 있는 MBTi 테스트를 통해 체험 프로그램을 매칭해주고 
다양한 공연을 예매할 수 있는 웹 사이트 구현 프로젝트입니다.



## 프로젝트 목적
- 아동 문화활동을 촉진할 수 있음.
- 교육적 콘텐츠를 제공할 수 있음.
- 아동 사회성 발달에 기여할 수 있음.

## 개발목적
- 하나의 완전한 웹사이트를 구현함으로써 웹사이트 구축의 흐름을 이해할 수 있음.
- 테스트, 공연좌석선택, 장바구니, 주문 등의 주요 기능을 구현하며 구현에 필요한 부분들을 공부할 수 있음.
- ajax 등 많이 다뤄보지 않은 기술들을 접해볼 수 있음.

## 팀원소개

    홍다예 (PM) : 프로그램 정보 / 강사정보 / 성향정보 / 테스트 / 결과 및 프로그램 매칭 / 장바구니 / 주문내역
    민혜진 : 회원가입 / 로그인 / 회원정보관리 및 수정 / 회원탈퇴 / 마이페이지 / 관리자페이지
    김지현 : 공연정보 / 좌석선택 / 장바구니 / 주문서 / 결제
    김효원 : 대관신청 / 대관내역 / 대관안내 / 공간소개 / 공지사항 / FAQ / 문의게시판

## 프로젝트 설명

    모든 사람들은 자신의 성향에 맞는 취미생활, 문화생활을 즐긴다.
    어린이들은 부모에 의해 문화생활을 경험하는 경우가 많으며 대개는 부모가 원하는 문화생활인 경우가 많다.
    자녀에게 도움이 되는 체험 프로그램을 하고자하는 부모와 원하는 활동을 하고싶어하는 아이의 모든 바람을 충족해주는
    프로그램을 매칭해주면 어떨까? 라는 의문에서 프로젝트를 시작했다.
    내성적인 아이에게는 강제로 자기주도적이고 적극적인 프로그램보단 내면을 진지하게 탐구하는 프로그램으로,
    외향적인 아이에게는 에너지를 바깥으로 표출시키는 프로그램으로 각자의 니즈를 만족시키면서
    알맞은 방향으로 사회성을 기를 수 있도록 유도할 수 있는 방향의 사이트를 제작하려고 했다.

####

    1) 웹사이트의 정보는 비회원도 읽을 수 있지만 테스트 진행 및 예매는 회원만 가능하다.

    2) 회원은 자녀 정보를 등록할 수 있고 해당 자녀의 테스트 결과와 찜한 프로그램 및 예매내역을 마이페이지에서 확인할 수 있다. 

    3) 관리자는 관리자페이지에서 테스트에 대한 정보를 관리할 수 있다.

    4) [프로그램] 탭에서는 해당 센터에서 진행하는 체험 프로그램의 정보와 프로그램을 진행하는 강사정보, 테스트 정보와 테스트진행을 할 수 있고 원하는 프로그램을 장바구니에 넣을 수 있다.

    5) [공연] 탭에서는 해당 센터에서 주최하는 공연의 정보를 확인하고 좌석을 선택하여 장바구니에 넣을 수 있다.

    6) [시설] 탭에서는 해당 센터의 시설 정보와 대관정보를 확인할 수 있다.

    7) [소식] 탭에서는 센터의 공지사항, 자주묻는 질문(FAQ), 문의게시판을 이용할 수 있다.

## 개발일정
![일정1](https://github.com/hongdayeah/itwillgirls/assets/132259579/1caab42b-9b54-4127-8948-59af2c62531d)
![일정2](https://github.com/hongdayeah/itwillgirls/assets/132259579/112028d9-09b7-4622-990a-4faf9cc91737)

## ERD
![erd](https://github.com/hongdayeah/itwillgirls/assets/132259579/42736908-f9c1-4112-a80b-ce301d9d8798)

## 기술스택
#### Frontend
    HTML, CSS, JavaScript, JQuery, Ajax, bootstrap
#### Backend
    Java, JSP, Spring Framework, MyBatis
#### Database
    MariaDB, DBeaver

## 기능설명
#### 프로그램정보 리스트
    설명하는 칸
이미지

#### 프로그램정보 상세보기
    설명하는 칸
이미지

#### 프로그램 등록하기
    설명하는 칸
이미지

#### 프로그램 상세정보(수강정보) 등록하기
    설명하는 칸
이미지

#### 공연정보 리스트

https://github.com/hongdayeah/itwillgirls/assets/135087145/9f4fa025-d863-4187-83ae-d68da5e2ec2d

    현재 진행중인 공연 정보를 확인할 수 있습니다.

    
#### 공연정보 상세보기

https://github.com/hongdayeah/itwillgirls/assets/135087145/38c7dfb7-690f-4943-ad88-05f0e4264a77

    진행중인 공연의 상세정보를 확인할 수 있습니다.
    

#### 공연예매하기

https://github.com/hongdayeah/itwillgirls/assets/135087145/522159db-c813-4c6e-81e7-a5f92eddec6c

    공연예매를 들어가면 공연정보가 적혀있고 수량을 선택할 수 있습니다.
    원하는 선택 수량 후 좌석을 수량(1-5) 선택 후 예매를 진행합니다.
    좌석은 판매가능한좌석/ 불가능한좌석/ 선택한 좌석이 표시됩니다.
    선택한 좌석은 한번 더 선택시 선택이 취소됩니다.
    예매하기를 누르면 공연명/ 날짜/ 시간/ 선택좌석 및 수량 정보가 표시됩니다.
    확인을 누르면 예매 정보가 장바구니로 넘어갑니다.
    

#### 공연 등록하기

https://github.com/hongdayeah/itwillgirls/assets/135087145/0f0ddc26-c7f2-4ba5-ad86-8523e04cce66

    관리자 로그인 시 공연 등록, 수정, 삭제가 가능합니다.


#### 장바구니

#### 결제


각자 원하는 만큼 작성

## 최종산출물
#### 발표 PPT
![슬라이드1](https://github.com/hongdayeah/itwillgirls/assets/132259579/5d13fb77-d3f1-4f35-8d1b-324be824286c)
![슬라이드3](https://github.com/hongdayeah/itwillgirls/assets/132259579/772b8f90-d1f5-404b-b6bd-136d88a7c9d9)
![슬라이드12](https://github.com/hongdayeah/itwillgirls/assets/132259579/d42dc412-9139-420f-8080-b3dbe4c76fbb)
![슬라이드13](https://github.com/hongdayeah/itwillgirls/assets/132259579/7e652f3c-30d9-4dd8-b26d-4bc1362435cf)
![슬라이드14](https://github.com/hongdayeah/itwillgirls/assets/132259579/c38d94a5-6d53-4bc1-9106-e2a3c4ec316e)
![슬라이드15](https://github.com/hongdayeah/itwillgirls/assets/132259579/22b0bdd5-a6a9-4118-9546-f7a1d4e720f5)
![슬라이드16](https://github.com/hongdayeah/itwillgirls/assets/132259579/4376af27-6fea-4d9d-90cc-1418b6969511)
![슬라이드17](https://github.com/hongdayeah/itwillgirls/assets/132259579/29b02537-053a-4dae-b2a8-5d6a9dc5567b)
![슬라이드18](https://github.com/hongdayeah/itwillgirls/assets/132259579/dfc8786b-d274-458c-a224-cfde2bf22052)
![슬라이드19](https://github.com/hongdayeah/itwillgirls/assets/132259579/ec7e9311-1e08-4f37-a542-eb6f9c2e44cc)
![슬라이드20](https://github.com/hongdayeah/itwillgirls/assets/132259579/81cf00ec-a5f9-44e1-8f5f-1c680dc15711)
![슬라이드28](https://github.com/hongdayeah/itwillgirls/assets/132259579/d5e479f8-fb7a-456a-94ac-f8a05f6d1246)
