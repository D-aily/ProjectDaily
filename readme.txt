
2021-09-06
추가 & 변경

1. ProductMapper insert 오류 수정
values (#{name),#{content},now(),#{image},#{state},#{price1},#{price2},
  			#{price3},#{quantity1},#{quantity2},#{kind},0,0)

=> #{name} 중괄호 잘못넣음 -> #{name}으로 수정

2.home.jsp 카카오맵api 고객센터에 들어가있는 부분 매장위치로 이동

3. Servlet.xml - JDBC 커넥션 DB이름 mydb -> daily로 수정함
=> 민호씨 비밀번호로 되어있는거 수정함

4.Product controller 생성
-> productList page 생성 및 디비연동까지 진행 but, 값이 안나옴 문제해결해야함.



2021-09-05 
추가 & 변경  


========================================================


수정사항
productMapper에 insert sql문 에러가 있어 주석처리하였습니다!  



========================================================

추가사항

메인 home.jsp 추가 작성
csslib 추가 작성
img 추가 