# 🍳 여행한담

삼성 청년 소프트웨어 아카데미 11기 특화 프로젝트

## 📚 목차

- [🗓️ 프로젝트 개요](#️-프로젝트-개요)
  - [진행 기간](#진행-기간)
  - [팀 구성](#팀-구성)
- [📢 서비스 소개](#-서비스-소개)
- [🥳 서비스 설계](#-서비스-설계)
  - [기술 스택](#기술-스택)
  - [ERD](#erd)
  - [Wireframe](#wireframe)
  - [Architecture](#architecture)
  - [Docs](#docs)
- [🤗 기능 소개](#-기능-소개)
- [😆 느낀점](#-느낀점)

## 🗓️ 프로젝트 개요

### 진행 기간

- 2024.08.26 ~ 2024.10.11 (7주)

### 팀 구성


| 고도연 | 강동형 | 고충원 | 김민주 | 유재광 | 이상민 |
| :--------------------------------------------------------------: | :--------------------------------------------------------------: | :--------------------------------------------------------------: | :--------------------------------------------------------------: | :-------------------------------------------------------------: | :-------------------------------------------------------------: |
| <img src="https://avatars.githubusercontent.com/u/156388715?v=4" width="100" height="100"> | <img src="https://avatars.githubusercontent.com/u/156388917?v=4" width="100" height="100"> | <img src="https://avatars.githubusercontent.com/u/156388848?v=4" width="100" height="100"> | <img src="https://avatars.githubusercontent.com/u/87603324?v=4" width="100" height="100"> | <img src="https://avatars.githubusercontent.com/u/65598179?v=4" width="100" height="100"> | <img src="https://avatars.githubusercontent.com/u/134148399?v=4" width="100" height="100"> |
| PM, FE | FE | FE | BE, Infra, AI | BE | BE |

## 📢 서비스 소개

[📎 서비스 소개 UCC](https://youtube.com/shorts/xfRjP9bi9n4)

 **"여행한담"** 은 여행일정을 짜는데 도움을 주는 웹서비스입니다. 여행계획을 구성할 때, 정보의 과부화, 시간 소모 등 사용자의 피로를 덜어주기 위해 개발되었습니다. 가벼운 성향테스트를 통해 내 여행 성향을 파악할 수 있고, 다른 사용자의 피드 게시물을 보고 좋아요와 댓글 등의 소통을 할 수 있는 SNS 기능을 겸하고 있습니다. 좋아요를 누른 피드 데이터를 기반으로 사용하기 쉬운 여행 계획 수립 및 자동맞춤 여행일정 수립 기능을 보유하고 있습니다.

## 🥳 서비스 설계

### 기술 스택

|               | Front                                   | Back                                     | AI                       |
| ------------- | --------------------------------------- | ---------------------------------------- | ------------------------ |
| **Language**  |    JavaScript(ES6+), TypeScript        |            Java17                    |             |
| **IDE**       |       Visual Studio Code             |             IntelliJ                    |                   |
| **Framework** |         React, Vite                   | Spring Boot, Fast API, Spark |                   |
| **Library**   |  |                                          | |

| DB           |               CI/CD              |        Tools         |
| :----------- |  :-----------------------------: | :------------------: |
| MySQL, Hadoop, Redis, Elasticsearch | Jenkins, Docker, Dockerhub, Mattermost | GitLab, Jira, Notion, RestDoc |

### ERD

![ERD](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbiTDvs%2FbtsJ2uIzU9k%2F1pkZZWV6hMqXEmzdyayx30%2Fimg.png)

### Wireframe

[📎 Figma Link](https://www.figma.com/design/CCGP6nyPBqx6LpUE4uEP3M/%ED%94%8C%EB%A1%9C%EC%9A%B0%EC%B0%A8%ED%8A%B8?node-id=19-2&node-type=canvas&t=spQ9HQoCBojIyKx0-0)

![화면설계](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FvIZvK%2FbtsJ0et1JBG%2Fb7MOijr6SrEI9Y6DaysykK%2Fimg.png)

### Architecture

![아키텍쳐 구성도](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbNFwpM%2FbtsJ17Aae4V%2FCKp290W72UZNlrfqi5jxH1%2Fimg.png)

### Docs

[📎 API](https://versed-dragonfly-804.notion.site/API-f13725999d6049449807479bf6f0dddd)  
[📎 기능 정의서](https://versed-dragonfly-804.notion.site/9a8edc1bf92f406fb69b82e39a47a72f?pvs=4)

## 🤗 기능 소개
### 여행 성향 진단

<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbdX5jc%2FbtsJ0dIRkZi%2FLZUNeTkxldO1LXycXion5k%2Fimg.png" width="300" height="500"> | <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fb7HPhB%2FbtsJ102mgX5%2F29tjb6ZAS1DwrMWpfPnFA1%2Fimg.png" width="300" height="500">
<br>
<ul>
<li>
  간단한 진단 문항을 통해 사용자의 성향을 진단하고 진단 결과에 따라 16가지 결과물을 사용자에게 보여줍니다. <li>진단 과정에서 사용자에게 입력을 받아 사용자의 좋아요 데이터 기본값을 설정하도록 합니다.
</ul>

### 맞춤 및 지역별 여행지 추천정보
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F9xjc2%2FbtsJ2mqqAbH%2FZQ0RFiaJw3UCc8PHpBs8g1%2Fimg.png" width="500" height="250"> | <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F7gg2O%2FbtsJ1GC5sNQ%2FWjdcKNW11XxsX3G3UXXhc1%2Fimg.png" width="500" height="250">
<li>맞춤여행지들이 추천되고, 핫플여행지, 지역별 여행지, 축제 정보등을 표시합니다.
</li>

### 다른 사용자의 피드 검색 기능
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FpUasD%2FbtsJ3a4g4i6%2FNJKj48q16olfBKvwD2OQ01%2Fimg.png" width="500" height="250"> | <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F9rBwM%2FbtsJ178slZS%2FTDDXJf7eQcQBg8TdAFL5a1%2Fimg.png" width="400" height="150">
<br>
<ul>
  <li>탐색페이지에서 자신의 여행유형과 좋아요한 피드들을 기준으로 여행지가 추천됩니다.
  <li>이 탐색페이지는 자신과 비슷한 유형의 사용자가 좋아요한 피드위주로 추천됩니다.
  <li>사용자 검색 후 팔로우 기능을 할 수 있고, 피드검색도 가능합니다.
</ul>

### 사용자의 데이터 기반 여행계획 작성기능
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2F1N8ax%2FbtsJ1e8i8M9%2FbjOt08UVFRbRPyxnV276U0%2Fimg.png" width="500" height="250"> | <img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fbgy4tb%2FbtsJ2QSJUuN%2FSyKPzZWvz0OK1kb2b0dtQ0%2Fimg.png" width="500" height="250">
<ul>
  <li>자신이 좋아요 한 데이터들은 여행 계획 페이지에서 클러스터링을 거쳐 군집화됩니다.
  <li>군집화 된 목록을 누르면 해당좋아요를 포함해서 자동으로 일정을 생성합니다.
  <li>장소를 검색하여 일정에 가고싶은 곳을 추가하여 수정할 수 있습니다.
  <li>하단 바에서 군집 중심에서 주변 장소들을 추천해줍니다.
  <li>여행일정을 저장되고 일정 상세페이지를 확인할 수 있습니다.
</ul>

### 동행 구인
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbHhLb0%2FbtsJ2Xxt6CB%2FSY1sIeZoZwG94EjzRDj5kk%2Fimg.png" width="500" height="250">
<ul>
  <li>동행 구인글들을 확인할 수 있고 제 일정을 공유하면 동행 구인글을 작성할 수 있습니다.
  <li>게시된 게시물을 클릭하면 다른 사용자의 여행일정이 보입니다.
</ul>

### 마이페이지
<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FcwulPj%2FbtsJ28ZOO5I%2FdV0wH2AFcUdcZKSg1Xfc3k%2Fimg.png" width="500" height="320">
<li>
마이페이지에는 제가 작성한 피드, 좋아요목록 동행 게시글, 포토카드등을 확인할 수 있습니다.
</li>

## 🚩핵심 기능

## 😆 느낀점

<table>
  <tr>
    <th rowspan="3">Front</th>
    <td>고도연</td>
    <td>
    </td>
    
  </tr>
  <tr>
    <td>강동형</td>
    <td>
    새로운 기능을 많이 배워보려고 노력했고, 한 층 더 개발자로 성장했습니다. 그러면서 필요하지 않은 기능을 사용하는 것은 프로젝트가 무거워질 뿐이라 프로젝트도 최적화와 같은 다이어트가 필요하다는 것을 알게되는 과정이었습니다.<br>
    CSS와 업무관련 갈등이 조금 있었습니다. 맡은 업무를 수행했는데 사용하지 않은 경우도 종종 있었고, 디자인 측면에서도 서로 추구하는 바가 달라 조율하는데 작은 소음이 있었습니다.<br>
    프로젝트를 작성할때, 이번에는 상태관리 변수를 적극적으로 활용하지 않았습니다. 프로젝트가 규모가 조금 작고, PropsDrilling의 깊이도 낮아서 괜찮았지만, 다음에는 적극적으로 활용해야 겠다고 느꼈습니다.<br>
    시작할때는 최대한 깔끔하게 프로젝트를 작성해야 겠다고 생각했지만, URL이 바뀌지 않으면서 페이지 렌더링을 바꾸려고 하다보니 분기처리 과정에서 코드가 길어지고 가독성이 떨어졌습니다. 프로젝트의 막바지 즘에 따로 컴포넌트를 내부에서 분리해서 본 코드의 길이를 줄이는 방법을 사용했었는데, 다음 프로젝트에서는 이 방법을 일찌감치 사용해서 훨씬 클린한 코드를 작성하는 것을 목표로 하고 싶습니다.
    </td>
  </tr>
    <tr>
    <td>
     고충원
    </td>
    <td>
    이번 프로젝트에서 가장 중요하게 생각했던 점은 팀원들과의 협업 능력이었습니다. 이전 프로젝트에서는 첫 팀 프로젝트였기 때문에 팀원들과의 협업과 커뮤니케이션이 부족했고, 
    서로의 의견을 조율하고 각자의 코드를 이해하며 하나의 결과물을 만들어가는 과정이 쉽지 않았습니다.
    <br>
    그래서 이번 프로젝트에서는 소통을 더욱 강화해 팀원들과 의견을 잘 조율하기 위해 노력했습니다. 이를 위해 세 가지 방안을 실천했습니다.
    <br>
    첫째, 코드 리뷰 문화와 코딩컨벤션을 적극적으로 활용했습니다. 
    코드 리뷰를 통해 서로의 코드를 이해하고, 개선할 수 있는 피드백을 주고받으면서 코드 품질을 높일 수 있었습니다. <br>
    특히, 팀원들과 코딩 컨벤션을 정하고 이를 지키기 위해 노력했습니다. 
    이를 통해 팀원 간의 코드 스타일을 통일하고, 코드의 일관성을 유지할 수 있었습니다. 
    코드 리뷰 과정에서는 각자의 로직을 파악하며, 사전에 오류를 발견하고 수정함으로써 더욱 견고한 코드를 작성할 수 있었습니다.
    <br>
    둘째, 스토리북(Storybook)을 사용하여 컴포넌트 단위로 UI를 독립적으로 개발하고 테스트할 수 있었습니다. 
    팀원들과 UI 변경 사항을 쉽게 공유하고, 즉각적으로 피드백을 받아 반영할 수 있어 개발 속도와 품질을 동시에 향상시킬 수 있었습니다.
    <br>
    셋째, 프로젝트 초기에 파일 구조를 잘 설계하기위해 노력했습니다. 
    이전 프로젝트에서는 자바스크립트를 사용했지만, 이번 프로젝트에서는 타입스크립트를 도입해 더 견고하고 효율적인 파일 구조를 설계했습니다. 
    타입스크립트를 활용한 덕분에 코드의 안정성과 가독성이 크게 향상되었고, 코드 작성 시 타입 오류를 사전에 방지할 수 있었습니다. 
    이러한 구조적 설계 덕분에 프로젝트 관리가 수월해졌습니다.
    <br>
    이번 프로젝트에서 쌓은 협업 경험과 기술적인 성장 덕분에, 앞으로 더 복잡하고 큰 프로젝트에서도 팀원들과 원활하게 소통하며, 
    견고한 코드를 작성할 수 있는 개발자가 될 자신감을 얻었습니다. 이 경험은 저의 개발자로서의 성장에 큰 자산이 될 것입니다.</td>
  </tr>

  <tr>
    <th rowspan="3">Back</th>
    <td>김민주</td>
    <td>
    </td>
  </tr>
  <tr>
    <td>유재광</td>
    <td>
    프로젝트를 진행하면서 에러 핸들링과 테스트의 중요성을 깊이 느꼈습니다. 안정적인 시스템을 구축하기 위해서는 철저한 에러 관리와 체계적인 테스트가 필수적임을 깨달았습니다. 
    <br>
    또한 협업, 최적화, 그리고 시간 관리의 중요성도 크게 인식하게 되었습니다. 팀원들과의 원활한 소통과 역할 분담을 통해 효율적으로 문제를 해결할 수 있었으며, 성능 최적화를 통해 시스템의 효율성을 높이는 방법을 학습했습니다. 
    <br>
    더불어, 마감일을 준수하기 위해 체계적인 시간 관리가 프로젝트의 성공에 결정적인 역할을 한다는 점을 느꼈습니다. 이러한 경험들은 앞으로의 프로젝트에서도 많은 도움이 될 것 같습니다.</td>
  </tr>

  <tr>
    <td>이상민</td>
    <td>
    </td>
  </tr>
</table>