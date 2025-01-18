## 🍊 탐라동행 - 제주 여행 동행 매칭 서비스


<a href="#1">📁 1. 프로젝트 기획</a>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-1">1-1. 개요</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-2">1-2. 배경 및 필요성</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-3">1-3. 주요 기능</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-4">1-4. WBS(Work Breakdown Structure)</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-5">1-5. UML(Usecase Diagram)</a>

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#1-6">1-6. 요구사항 명세서 </a>

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

<a href="#5">📗 5. 회고록</a>

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
익명성이 높은 환경에서는 신뢰가 어려워, 안전 문제와 관련된 불안감이 큽니다.
동행자를 찾는 과정에서 여행지, 일정, 나이대, 관심사 등 세부 조건에 맞는 사람을 찾기 어려워 비효율적입니다.

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

3. **실시간 채팅** : 
매칭된 유저 간 채팅 기능을 통해 여행 계획을 상세히 논의할 수 있습니다.
사용자 간의 실시간 의사소통을 지원하여 매칭 후의 불편함을 최소화합니다.

4. **여행 일정 및 정보 공유** : 
매칭된 동행자와 여행 일정을 공유하여 계획을 한눈에 확인할 수 있습니다.
커뮤니티 게시판도 따로 존재하여 여행자들끼리 정보를 공유할 수 있습니다.

 5. **신고 기능** : 
신고시 '처리중, 처리완료, 반려' 의 3가지 상태를 가지고 있어 신고자가 본인의 접수상태를 한눈에 알아볼 수 있다.
또한 일정 횟수이상 신고되면 블랙리스트로 올라가 정지되고, 이후에는 관리자가 해당해원을 탈퇴까지 시킬 수 있다. 

<br>

### <p id="1-4">1-4. WBS(Work Breakdown Structure)</p>
  [WBS(Work Breakdown Structure)](https://docs.google.com/spreadsheets/d/1NqmHyOibSMeVUvOXEcZrMmShYiXlLGzj6wVhKXOGqn0/edit?usp=sharing)
  <details>
    <summary>WBS</summary>
   <img src='https://github.com/user-attachments/assets/25cd8dbd-191e-40c2-9532-a1d3bb03696e' />
  </details>

### <p id="1-5">1-5. UML (Usecase Diagram)</p>


  <details>
    <summary>유스케이스 다이어그램</summary>
    <p align = "center">
      <img src = "https://github.com/user-attachments/assets/b64db02f-de72-461e-a1d1-ed76ea9c19ff">
    </p>
  </details>

### <p id="1-6">1-6. 요구사항 명세서</p>
[요구사항 명세서](https://docs.google.com/spreadsheets/d/1ivOKmSbPaH6LBtRcZFHDeBcYZXUV2hPXxeqiGDib1Iw/edit?usp=sharing)
 <details>
    <summary>요구사항 명세서</summary>
   <img src='https://github.com/user-attachments/assets/bf03b770-1af1-4f6b-a1a7-269ab63be26a' />
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

리플케이션 
<p align = "center">
<img src = 'https://github.com/user-attachments/assets/b1926579-9e6a-49a5-b435-3bc81b624ae6'></p>

### <p id="3-2">3-2. DDL</p>
[DDL](https://github.com/average-23-8/be14-1st-AVG23.8-TamlaDonghang/blob/main/DDL.sql)

<br>


## <p id="4">✍🏻 4. 테스트 케이스</p>

### <p id="4-1">4-1. 테스트 케이스 정의서</p>
[테스트 케이스 정의서](https://docs.google.com/spreadsheets/d/1qIKqDuUsn12XIpt_Lv8IwSrGIWIKXSRWjdEWouPwQac/edit?usp=sharing)

### <p id="4-2">4-2. 주요 쿼리문</p>

각자 쿼리문 + 이미지 업로드 

### 동행

<details>
    <summary>회원가입</summary>
      <p align = "center">
        <img src='https://github.com/user-attachments/assets/6b4628c0-2618-4929-8f65-77c48197bb48' />
      </p>
</details>

<details>
    <summary>신고하기</summary>
      <p align = "center">
        <img src='https://github.com/user-attachments/assets/81a3b58c-fd0f-4b0d-8f8d-81207ab34703' />
      </p>
</details>


<details>
    <summary>지역별 동행 모집 게시글 조회</summary>
      <p align = "center">
        <img src='https://github.com/user-attachments/assets/0227392f-996e-4293-b5c7-f8c5e35043b7' />
      </p>
</details>

<details>
    <summary>여행스타일별 동행 모집 게시글 조회</summary>
      <p align = "center">
        <img src='https://github.com/user-attachments/assets/ac9ac254-1f3e-44fb-84c4-29ad274156bc' />
        <img src='https://github.com/user-attachments/assets/2aed49e5-bc1e-4d58-a786-f3b28d956566' />
      </p>
</details>

<details>
     <summary>동행 모집글 상태 변경</summary>
      <p align = "center">
        <img src='https://github.com/user-attachments/assets/2b141522-183b-410f-91c7-5c9588cbfceb' />
      </p>
</details>
<details>
     <summary>동행 모집글 신청자 목록 조회</summary>
   <p align = "center">
     <img src='https://github.com/user-attachments/assets/54b28158-f13d-46ad-a165-3e9c88739988' />
      </p>
</details>

<details>
     <summary>동행 참여자 목록 조회</summary>
   <p align = "center">
     <img src='https://github.com/user-attachments/assets/bc75d1ab-ca5e-436a-bfc2-4da41a0da81b'  />
      </p>
</details>

### 후기

<details>
     <summary>후기 작성 프로시저</summary>
     <p align = "center">
       <img src='https://github.com/user-attachments/assets/b09fe278-18af-4fef-b3f4-fca7c672cac3'   />
     </p>
</details>

<br>

## <p id="5">📗 5. 회고록</p>

