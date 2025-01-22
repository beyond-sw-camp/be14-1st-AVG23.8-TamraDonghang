
<img src = 'https://github.com/user-attachments/assets/b068809e-6ed6-40fd-9d7e-4a2cfd700641'>

## 🍊 탐라동행 - 제주 여행 동행 매칭 서비스


<a href="#1">📁 1. 프로젝트 기획</a>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-1">1-1. 개요</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-2">1-2. 배경 및 필요성</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-3">1-3. 주요 기능</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-4">1-4. WBS(Work Breakdown Structure)</a>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-5">1-5. 요구사항 명세서 </a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-6">1-6. UML(Usecase Diagram)</a>

<a href="#2">🔎 2. DB 모델링</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#2-1">2-1. 개념 모델링</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#2-2">2-2. 논리 모델링</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#2-3">2-3. 물리 모델링</a>

<a href="#3">⚙️ 3. 서버 구축 </a>

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#3-1">3-1. 리플리케이션(Replication) </a>

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#3-2">3-2. DDL </a>

<a href="#4">✍🏻 4. 테스트케이스 </a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#4-1">4-1. 테스트 케이스 정의서 </a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#4-2">4-2. 주요 쿼리문 </a>

<a href="#5">🎮 5. 기술 스택</a>

<a href="#6">📗 6. 회고록</a>

---


## 팀원 (우리는 퍼렁별을 침략하러 온 케로로 소대! AVG 23.8!)

<table style="width: 100%; text-align: center;">
  <tr>
    <td align="center"> <a href="https://github.com/minsun24">정민선</a></td>
    <td align="center"> <a href="https://github.com/wkdlrn">김민주</a></td>
    <td align="center"> <a href="https://github.com/swjang7269">장시원</a></td>
    <td align="center"> <a href="https://github.com/emily9949">황수민</a></td>
    <td align="center"> <a href="https://github.com/zi-won">박지원</a></td>
    <td align="center"> <a href="https://github.com/Hailyee">이혜영</a></td>
  </tr>
  <tr>
    <td align="center"><img src="https://github.com/user-attachments/assets/ec702775-e6b4-49c9-b523-7ac92f7103c8" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/e3d0b6c8-8f22-4db6-96f4-c501bf5c0a40" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/6efd04f1-3fa3-4dd0-9623-c500d088da03" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/536cd15f-3444-4d49-8295-71a767137821" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/f3e406ff-5152-4888-8b1f-a189d318994b" width="150px"/></td>
    <td align="center"><img src="https://github.com/user-attachments/assets/30963746-b9ab-4ba1-8c2c-ce93c8875dcd" width="150px" /></td>
  </tr>
  <tr>
    <td align="center">INFJ</td>
    <td align="center">ISTP</td>
    <td align="center">INTJ</td>
    <td align="center">INFP</td>
    <td align="center">ESFJ</td>
    <td align="center">ESTP</td>
  </tr>
</table>






<br>

## <p id="1">📁 1. 프로젝트 기획</p>


### <p id="1-1">1-1. 개요</p>
‘탐라동행’은 제주도를 여행하는 이들이 동행자를 쉽게 찾고 안전하게 여행할 수 있도록 돕는 동행 매칭 플랫폼입니다.
기존의 여행 카페나 익명 커뮤니티에서 동행자를 구하는 방식에서 벗어나, 편리하고 신뢰할 수 있는 매칭 서비스를 제공합니다.
탐라동행은 사용자가 여행 일정과 조건에 맞는 동행자를 찾고, 여행 정보를 공유하며 안전한 환경에서 제주도를 즐길 수 있도록 설계되었습니다.
탐라동행은 특히, 개인 맞춤형 검색 기능과 공유일정 관리를 통해 안전하고 편한 여행을 지원하며, 실시간으로 여행 정보를 공유할 수 있는 플랫폼을 제공합니다.
이 앱은 여행 중의 불편함과 불안을 해소하고, 동행자와 함께 특별한 추억을 쌓고 싶은 이들에게 이상적인 도구입니다.


### <p id="1-2">1-2. 배경 및 필요성</p>

**1. 기존 동행 찾기의 문제점**:
    여행 동행을 구하려면 대개 특정 커뮤니티에 가입 후 등업이나 활동 조건을 충족해야 하는 번거로움이 존재합니다.
    이는 동행자를 찾는 과정에서 여행지, 일정, 나이대, 관심사 등 세부 조건에 맞는 사람을 찾기 어려워 비효율적입니다.
 또한, 익명성이 높은 환경에서는 신뢰가 어려워, 안전 문제와 관련된 불안감이 큽니다. 특히, 최근에는 여행 동행을 가장한 사기 수법도 늘어나고 있습니다.

<p align = "center">
<img src = 'https://github.com/user-attachments/assets/9160ed55-2047-4623-bdff-363fe7ed4f95' width = "40%">
<img src="https://github.com/user-attachments/assets/40e199cc-c71f-45b0-9ac0-48e62884e7fc" width = 50%>
</p>




**2. 탐라동행의 필요성** :
    제주도는 국내외 여행객에게 가장 인기 있는 여행지로, 혼자 방문하거나 가족과 함께 가는 경우가 많습니다.
동행자가 있을 경우 여행 비용, 이동 수단, 가이드 역할 분담 등에서 효율성이 증대됩니다.

<p align = "center">
<img src = 'https://github.com/user-attachments/assets/eb0d368e-85b6-4e43-adc9-d397d24b59dd' width="30%">
<img src = 'https://github.com/user-attachments/assets/193091c4-32d5-423b-9e1f-d8ed1c77f224' width="50%">
</p>

특히 **여행 플랫폼 앱 시장 현황**을 보면, 2024년 6월 기준, 한국의 여행 플랫폼 앱 사용자 수는 약 969만 명으로, 2019년 6월의 545만 명에서 **사용자 수가 약 2배 증가했습니다.** 
또한 2024년 7월 기준으로, 당근의 **'모임' 서비스**가 출시 1년 만에 이용자 수 1,500만 명을 돌파하며 동행 플랫폼의 대세임을 입증하고 있습니다. 이러한 데이터를 종합하면, 동행 어플 시장은 여행, 소개팅, 모임 등 다양한 분야에서 사용자 수와 이용률이 꾸준히 증가하고 있음을 알 수 있습니다.



### <p id="1-3">1-3. 주요 기능</p>


