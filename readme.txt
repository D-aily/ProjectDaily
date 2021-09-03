

추가 & 변경  
1. java 
2.DB Table txt & 한글테이블  확인해주세욤~

=====================================





pom.xml 라이브러리 추가 
=====================================
-MySQL
-MyBitis 3.4.1 
-MyBitis-Spring 
-Spring-jdbc 
-Spring-test 
-lombok
-FileUpload
-Json
-스프링 시큐리티 web
-스프링 시큐리티 core


=====================================








servlet-context (mysql 비밀번호 ='mysql'로 했습니다~~ 확인해주세욤~)
===================================== 
JDBC connection
-Mysql

-프레임워크를 위한  
maybatis, sqlSessionFactory bean 객체 추가

- <Image 업로드 & 다운로드  > multipartResolver bean 객체 추가 
-josnview bean 객체 추가 

=====================================








src/main/java 
=====================================
controller  추가 
-MemberController (생성만)


package 추가 
<service> 
-MemberService
-MemberserviceImpl

<util>
-MemberServiceImpl

<vo>
MemberVO
OrdersVO
PnaVO
Product_qnaVO
ProductVO
ReviewVO
Wish_listVO
=====================================




mapper 폴더 생성 추가 
membermapper  sql CRUD 추가 







