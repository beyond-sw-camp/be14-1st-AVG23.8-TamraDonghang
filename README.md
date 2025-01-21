
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
| 김민주 | |
| 황수민 | |
| 장시원 | |
| 박지원 | |
| 이혜영 |귀엽고 세심하고 똑똑하고 꼼꼼한 우리 팀의 도로로 민선이!~, 말하지 않아도 뒤에서 묵묵히 일을 해주고 있어서 티는 안 났을지 몰라도 나는 네가 엄청난 노력을 기울였음을 알고 있어 아마 다른 팀원들도 다 그렇게 느꼈을 것 같은데  그래서 이번 프로젝트 때 너랑 해서 행운이었고 너무 고마웠다는 말을 하고 싶네! 당신의 세심하고 꼼꼼한 부분이 특히 저에게는 부족하다고 생각하는 부분이라서 특히나 좋았어요 티도 안내고 열심히 해서 어디에서 이용당하지 않을까 걱정되긴 하지만... 그럴 떈 날 불러... 내가 지켜줄게... |

## 김민주
| 조원명 | peer review |
| --- | --- |
| 정민선 | |
| 황수민 | |
| 장시원 | |
| 박지원 | |
| 이혜영 |민주님~, 처음에 이 팀을 선택하게 된 것은 열심히 멘트를 먼저 생각해온 민주님의 준비성을 보고였어요. 그리고 비전공자임에도 주변 사람들에게 모르는 부분을 잘 물어보고 배우려는 태도가 저는 기억에 많이 났답니다. testcase를 일일이 확인하는 것도 민주님에겐 힘들 수 있었을 텐데, 해당 부분을 잘 마무리하셔서 정말 멋있어요 민주님 그리고 몸이 약하신 것 같은데 꼭 식사는 거르지 마시고 따뜻하게 입고 다니셔요 건강이 최고입니다 츠츠츠 |


## 황수민
| 조원명 | peer review |
| --- | --- |
| 정민선 | |
| 김민주 | |
| 장시원 | |
| 박지원 | |
| 이혜영 |수민님!~, 우연히 짝꿍이 되었지만 당신을 짝으로 맞이한 것은 굉장한 행운이었다예.. 츠츠츠 다른 사람들의 의견도 적극 수용할 줄 알고 고치면서 또한 사소한 부분도 다 기억하고 ERD CLOUD를 꼼꼼하게 점검하는 모습이 저는 좋았어요. 또 다른 사람들의 질문에도 같이 고민하고 적극적으로 답을 내주려고 노력하는 모습이 기억에 남아요. 특히나 당신의 미적인 감각이 좋아서 우리 팀의 퀄리티가 한층 더 올라간 것이랍니다. 첫 프로젝트를 당신과 해서 영광이어요 다음에도 기회가 된다면 같이 하고 싶어요!  또 보자네!|

## 장시원
| 조원명 | peer review |
| --- | --- |
| 정민선 | |
| 김민주 | |
| 황수민 | |
| 박지원 | |
| 이혜영 | 시원님!~, 우리 팀에서 없어서는 안되었을 존재였음을 팀프로젝트하면서 많이 느꼈습니다. 이를 통해서 아 나도 더 열심히 해야겠다 생각하게 되는 계기가 되었어요! 저도 남에게 동기부여를 줄만큼 다음 프로젝트에서는 더 많은 기여를 해야겠다는 생각이 들어요. 그리고 다른 사람의 의견에도 적극적으로 귀기울이고 답을 내주고 하는 과정에서 특히나 이런 생각을 많이 느꼈답니다. 정말 코딩이랑 적성?이 잘 맞으시는 것 같아요.. 특히 프로시저나 트리거 제약조건을 세심하게 체킹하는 부분이 대단했습니다! |

## 박지원
| 조원명 | peer review |
| --- | --- |
| 정민선 | |
| 김민주 | |
| 황수민 | |
| 장시원 | |
| 이혜영 |지원님~ 처음 팀이 되고 밥을 먹었을 때는 이렇게 편해질 줄 몰랐어요. 본인의 친동생보다 어린.. 저의 조금 장난스런 태도에도 잘 받아주셔서 감사했습니다~ 막내온탑이어야 그 팀의 분위기가 좋은 거 아시죠?? 덕분에 팀의 막내지만 이것저것 의견을 잘냈던 것 같아요 맡으신 testcase 부분도 처음에 join이 잘 안되었지만 끝까지 하신게 기억에 남아요. 또 더미데이터 생성하는 게 귀찮고 힘든 부분이었을텐데 포기하지 않고 꼼꼼하게 점검해주신 덕분에  마지막까지 잘 마무리할 수 있었습니다!  |

## 이혜영
| 조원명 | peer review |
| --- | --- |
| 정민선 | |
| 김민주 | |
| 황수민 | |
| 장시원 | |
| 박지원 | |