1. **맞춤형 동행 매칭** : 
여행 지역(제주도), 일정, 인원 수, 관심사 등을 설정해 동행을 구하는 기능을 제공합니다.
조건 검색을 통해 나이대, 성별, 여행 스타일 등 세부적인 기준으로 동행자를 선택할 수 있습니다.
또한 동행자의 동행평점을 알 수 있고, 동행후기를 찾을 수 있어 불순한 의도를 가진 사람을 필터링 할 수 있습니다.

3. **여행 정보 공유 커뮤니티** : 
제주 여행과 관련된 꿀팁, 맛집, 숙소, 정보 등을 자유롭게 게시하거나 다른 사용자의 유용한 정보를 확인할 수 있습니다.
게시글은 추천 수와 최신순으로 정렬 가능하여, 인기 있는 게시글이나 최신 정보를 한눈에 파악할 수 있습니다.
댓글을 통해 커뮤니티 내에서 사용자 간 소통이 가능합니다. 

5. **동행자들간의 일정 공유** : 
매칭된 동행자와 여행 일정을 공유하여 계획을 한눈에 확인할 수 있습니다.
동행자들은 단체 채팅방에서 함께 여행 계획을 세울 수 있습니다. 

 7. **신고 기능** : 
신고시 '처리중, 처리완료, 반려' 의 3가지 상태를 가지고 있어 신고자가 본인의 접수상태를 한눈에 알아볼 수 있습니다.
또한 일정 횟수이상 신고되면 블랙리스트로 올라가 정지되고, 이후에는 관리자가 해당해원을 탈퇴까지 시킬 수 있습니다. 

<br>

