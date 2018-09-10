<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form name="form1">
  <select name="sido" onChange="cat1_change(this.value,gigungu)" >
   <option>-선택-</option>
<option value='서울'>서울</option>
<option value='부산'>부산</option>
<option value='대구'>대구</option>
<option value='인천'>인천</option>
<option value='광주'>광주</option>
<option value='대전'>대전</option>
<option value='울산'>울산</option>
<option value='강원'>강원</option>
<option value='경기'>경기</option>
<option value='경남'>경남</option>
<option value='경북'>경북</option>
<option value='전남'>전남</option>
<option value='전북' selected>전북</option>
<option value='제주'>제주</option>
<option value='충남'>충남</option>
<option value='충북'>충북</option>
  </select>
  <select name="gigungu">
   <option>-선택-</option>
<option value='군산시' selected>군산시</option>
<option value='김제시'>김제시</option>
<option value='남원시'>남원시</option>
<option value='익산시'>익산시</option>
<option value='전주시 덕진구'>전주시 덕진구</option>
<option value='전주시 완산구'>전주시 완산구</option>
<option value='정읍시'>정읍시</option>
<option value='고창군'>고창군</option>
<option value='무주군'>무주군</option>
<option value='부안군'>부안군</option>
<option value='순창군'>순창군</option>
<option value='완주군'>완주군</option>
<option value='임실군'>임실군</option>
<option value='장수군'>장수군</option>
<option value='진안군'>진안군</option>
  </select>
<script language=javascript>

 var cat1_name = new Array('서울','부산','대구','인천','광주','대전','울산','강원','경기','경남','경북','전남','전북','제주','충남','충북');
 var cat2_name = new Array();
 cat2_name['서울'] = new Array('강남구','강동구','강북구','강서구','관악구','광진구','구로구','금천구','노원구','도봉구','동대문구','동작구','마포구','서대문구','서초구','성동구','성북구','송파구','양천구','영등포구','용산구','은평구','종로구','중구','중랑구');
 cat2_name['부산'] = new Array('강서구','금정구','남구','동구','동래구','부산진구','북구','사상구','사하구','서구','수영구','연제구','영도구','중구','해운대구','기장군');
 cat2_name['대구'] = new Array('남구','달서구','동구','북구','서구','수성구','중구','달성군');
 cat2_name['인천'] = new Array('계양구','남구','남동구','동구','부평구','서구','연수구','중구','강화군','옹진군');
 cat2_name['광주'] = new Array('광산구','남구','동구','북구','서구');
 cat2_name['대전'] = new Array('대덕구','동구','서구','유성구','중구');
 cat2_name['울산'] = new Array('남구','동구','북구','중구','울주군');
 cat2_name['강원'] = new Array('강릉시','동해시','삼척시','속초시','원주시','춘천시','태백시','고성군','양구군','양양군','영월군','인제군','정선군','철원군','평창군','홍천군','화천군','횡성군');
 cat2_name['경기'] = new Array('고양시 덕양구','고양시 일산구','과천시','광명시','광주시','구리시','군포시','김포시','남양주시','동두천시','부천시 소사구','부천시 오정구','부천시 원미구','성남시 분당구','성남시 수정구','성남시 중원구','수원시 권선구','수원시 장안구','수원시 팔달구','시흥시','안산시 단원구','안산시 상록구','안성시','안양시 동안구','안양시 만안구','오산시','용인시','의왕시','의정부시','이천시','파주시','평택시','하남시','화성시','가평군','양주군','양평군','여주군','연천군','포천군');
 cat2_name['경남'] = new Array('거제시','김해시','마산시','밀양시','사천시','양산시','진주시','진해시','창원시','통영시','거창군','고성군','남해군','산청군','의령군','창녕군','하동군','함안군','함양군','합천군');
 cat2_name['경북'] = new Array('경산시','경주시','구미시','김천시','문경시','상주시','안동시','영주시','영천시','포항시 남구','포항시 북구','고령군','군위군','봉화군','성주군','영덕군','영양군','예천군','울릉군','울진군','의성군','청도군','청송군','칠곡군');
 cat2_name['전남'] = new Array('광양시','나주시','목포시','순천시','여수시','강진군','고흥군','곡성군','구례군','담양군','무안군','보성군','신안군','영광군','영암군','완도군','장성군','장흥군','진도군','함평군','해남군','화순군');
 cat2_name['전북'] = new Array('군산시','김제시','남원시','익산시','전주시 덕진구','전주시 완산구','정읍시','고창군','무주군','부안군','순창군','완주군','임실군','장수군','진안군');
 cat2_name['제주'] = new Array('서귀포시','제주시','남제주군','북제주군');
 cat2_name['충남'] = new Array('공주시','논산시','보령시','서산시','아산시','천안시','금산군','당진군','부여군','서천군','연기군','예산군','청양군','태안군','홍성군');
 cat2_name['충북'] = new Array('제천시','청주시 상당구','청주시 흥덕구','충주시','괴산군','단양군','보은군','영동군','옥천군','음성군','진천군','청원군');

function cat1_change(key,sel){
 if(key == '') return;
 var name = cat2_name[key];

 for(i=sel.length-1; i>=0; i--)
  sel.options[i] = null;
 sel.options[0] = new Option('-선택-','', '', 'true');
 for(i=0; i<name.length; i++){
  sel.options[i+1] = new Option(name[i]);
 }
}

</script>
</form>


</body>
</html>