2021.09.18
<변경사항>
login.js 다시 빼놓았습니다..! memeber controller session Lv 이것도 지우고 loginInfo 사용하였어요! 

고객 센터 게시판들 조건 수정 -> loginInfo.id  , loginInfo.lv 

고객 센터 게시판들 사용자 입력값(제목,내용) 무결성 처리 

product 향수 테이블을 따로만들기보다 kind=5 로 해서 좋을거같아서 kind=5 옵션 만들어두었습니다

상품 디테일 그려놨습니다. 

디테일 조회수가 증가하지 않는 문제는 컬럼 디폴트가 null 이여서 null+1 이기 때문입니다
sql문 update에  Ifnull(count,0)+1 수정 하였습니다
==============================================================================================
2021.09.17
<변경사항>
product list 화면 mapper keyword검색기능 option 검색기능 
진짜 작업완
memeber controller session Lv set 

login.js 백업 폴더에있던건데 중요한 데이터인거같아서 member Lib에 넣어놯습니다.~!

===============================================================================================

2021.09.16
<변경사항>
장바구니 테이블 추가.(Cart)
VO 생성

상품에 이미지 추가(1개의 이미지임) 테이블에 추가하면됨
update product set image = 'resources/uploadImage/belt1.jpg';
update product set image = 'resources/uploadImage/man2.jpg' where kind = '2';
update product set image = 'resources/uploadImage/man4.jpg' where score = '4';

===============================================================================================

추가데이터 

Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('8부 셔츠 1','가을맞이 신상 셔츠','2021-09-04','T',20000,38000,(price2-price1),20,18,'1',
4);

Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('8부 셔츠 2','가을맞이 신상 셔츠','2021-09-04','T',20000,38000,(price2-price1),20,18,'1',
3);

Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('8부 셔츠 3','가을맞이 신상 셔츠','2021-09-04','T',20000,38000,(price2-price1),20,18,'1',
4);

Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('8부 셔츠 4','가을맞이 신상 셔츠','2021-09-04','T',20000,38000,(price2-price1),20,18,'1',
2);

Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('8부 셔츠 5','가을맞이 신상 셔츠','2021-09-04','T',20000,38000,(price2-price1),20,18,'1',
5);

Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('바람막이','가을 맞이 행사상품','2021-09-04','T',20000,20000,(price2-price1),20,18,'3',
5);

Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('패딩','가을 맞이 행사상품','2021-09-04','T',20000,60000,(price2-price1),20,18,'3',
4);

Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('항공점퍼','가을 맞이 행사상품','2021-09-04','T',20000,40000,(price2-price1),20,18,'3',
3);

Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('가죽자켓','가을 맞이 행사상품','2021-09-04','T',20000,50000,(price2-price1),20,18,'3',
3);

Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('무스탕','가을 맞이 행사상품','2021-09-04','T',20000,59000,(price2-price1),20,18,'3',
4);

Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('군인 백팩','요즘 유행하는 국방색 열풍!!','2021-09-04','T',20000,53000,(price2-price1),20,18,'4',
5);


Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('학생용 백팩','개학 맞이 이벤트','2021-09-04','T',30000,490000,(price2-price1),20,18,'4',
4);


Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('패션 백팩','가을 맞이 행사상품','2021-09-04','T',20000,37000,(price2-price1),20,18,'4',
5);


Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('슬림 슬렉스','가을 맞이 행사상품','2021-09-04','T',20000,29000,(price2-price1),20,18,'2',
3);


Insert into product 
(name,content,date,state,price1,price2,price3,quantity1,quantity2,kind,score)
Values('면바지','가을 맞이 행사상품','2021-09-04','T',20000,340000,(price2-price1),20,18,'2',
3);


==========================================================================================
2021.09.15
<변경사항>
product list 화면 mapper keyword검색기능 option 검색기능 쿼리 작성 아직 테스트 x 
작업중 -민호


===============================================================
2021.09.12
<변경사항>

메인페이지 nav바 main 화면 반응형 웹으로 구현 

===============================================================
2021.09.12
<변경사항>

Q&A 게시판(qna) - CRUD
공지사항 (ntc)- CRUD
자주묻는 질문 (FAQ) - CRUD

jsp에서 secret컬럼 eq 'char 타입' 안먹는문제 발생 int타입으로 변경
member 의 lv 컬럼 변경 (DB table 참고)



=================================================================

2021.09.10
<변경사항>
1.Product_regist 폼 구현 ok 값입력은 못해봄
  -> productForm.css 생성

2.product controller 몇가지 추가

-jiho-

=================================================================
2021.09.08
<변경사항>
1.
productList 폼 변경
-> maincss class 추가

2. 
Product_regist (상품등록)페이지 ~ing

3.productVO 변수 추가