### <p id="1-4">1-4. WBS(Work Breakdown Structure)</p>
  [WBS(Work Breakdown Structure)](https://docs.google.com/spreadsheets/d/1NqmHyOibSMeVUvOXEcZrMmShYiXlLGzj6wVhKXOGqn0/edit?usp=sharing)
  
  <img src='https://github.com/user-attachments/assets/ad315591-4821-4f4d-b5e2-f620e8fc83f7'>

### <p id="1-5">1-5. 요구사항 명세서</p>
[요구사항 명세서](https://docs.google.com/spreadsheets/d/1ivOKmSbPaH6LBtRcZFHDeBcYZXUV2hPXxeqiGDib1Iw/edit?usp=sharing)

   <img src='https://github.com/user-attachments/assets/c38b386a-9f5f-49b5-9161-51a38fc947b9' />
<br>

### <p id="1-6">1-6. UML (Usecase Diagram)</p>


  <details>
    <summary>유스케이스 다이어그램</summary>
    <p align = "center">
      <img src = "https://github.com/user-attachments/assets/b64db02f-de72-461e-a1d1-ed76ea9c19ff">
    </p>
  </details>
  
<br>

## <p id="2">🔎 2. DB모델링</p>

### <p id="2-1">2-1. 개념 모델링</p>

<p align = "center">
<img src='https://github.com/user-attachments/assets/207de709-9061-4313-886c-4104ad367118'></p>

### <p id="2-2">2-2. 논리 모델링</p>

- **Barker 표기법**
<p align = "center">
<img src = 'https://github.com/user-attachments/assets/b1926579-9e6a-49a5-b435-3bc81b624ae6'></p>

### <p id="2-3">2-3. 물리 모델링</p>
- **ERD 다이어그램**
<p align = "center">
<img src = 'https://github.com/user-attachments/assets/962e4f8a-f6ad-490d-aff6-19330475b53c'></p>

<br>

## <p id="3">⚙️ 3. 서버 구축</p>

### <p id="3-1">3-1. 리플리케이션(Replication)</p>

<p align = "center">
<img src = 'https://github.com/user-attachments/assets/623697c9-7404-4d6f-a584-7224f97da4ef'>
</p>
리플리케이션(Replication)은 원본 데이터베이스(Master)의 데이터를 복제본 데이터베이스(Slave)로 동기화하여 여러 서버 또는 노드에서 일관성을 유지하는 프로세스를 의미하며 데이터의 가용성, 확장성, 장애 복구 능력을 향상시킵니다.

---
__Master-Slave__ 구조를 사용하였고, 이 구조는 Master 서버와 Slave 서버로 구성됩니다.
* Master 서버: 데이터를 작성하거나 업데이트하는 주체로, 모든 데이터 변경 사항이 여기서 발생합니다.
* Slave 서버: Master 서버의 데이터를 복제하여 읽기(Read) 작업을 주로 담당합니다.

#### master 서버 연동
<p align = "center">
<img src = 'https://github.com/user-attachments/assets/c6dbec7f-5efe-4e5d-8040-fe644ca22c88'>
</p>


#### slave 서버 연동
<p align = "center">
<img src = 'https://github.com/user-attachments/assets/3b7a4392-d5a2-47d7-a66b-c9a8af1f802d'>
</p>

#### master 서버에서 데이터베이스 생성
<p align = "center">
<img src = 'https://github.com/user-attachments/assets/7a3a4c25-75ef-4632-bbfa-7f2a8a21dc90'>
</p>


#### slave 서버에 동기화
<p align = "center">
<img src = 'https://github.com/user-attachments/assets/cb2416c5-ef1f-448d-8412-be61d1d38aa6'>
</p>


#### slave 서버에서 데이터 변경 시 read only옵션으로 인한 오류 발생
<p align = "center">
<img src = 'https://github.com/user-attachments/assets/5c255a64-5a53-4b2e-bc80-0a3ea7b6a089'>
</p>



### <p id="3-2">3-2. DDL</p>
[DDL](DDL/DDL.sql)

<br>


## <p id="4">✍🏻 4. 테스트 케이스</p>

### <p id="4-1">4-1. 테스트 케이스 정의서</p>
[테스트 케이스 정의서](https://docs.google.com/spreadsheets/d/1qIKqDuUsn12XIpt_Lv8IwSrGIWIKXSRWjdEWouPwQac/edit?usp=sharing)

<img src='https://github.com/user-attachments/assets/84bcd445-4cba-4ecf-b82d-f3655b9f394d'>


### <p id="4-2">4-2. 주요 쿼리문</p>


<details>
<summary>👩🏻‍💻 사용자 정보</summary>


<details>
<summary>회원가입</summary>
<p align="center">
  <img src='https://github.com/user-attachments/assets/6b4628c0-2618-4929-8f65-77c48197bb48' />
</p>
</details>
<details>
<summary>회원 신고</summary>
<p align="center">
  <img src='https://github.com/user-attachments/assets/81a3b58c-fd0f-4b0d-8f8d-81207ab34703'/>
</p>
</details>

</details>

<details>
<summary>👥 동행 모집</summary>

<details>
<summary>동행 평점 조회</summary>
<p align="center">
  <img src='https://github.com/user-attachments/assets/ff1e81a2-c815-4fff-8848-fe161d421929' />
</p>
</details>
<details>
 <summary>회원별 선호 여행 스타일 조회</summary>
    <img src='https://github.com/user-attachments/assets/366657dc-25b8-4ed1-b18c-6c0fb364d857' />
</details>
<details>
    <summary>신고 누적 횟수 조회</summary>
  <img src = 'https://github.com/user-attachments/assets/d293c8ce-3d06-42eb-bcac-6f84d089b034'>
  <img src = 'https://github.com/user-attachments/assets/020ac9bd-decf-4396-94c6-4e2ad1d7b223'>
</details>
<details>
    <summary>동행 모집글 작성</summary>
    <img src='https://github.com/user-attachments/assets/68830636-5fe3-466c-acd2-db7e67fa6124'>
</details>

<details>
    <summary>동행 모집글 수정</summary>
  <img src='https://github.com/user-attachments/assets/1f9c3bf4-ef04-4e57-b95d-552e26889628'>
</details>

<details>
    <summary>동행 모집글 삭제</summary>
    <img src = 'https://github.com/user-attachments/assets/8a88fceb-68e9-4e45-a362-0283b7e35895'>
</details>

<details>
    <summary>동행 모집글 사진 추가시 썸네일 방지 트리거</summary>
    <img src = 'https://github.com/user-attachments/assets/afd7fc1e-c060-4083-a87e-86ccf2887a87'>
</details>
<details>
    <summary>동행 모집글 목록 조회</summary>
   <img src='https://github.com/user-attachments/assets/4c1c76d6-10f8-4fec-811e-3005fe4c5970'>
   <img src='https://github.com/user-attachments/assets/35754016-2cad-48a5-8761-70d6dbf731a7'>
  </details>

<details>
   <summary>동행 모집글 내용 조회</summary>
 <img src='https://github.com/user-attachments/assets/c4f78a93-6b96-4fd0-8354-c28e0345e725'>
  </details>
  <details>
   <summary>동행 모집글 조건 조회</summary>
  <img src='https://github.com/user-attachments/assets/0eeda811-16bf-487e-8b28-57645162eac9'>
</details>


<details>
    <summary>지역별 동행 모집 게시글 조회</summary>
        <img src='https://github.com/user-attachments/assets/0227392f-996e-4293-b5c7-f8c5e35043b7' />
</details>

<details>
    <summary>여행스타일별 동행 모집 게시글 조회</summary>
        <img src='https://github.com/user-attachments/assets/ac9ac254-1f3e-44fb-84c4-29ad274156bc' />
        <img src='https://github.com/user-attachments/assets/2aed49e5-bc1e-4d58-a786-f3b28d956566' />
</details>

<details>
     <summary>동행 모집글 상태 변경</summary>
        <img src='https://github.com/user-attachments/assets/2b141522-183b-410f-91c7-5c9588cbfceb' />
</details>
<details>
     <summary>동행 모집글 신청자 목록 조회</summary>
     <img src='https://github.com/user-attachments/assets/54b28158-f13d-46ad-a165-3e9c88739988' />
</details>

<details>
     <summary>동행 참여자 목록 조회</summary>
     <img src='https://github.com/user-attachments/assets/bc75d1ab-ca5e-436a-bfc2-4da41a0da81b'  />
</details>

</details>

<details>
<summary>✏️ 후기</summary>
<details>
     <summary>후기 작성 프로시저</summary>
     <p align = "center">
       <img alt="image" src="https://github.com/user-attachments/assets/b8ab7652-9c16-4778-92ec-81561c011201" />
       <img alt="image" src="https://github.com/user-attachments/assets/0d3eaf81-97cc-45b0-b18b-00187bb6261a" />
     </p>
</details>

<details>
     <summary>회원 평점 업데이트 트리거</summary>
     <p align = "center">
       <img alt="image" src="https://github.com/user-attachments/assets/a6e53732-99a5-4502-966c-2a2da3942063" />
       <img alt="image" src="https://github.com/user-attachments/assets/e12b3789-184e-4cf5-8214-b94b64285314" />
 </p>
</details>
</details>


<details>
<summary>📅 세부 일정</summary>

  <details>
     <summary>여행 일정 수정</summary>
     <p align = "left">
       <img alt="image" src="https://github.com/user-attachments/assets/882bf6ef-e4cb-418f-86c2-741677b437b2" />
     </p>

</details>

<details>
     <summary>여행 일정 삭제</summary>
     <p align = "left">
       <img alt="image" src="https://github.com/user-attachments/assets/9cd53c30-2b9d-4aa8-99e1-eea1dc9363bf" />
     </p>

</details>

<details>
     <summary>여행 일정 조회</summary>
     <p align = "left">
       <img alt="image" src="https://github.com/user-attachments/assets/d105975d-3dff-4d3f-b829-14b140cc4e7b" />
     </p>
</details>
</details>




<details>
<summary>💬 댓글</summary>

  <details>
     <summary>댓글 작성, 수정, 삭제</summary>
     <p align = "left">
       <img alt="image" src="https://github.com/user-attachments/assets/707600d3-20fe-4aac-aaeb-2ca668c563c7" />
       <img alt="image" src="https://github.com/user-attachments/assets/f8ea36c0-439c-41ef-a616-ef88ed1772a5" />
       <img alt="image" src="https://github.com/user-attachments/assets/e189605f-0c09-45fb-aef6-27b824baf0d2" />
     </p>


</details>

<details>
     <summary>대댓글 작성, 수정, 삭제</summary>
     <p align = "left">
       <img alt="image" src="https://github.com/user-attachments/assets/01e59751-efbe-4f11-bc7b-e5c1daa2e105" />
       <img alt="image" src="https://github.com/user-attachments/assets/89b46022-5728-4d58-b9bc-f6540d6289bd" />
       <img alt="image" src="https://github.com/user-attachments/assets/9fbc570b-f778-492a-9cfb-74ce127cd7de" />
     </p>


</details>
</details>



<details>
<summary>🎳 커뮤니티</summary>

<details>
     <summary>커뮤니티 게시글 작성</summary>
     <p align="center">
       <img src="https://github.com/44ll4l/testproj/blob/main/image.png?raw=true" />
     </p>
</details>

<details>
     <summary>커뮤니티 게시글 수정</summary>
     <p align="center">
       <img src="https://github.com/44ll4l/testproj/blob/main/image-2.png?raw=true" />
     </p>
</details>

<details>
     <summary>커뮤니티 게시글 삭제</summary>
     <p align="center">
       <img src="https://github.com/44ll4l/testproj/blob/main/image-3.png?raw=true" />
     </p>
</details>

<details>
     <summary>추천수 업데이트</summary>
     <p align="center">
       <img alt="추천수 업데이트" src="https://github.com/44ll4l/testproj/blob/main/image-4.png?raw=true" />
     </p>
</details>

<details>
     <summary>커뮤니티 게시글 목록 조회</summary>
     <p align="center">
       <img alt="커뮤니티 게시글 목록 조회" src="https://github.com/44ll4l/testproj/blob/main/image-5.png?raw=true" />
     </p>
</details>

<details>
     <summary>커뮤니티 댓글 작성</summary>
     <p align="center">
       <img alt="커뮤니티 댓글 작성" src="https://github.com/44ll4l/testproj/blob/main/image-6.png?raw=true" />
     </p>
</details>

<details>
     <summary>커뮤니티 댓글 수정</summary>
     <p align="center">
       <img alt="커뮤니티 댓글 수정"src="https://github.com/44ll4l/testproj/blob/main/image-7.png?raw=true" />
     </p>
</details>

<details>
     <summary>커뮤니티 댓글 삭제</summary>
     <p align="center">
       <img alt="커뮤니티 댓글 삭제" src="https://github.com/44ll4l/testproj/blob/main/image-8.png?raw=true" />
     </p>
</details>

<details>
     <summary>커뮤니티 대댓글 작성</summary>
     <p align="center">
       <img alt="커뮤니티 대댓글 작성" src="https://github.com/44ll4l/testproj/blob/main/image-9.png?raw=true" />
     </p>
</details>

<details>
     <summary>커뮤니티 대댓글 삭제</summary>
     <p align="center">
       <img alt="커뮤니티 댓글 삭제" src="https://github.com/44ll4l/testproj/blob/main/image-10.png?raw=true" />
     </p>
</details>


  
</details>



<details>
<summary>📌 공지사항</summary>
  <details>
     <summary>공지사항 등록 및 조회</summary>
     <p align = "left">
       <img alt="image" src="https://github.com/user-attachments/assets/0bee98e5-09b1-4ed2-9044-9a6ecde65737" />
       <img alt="image" src="https://github.com/user-attachments/assets/67238484-b214-461d-9ba6-2d8ac0485a02" />
     </p>
</details>

<details>
     <summary>공지사항 수정</summary>
     <p align = "left">
       <img alt="image" src="https://github.com/user-attachments/assets/fc486292-5738-4505-849f-50602adfc135" />
     </p>
</details>

<details>
     <summary>공지사항 삭제</summary>
     <p align = "left">
       <img alt="image" src="https://github.com/user-attachments/assets/8c3376fd-7b92-4ac1-a92e-92313c2ac1a8" />
     </p>
</details>
</details>




<details>
<summary>🔒 회원관리</summary>
  <details>
     <summary>규제 종료 시간 계산 프로시저</summary>
     <p align = "left">
       <img alt="image" src="https://github.com/user-attachments/assets/5c926f5d-7940-45ef-b354-8f912de54ddc" />
       <img alt="image" src="https://github.com/user-attachments/assets/ee9c8449-ce54-48ec-bada-0fedb43fa955" /> <br>
       - 규제 3회시 블랙리스트 등록 <br>
       <img alt="image" src="https://github.com/user-attachments/assets/c7017ecc-bcdd-430a-813d-e19f8ccbd9d0" />
     </p>
</details>

<details>
     <summary>계정 활성 상태 및 규제 횟수 업데이트 트리거</summary>
     <p align = "left">
       <img alt="image" src="https://github.com/user-attachments/assets/f8d41476-8ff4-40fb-a6e9-25d987c0b45b" />
       <img alt="image" src="https://github.com/user-attachments/assets/2a61461d-5021-42e5-aac8-a3d48dfef8ac" /> <br>
       - 수동 업데이트 가능 <br>
       <img alt="image" src="https://github.com/user-attachments/assets/1d8cf27c-d711-441c-bdc1-614c521d57c8" />
     </p>
</details>

<details>
     <summary>신고 상태 업데이트 트리거</summary>
     <p align = "left">
       <img alt="image" src="https://github.com/user-attachments/assets/fd61e806-20d8-415c-91bc-6c7167960097" />
       <img alt="image" src="https://github.com/user-attachments/assets/3f3c7fa3-7c50-4287-aff9-c8fe2e1a480c" /> <br>
       - 수동 업데이트 가능 <br>
       <img alt="image" src="https://github.com/user-attachments/assets/81d18c2b-6456-4510-b290-1c07fd3738ee" />
     </p>
</details>

<details>
     <summary>계정 활성 여부 업데이트 프로시저</summary>
     <p align = "left">
       <img alt="image" src="https://github.com/user-attachments/assets/42719c91-8bb2-404f-8a25-f420a16b0ed5" />
       <img alt="image" src="https://github.com/user-attachments/assets/2ba8f9ff-5818-424e-affc-ede45f4177c9" />
     </p>
</details>

</details>

## <p id="5"> 🎮 5. 기술 스택 </p>

<div >
  <img src="https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white" />
  <img src="https://img.shields.io/badge/HeidiSQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" />
    <img src="https://img.shields.io/badge/ERD_Cloud-4A90E2?style=for-the-badge&logo=cloud&logoColor=white" />
  <img src="https://img.shields.io/badge/DA%23MODELER-1D3557?style=for-the-badge&logo=diagram&logoColor=white" />
  <img src="https://img.shields.io/badge/Draw.io-F08705?style=for-the-badge&logo=diagrams.net&logoColor=white" />
 
</div>
<div>
   <img src="https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=notion&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white" />
  <img src="https://img.shields.io/badge/Google_Docs-4285F4?style=for-the-badge&logo=google&logoColor=white" />

</div>


<br>


## <p id="6">📗 6. 회고록</p>

| 조원명 | 회고록 |
| --- | --- |
| 정민선 | 우리 팀의 꼼꼼하고 똑똑하고 귀여운 도로로 민선이가 있어서 좋았어요. 정리왕 민선님! 프로젝트 기간 동안 민선님이 꼼꼼하게 기록하고, 문서화해주셔서 수월하게 진행할 수 있었습니다. 제가 잘 모르는 부분들을 항상 명확히 이해하기 쉽게 알려주신 우리 민선님! 늘 감사하고 많이 배웁니다. 프로젝트 기간 동안 중심을 잘 잡아주셔서 감사합니다. 잘 정돈된 문서정리 덕분에 참여하지 않은 부분도 한 눈에 이해하기 좋았습니다. 세부적인 디테일을 놓치지 않고 문제점을 확실히 파악해주어 프로젝트의 완성도를 높이는데 도움이 되었습니다. 한 번에 수정사항을 말하지 않고 그때 그때 수정사항을 말씀드려서 귀찮았을텐데 인상쓰지않고 수정사항을 바로 바로 반영해주셔서 감사합니다. 우리팀의 숨은 공신! 꼼꼼하게 문서로 정리 기록해주신 덕분에 수월하게 프로젝트를 마칠 수 있었습니다. 감사합니다!|
| 김민주 | 첨에 이 팀을 선택하게 된 것은 당신이 열심히 준비한 멘트덕분이었어요 덕분에 좋은 인연이 생겼어요. 개인사정으로 수업에 참여하지 못한 날에도 디코를 통해 회의에 참여하는 등 프로젝트에 대한 열정과 의지를 보여주신 민주님! 민주님과 같은 팀을 해서 좋았습니다. 전공자가 아니라 힘들었을텐데도 힘든 내색없이 끝까지 열심히 해주신 민주님. 빠진 날도 있었는데도 이해하려고 노력하고 물어보는 모습이 좋았습니다. 모르는 부분이 있으면 알아가려는 모습, 최대한 참여하려는 모습에서 감동했습니다. 열정 정말 대단해요! 책임감 있는 모습이 인상 깊었어요. 최고!|
| 황수민 | 하나하나 섬세하게 처리하고 특히 미감 좋은 수민누나가 있어서 행운이에요. 언제나 의견에 경청하고 교통정리 해주시는 수민님. 모두가 의견을 낼 수 있는 분위기를 만들어주셔서 좋았습니다. 모두의 의견을 모아 한 곳을 향하여 달릴 수 있었던건 뒤에서 묵묵히 조율해주신 수민님 덕분입니다. 늘 프로젝트를 어떻게 구현하면 좋을지 고민하는 자세를 가졌던 수민님! 아이디어 구상부터 수민님 손길이 있어 완성도가 높아졌어요. 팀원들 의견 최대한 수용하려하는 모습 보기 좋았습니다. 미대급 디자인 능력 대단해요! |
| 장시원 | 우리 팀의 브레인!, 정말 개발에 소질이 있는 것 같아요 대장님 같은 팀이어서 좋았습니다:) DB 모델링 과정에서 많은 아이디어를 내주시고, 어려운 부분을 도와주신 시원님 덕분에 프로젝트를 잘 마무리한 것 같습니다. 마지막 발표도 너무 멋지게 해주셨습니다. DB 설계 과정에서 놓칠 수 있는 부분을 꼼꼼히 찾아주신 덕분에 완성도 있는 DB가 탄생할 수 있었던 것 같아요! 발표도 부담 많으셨을텐데 너무 잘 해주셔서 감사했습니다. 최고! 발표 많이 떨렸을 텐데 질문 대응도 멋지게 해주신 시원님, 오류나거나 모르는 부분이 있었을 때 도와주셔서 감사했습니다. 막히는 부분 있으면 뚫어뻥처럼 뚫어주시고, 프로젝트 캐리해주신 중사님 감사합니다!|
| 박지원 | 처음에 어색할 수도 있었는데 팀 분위기를 잘 이끌어줘서 고마워요 형님. 팀의 분위기 메이커이신 지원님, 덕분에 팀원들끼리의 단합력이 올라갈 수 있었습니다. 적극적으로 의견과 아이디어를 내주셔서 좋았습니다. 적극적으로 의견조율을 해주고 프로젝트를 추진해주셔서 감사합니다. 먼저 편하게 분위기를 만들어주셔서 부담없이 의견을 제시할 수 있었습니다. 팀을 하나로 모으는 기운을 가진 지원님, 덕분에 화목한 분위기를 만들 수 있었어요. 능력 성격 모두 정말 최고! 적극적으로 임하시는 모습에 저도 동기부여가 되었던 것 같아요! |
| 이혜영 | 분위기 메이커이자 추진력 갑 혜영님. 프로젝트의 방향성을 빠르게 잡아주셔서 저희 팀의 프로젝트 진행 속도가 제일 빨랐던 것 같습니다. 프로젝트를 함께 하는 동안 혜영님 덕분에 즐거웠어요! 모두가 어색한 분위기 속에서 제일 먼저 나서 벽을 허물어 주신 분위기 메이커 혜영님 덕분에 편한 분위기 속에서 프로젝트를 할 수 있었습니다. 팀명 선정부터 어떤 것을 해야 할지 막막할 때 시원하게 먼저 아이디어 및 의견 내주신 덕분에 수월하게 할 수 있었습니다. 감사합니다! 팀원들을 북돋아주는 마음씨가 예뻤던 혜영님! 자신감을 가질 수 있도록 격려해주는 분위기를 조성해주셔서 감사했습니다. 아이디어 뱅크인 것 같아요 같이 팀을 하면서 즐거웠어요! | 







## 정민선
| 조원명 | peer review |
| --- | --- |
| 김민주 | 민선님께서는 제가 누락한 부분이나 모르는 부분을 명확하게 짚어주시고 항상 함께 고민해주셨습니다. 덕분에 프로젝트를 하면서 알게 되는 부분이 많았고 함께 성장하는 기쁨을 느낄 수 있었습니다. 또, 중요한 정보를 빠르게 기록하시는 습관을 가지고 계십니다. 초안을 누구보다 먼저 작성하고 계셨던 민선님으로 인해 팀원 모두가 자료를 쉽게 볼 수 있었습니다. 중심을 잘 잡아주셔서 프로젝트 진행이 보다 수월하게 흘러갈 수 있었습니다. 혼자서 가장 많은 역할을 하는 모습을 보면서 옆에서 많이 배울 수 있었어요. 더 나은 결과물을 위해 고민하시는 민선님의 집요함으로 많은 문제를 해결할 수 있었습니다. |
| 황수민 | 항상 회의 내용을 꼼꼼하게 기록하고 문서화해주시는 정리왕 민선! 도로로 민선이 덕분에 프로젝트를 수월하게 진행할 수 있었어요. DA#을 활용해 논리 모델링을 할 때, 민선님의 노트북으로만 작업해야 해서 부담이 되었을 수도 있었을 텐데, 힘든 내색 없이 꼼꼼히 피드백해주셔서 정말 고마웠어요. UML 구상이나 스프레드시트를 사용한 요구사항 명세서와 테스트 케이스 작성 등에서 민선님이 항상 먼저 구조와 틀을 잡아주셔서 나머지 팀원들은 편하게 작업할 수 있었던 것 같아요. 프로젝트 기간 동안 묵묵히 많은 것을 기여해준 당신! 프로젝트의 숨은 일등 공신입니다!|
| 장시원 | 잘 정돈된 문서정리 덕분에 참여하지 않은 부분도 한 눈에 이해하기 좋았습니다. 세부적인 디테일을 놓치지 않고 문제점을 확실히 파악해주어 프로젝트의 완성도를 높이는데 도움이 되었습니다. 꼼꼼하게 검토하고 수정해야할 부분에 대하여 찾아주셔서 프로젝트의 완성도가 올라간 것 같습니다. 뒤에서 항상 묵묵하게 일을 해주고 틀을 준비해주어 오직 프로젝트 진행에만 집중할 수 있도록 해주어 모두가 편하게 진행할 수 있었던 것 같습니다. 도로로처럼 티안내고 모두를 편하게 해주는 은둔고수 민선님 프로젝트 내내 감사했습니다. |
| 박지원 | 요구사항명세서와 테스트케이스 작성과 같은 문서 작업이 필요한 과정에서 문서 작업할 수 있는 기본적인 틀을 바로 바로 만들어주셔서 감사합니다. 필요할 때마다 뚝딱 만들어주시는 능력 정말 대단한 것 같아요! 수정사항이 생길 때마다 꼼꼼하고 세심하게 수정 작업을 진행해주시고 번거로웠을 법한 문서화를 묵묵하게 해주신 덕분에 프로젝트가 원활하고 또 모두가 편하게 진행할 수 있었던 것 같습니다. 정말 감사합니다! |
| 이혜영 |귀엽고 세심하고 똑똑하고 꼼꼼한 우리 팀의 도로로 민선이!~, 말하지 않아도 뒤에서 묵묵히 일을 해주고 있어서 티는 안 났을지 몰라도 나는 네가 엄청난 노력을 기울였음을 알고 있어 아마 다른 팀원들도 다 그렇게 느꼈을 것 같은데  그래서 이번 프로젝트 때 너랑 해서 행운이었고 너무 고마웠다는 말을 하고 싶네! 당신의 세심하고 꼼꼼한 부분이 특히 저에게는 부족하다고 생각하는 부분이라서 특히나 좋았어요 티도 안내고 열심히 해서 어디에서 이용당하지 않을까 걱정되긴 하지만... 그럴 떈 날 불러... 내가 지켜줄게... |

## 김민주
| 조원명 | peer review |
| --- | --- |
| 정민선 | 프로젝트 기간동안 책임감 넘치는 모습을 보여주셨어요. 참여가 어려운 상황에서도 최선의 방법을 찾아서 적극적으로 임하는 모습이 인상 깊었습니다!!! 민주님이 준비해주신 자료 덕분에 발표 방향을 잡고, 수월하게 진행할 수 있었던 것 같아요. 앞으로 함께 성장해 나갔으면 좋겠어요!! ~! 파이팅 :)  |
| 황수민 | 처음 리더를 맡아 팀원 모집을 하셨을 때 준비해오신 멘트를 듣고 이 팀에 합류하지 않을 수 없었어요. 비전공자이셔서 수업 내용을 따라가며 DB 프로젝트까지 진행하느라 정말 정신없으셨을 텐데, 모르는 부분은 팀원들에게 적극적으로 질문하며 열심히 참여하는 민주님 모습이 보기 좋았습니다. 개인 사정으로 수업에 참여하지 못한 날에도 디스코드를 통해 회의에 참여하며 프로젝트에 대한 열정과 의지를 보여주신 민주님! 민주님은 앞으로 실력이 금방 성장하실 거라고 확신합니다.|
| 장시원 | 전공자가 아니라 힘들었을텐데도 힘든 내색없이 끝까지 열심히 해주신 민주님. 빠진 날도 있었는데도 이해하려고 노력하고 물어보는 모습이 좋았습니다. 발표 직전까지고 물어보며 맞춰주시러 노력하고 맡은 부분을 끝까지 해내는 모습 너무 멋졌습니다. 민주님의 프로젝트에 임하는 태도면 무엇을 해도 성공할 것 같습니다. |
| 박지원 | 비전공자임에도 불구하고 기죽지 않고 프로젝트 내내 맡은 업무를 잘 수행해주신 덕분에 수월하게 프로젝트를 마칠 수 있었습니다. 모르는 부분은 팀원들한테 물어봐가며 적극적으로 참여하시려는 모습 정말 멋있으시고 이런 태도는 저도 본 받고 싶네요. 또 개인 사정으로 수업에 못 오셔서 프로젝트 참여가 어려운 날에도 피해주지 않으려 디스코드로 어떻게든 참여하시려는 모습이 정말 대단하십니다! 이러한 열정 덕분에 저도 더 힘 내서 할 수 있었습니다. |
| 이혜영 |민주님~, 처음에 이 팀을 선택하게 된 것은 열심히 멘트를 먼저 생각해온 민주님의 준비성을 보고였어요. 그리고 비전공자임에도 주변 사람들에게 모르는 부분을 잘 물어보고 배우려는 태도가 저는 기억에 많이 났답니다. testcase를 일일이 확인하는 것도 민주님에겐 힘들 수 있었을 텐데, 해당 부분을 잘 마무리하셔서 정말 멋있어요 민주님 그리고 몸이 약하신 것 같은데 꼭 식사는 거르지 마시고 따뜻하게 입고 다니셔요 건강이 최고입니다 츠츠츠 |


## 황수민
| 조원명 | peer review |
| --- | --- |
| 정민선 | 수민님의 잘 정리된 아이디어 덕분에 빠르게 방향성을 잡고, 이번 팀 프로젝트를 수월하게 시작할 수 있었던 것 같아요. 회의를 할 때나, 의견을 나눌 때 항상 경청해주시고, 의견을 조율하는 역할을 해주신 것 같습니다. 마지막 발표자료를 정리해주실 때 정말 든든했어요 !_! 정말 센스가 남다르신 것 같아요~!@~! |
| 김민주 | 수민님은 이번 프로젝트에서 돋보이는 아이디어 제시와 뛰어난 PT 자료 구성 능력을 보여주셨습니다.  기획 회의에서 제안하신 수민님의 아이디어로 프로젝트의 방향성을 설정하는 데 결정적인 역할을 했습니다. 동료들의 의견에 대해 항상 열린 자세로 경청해주셔서 편하게 의견을 나눌 수 있던 것 같습니다. PT 자료 초안이 초반에 굉장히 가시성이 부족했는데 수민님의 손길로 이해하기 쉬운 자료를 만들 수 있었습니다. 책임감이 멋있었던 수민님 덕분에 프로젝트가 더욱 풍성하고 완성도 있었습니다. |
| 장시원 | 언제나 의견에 경청하고 교통정리 해주시는 수민님.  의견을 무시하지 않고 함께 고민하는 태도덕에 모두가 의견을 편하게 낼 수 있었던 것 같습니다. 모두의 의견을 모아 한 곳을 향하여 달릴 수 있었던건 뒤에서 묵묵히 조율해주신 수민님 덕분입니다. 발표준비하느라 자료에는 많은 신경을 못썼지만 신경을 안써도 될 정도의 퀄리티로 준비해주셔서 감사했습니다. 수민님의 미적 감각이 저희 프로젝트를 더 돋보이게 만든 것 같아요. |
| 박지원 | 물리 모델링이나 테스트 케이스 작성할 때 팀원들의 의견에 답변도 잘 해주시고 또 같이 고민하고 팀원들의 의견을 최대한 수용하여 꼼꼼하게 작성하고 수정하려 하는 모습 정말 보기 좋았습니다. 맡은 쿼리문 또한 쉽게 넘어갈 수 있었지만 더 고민하고 수정해주신 덕분에 문제 없이 수월하게 프로젝트가 진행될 수 있었던 것 같습니다. 다른 팀원분께서 ppt 정말 잘 만들었다고 말씀해주셨는데 수민님의 섬세하고 뛰어난 디자인 능력 덕분이라 생각하고 덕분에 더욱 완성도 있게 프로젝트를 마무리할 수 있었습니다.|
| 이혜영 |수민님!~, 우연히 짝꿍이 되었지만 당신을 짝으로 맞이한 것은 굉장한 행운이었다예.. 츠츠츠 다른 사람들의 의견도 적극 수용할 줄 알고 고치면서 또한 사소한 부분도 다 기억하고 ERD CLOUD를 꼼꼼하게 점검하는 모습이 저는 좋았어요. 또 다른 사람들의 질문에도 같이 고민하고 적극적으로 답을 내주려고 노력하는 모습이 기억에 남아요. 특히나 당신의 미적인 감각이 좋아서 우리 팀의 퀄리티가 한층 더 올라간 것이랍니다. 첫 프로젝트를 당신과 해서 영광이어요 다음에도 기회가 된다면 같이 하고 싶어요!  또 보자네!|

## 장시원
| 조원명 | peer review |
| --- | --- |
| 정민선 | DB 모델링 과정에서 막히는 부분을 논리정연하게 정리해주시는 모습을 보며 많이 배웠습니다. 최종 DDL 작성도 수정에 수정을 거치며 꼼꼼하게 마무리해주셔서 믿고 테스트해볼 수 있었어요.발표가 부담스러우셨을 텐데 차분하게 잘 마무리해주셔서 정말 감사했습니다!!  |
| 김민주 | 시원님은 제가 어려워하는 부분에 대해 친절하게 설명해주시고 오류 문제 해결에 큰 도움을 주셨습니다. DDL 작성 과정에서 모든 팀원의 테스트 케이스가 완벽하게 작동하도록 끊임없이 수정하며 꼼꼼함을 보여주셨습니다. 시원님께서는 수많은 오류들을 인내심을 가지고 수정하며 완벽한 결과물을 만들어냈습니다.또한, 발표가 부담이 많이 됐을텐데 침착하게 내용을 전달하고 Q&A에 대한 답변 또한 명확하게 해주셨습니다. 다재다능한 시원님의 전문성에 감탄했습니다. |
| 황수민 | 우리 팀의 대장님! 초반에는 조용한 이미지였지만 프로젝트를 진행하면서 보여주신 스마트하고 논리적인 모습에 놀랐습니다. 특히 DB 모델링 과정에서 많은 팀원이 어려움을 겪을 때, 시원님이 명쾌한 해답을 제시하거나 막힌 부분을 해결해주셔서 정말 든든했습니다. 이사 기간과 겹쳐 발표를 준비할 시간이 부족하셨을 텐데도 멋지게 발표를 마치고, 질문에도 자신감있게 답변해주셔서 감탄했습니다. 시원님 덕분에 프로젝트를 성공적으로 마칠 수 있었던 것 같아요! 우리 팀의 에이스는 시원님이었던 걸로~ |
| 박지원 | 저의 짝꿍 시원님! 옆에서 모르는 부분이나 막히는 부분 물어보면 항상 적극적으로 해결해주시고 알려주셔서 정말 감사합니다. 프로젝트 진행 중에 팀원들이 막히거나 고민하고 있을 때 적극적으로 의견 내주시고 시원하게 해결해주셔서 수월하게 프로젝트를 진행할 수 있었습니다. 발표 전 큰일났다면서 불안해하시는 모습과는 다르게 막상 발표 시작하니 막힘 없이 잘 하시는 모습에 놀랐고 폭풍같은 질문들을 가볍게 해결하시는 모습 정말 멋있었습니다! 시원님이 없었다면 이런 완성도를 내기 힘들었을 것 같아요. 감사합니다!|
| 이혜영 | 시원님!~, 우리 팀에서 없어서는 안되었을 존재였음을 팀프로젝트하면서 많이 느꼈습니다. 이를 통해서 아 나도 더 열심히 해야겠다 생각하게 되는 계기가 되었어요! 저도 남에게 동기부여를 줄만큼 다음 프로젝트에서는 더 많은 기여를 해야겠다는 생각이 들어요. 그리고 다른 사람의 의견에도 적극적으로 귀기울이고 답을 내주고 하는 과정에서 특히나 이런 생각을 많이 느꼈답니다. 정말 코딩이랑 적성이 잘 맞으시는 것 같아요. 특히 프로시저나 트리거 제약조건을 세심하게 체킹하는 부분이 대단했습니다! |

## 박지원
| 조원명 | peer review |
| --- | --- |
| 정민선 | 프로젝트 기간동안 적극적으로 의견도 내주시고 의논이 필요한 부분을 놓치지 않고 찾아주셔서 많이 배웠습니다. 항상 팀 분위기를 편안하게 해주셔서 감사했어요! 조에서 한 줄기 빛으로 레플리케이션을 담당해주셔서 정말 든든했습니다!! 더미 데이터 제공해주신 것도 그렇고, 필요한 일들을 먼저 나서서 해주셔서 많은 도움이 되었습니다.  |
| 김민주 |  지원님은 팀의 분위기 메이커 역할을 톡톡히 해내며 긍정적인 분위기를 조성하는 데 크게 기여해주셨습니다. 어려운 결정을 내려야 할 때면 주도적으로 아이디어를 제시하여 의견을 하나로 모으는 데 힘써주셨습니다. 블랙리스트 처리 효율 방안 해결과 같이 팀이 올바른 방향으로 나아갈 수 있도록 이끌었습니다. 흩어지는 의견과 단합력을 한 곳으로 모으는 힘을 가진 것 같다고 생각했습니다. 지원님의 적극적인 태도로 성공적인 프로젝트 완수에 큰 힘이 되었습니다. |
| 황수민 | 우리 팀의 분위기 메이커 지원님! 우리 팀이 서로에게 마음을 열고 친해질 수 있었던 건 지원님이 항상 분위기를 즐겁고 유쾌하게 이끌어주신 덕분이라고 생각해요. 지원님 덕분에 저희 케로로 중사대가 하나로 뭉칠 수 있었습니다. 항상 적극적으로 의견을 내주시고, 모르는 부분이 있을 때 그냥 넘어가지 않고 한 번 더 질문하며 확실히 짚고 넘어가는 모습이 인상 깊었던 것 같아요. 지원님의 질문 덕분에 저 또한 애매하게 넘어갔던 부분을 다시 생각해볼 수 있었습니다! 그리고 혼자 도맡게 되신 리플리케이션 작업도 훌륭히 해내주셔서 정말 든든했습니다! |
| 장시원 | 적극적으로 의견과 아이디어를 내주셔서 좋았습니다. 적극적으로 의견조율을 해주고 프로젝트를 추진해주셔서 감사합니다. 맏형의 입장에서 먼저 편하게 분위기를 만들어주셔서 부담없이 의견을 제시할 수 있었습니다. 물어본 것에 대해서 진지하게 고민해주고 대답해주는 모습이 짝꿍으로 만나 좋았습니다. 더미데이터부분을 만드는데 자꾸 에러가 나는데도 끝까지 노력하고 완성하는 모습 인상 깊었습니다. 혼자 맡게된 replication부분도 잘 완수하고 마무리해줘서 감사합니다. |
| 이혜영 |지원님~ 처음 팀이 되고 밥을 먹었을 때는 이렇게 편해질 줄 몰랐어요. 본인의 친동생보다 어린.. 저의 조금 장난스런 태도에도 잘 받아주셔서 감사했습니다~ 막내온탑이어야 그 팀의 분위기가 좋은 거 아시죠?? 덕분에 팀의 막내지만 이것저것 의견을 잘냈던 것 같아요 맡으신 testcase 부분도 처음에 join이 잘 안되었지만 끝까지 하신게 기억에 남아요. 또 더미데이터 생성하는 게 귀찮고 힘든 부분이었을텐데 포기하지 않고 꼼꼼하게 점검해주신 덕분에  마지막까지 잘 마무리할 수 있었습니다!  |

## 이혜영
| 조원명 | peer review |
| --- | --- |
| 정민선 | 아이디어 뱅크 혜영님 덕분에 프로젝트를 즐겁게 마무리할 수 있었던 것 같아요! 매사에 적극적이고 추진력 있게 실행하는 모습을 보고 많이 배웠습니다.!!  팀 분위기를 밝고 긍정적으로 이끌어 주셔서 정말 감사했어요~!~ 맡은 일을 깔끔하게 해내시는 모습이 인상 깊었습니다. 친구를 만나서 넘 좋았어요 앞으로의 인연 오래 이어가요 ~!~!~! |
| 김민주 | 혜영님은 팀원들의 자신감을 북돋아주고 팀을 위해 끊임없이 고민하는 모습이 인상적이었습니다. 오류로 진행이 막혔던 어려운 상황 속에서도 긍정적인 태도를 유지하며 팀원들을 격려했습니다. 혜영님 덕분에 저 또한 많은 힘을 얻을 수 있었습니다. 활발하고 따듯함을 가진 혜영님의 존재로 팀 전체가 더욱 단결하여 프로젝트를 성공적으로 마무리할 수 있었습니다. 항상 밝은 모습으로 팀을 이끄는 혜영님 모습이 정말 보기 좋았습니다. |
| 황수민 | 우리 팀의 아이디어 뱅크이자 불꽃같은 추진력을 지닌 멋진 여자 혜영님 ...~! 아직 서로를 잘 몰라 의견을 내기 조심스러웠던 초반에 혜영님이 먼저 나서서 프로젝트의 방향성을 잡아주신 덕분에 우리 팀이 가장 빠르게 프로젝트를 진행할 수 있었던 거라고 생각합니다! 점심 메뉴 선정부터 프로젝트 진행까지 혜영님이 있어야 모든 일이 술술 풀리는 기분이었습니다 또한 이사 기간과 겹쳐 정신없었을텐데도 맡은 부분이 무엇이든지간에 금방 해내시는 모습에 놀랐습니다! 그리고 분위기메이커 역할도 해주셨던 혜영님 덕분에 프로젝트를 하는 동안 밝은 에너지를 듬뿍 받아갑니다 멋진 상여자인 당신과 프로젝트를 해서 좋았고 또 함께할 수 있기를 바라요 츠츠츠..  |
| 장시원 | 모두가 어색한 분위기 속에서 제일 먼저 나서 벽을 허물어 주신 분위기 메이커 혜영님 덕분에 편한 분위기 속에서 프로젝트를 할 수 있었습니다. 모두가 어색할 때, 대화를 이끌어 나가며 조원들끼리 더 끈끈하게 만들어주신 혜영님이 있어 프로젝트 진행에 속도를 낼 수 있었던 것 같아요. 혜영님이 만들어내는 에너지 덕분에 프로젝트를 하는 내내 밝은 에너지를 얻고 웃음을 잃지 않을 수 있었습니다.|
| 박지원 | 혜영님이 아니었다면 프로젝트 시작이 정말 어려웠을 것 같아요. 어떤 것을 해야 할지 다들 고민하고 있을 때 가장 먼저 의견 내주시고 의견이 많을 때는 바로 투표를 진행하는 추진력 덕분에 수월하게 프로젝트를 진행할 수 있었습니다. 특히 팀원들의 평균나이를 팀명으로 하자는 아이디어는 정말 좋은 아이디어였던 것 같습니다. 덕분에 나이 어려진 기분도 들고 기분 좋게 시작할 수 있었습니다. 또 다들 놓치고 있었던 부분에 대해 놓치지 않고 의견 내주시고 신경 써주셔서 프로젝트가 잘 마무리 될 수 있었던 것 같습니다. |
