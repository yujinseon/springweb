<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
	td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var msg = "${msg}";
		if(msg!=""){
			alert(msg);
		}
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2 data-toggle="modal" data-target="#exampleModalCenter">파일업로드</h2>
</div>
<div class="container">
	<%-- action의 속성은 현재 controller 단에 의해 호출한 view이고 그 이름으로
		다시 호출할 경우에는 생략가능하다. action="/upload.do"  --%>
	<form id="frm01" class="form-inline" enctype="multipart/form-data"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input type="text" name="title" class="form-control mr-sm-2" placeholder="제목" />
	    <input type="file" name="report" class="form-control mr-sm-2" placeholder="첨부파일" />
	    <button class="btn btn-info" type="submit">업로드</button>
 	</nav>
	</form>
	<%--
	<form id="frm02" class="form-inline" action="${path}/uploadVo.do" enctype="multipart/form-data"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input type="text" name="title" class="form-control mr-sm-2" placeholder="제목" />
	    <input type="file" name="report" class="form-control mr-sm-2" placeholder="첨부파일" />
	    <button class="btn btn-info" type="submit">업로드</button>
 	</nav>
	</form>
	 --%>	
   <table class="table table-hover table-striped">
   	<col width="30%">
   	<col width="70%">
    <thead>
      <tr class="table-success text-center">
        <th>파일명</th>
        <th>경로</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var = "file" items="${flist}">
    	<tr><td  ondblclick="downFun('${file.fname}')">${file.fname}</td>
    		<td>${file.pathinfo}</td></tr>
    	</c:forEach>	
    </tbody>
	</table>    
    <script type="text/javascript">
    	function downFun(fname){
    		if(confirm(fname+"을 다운하시겠습니까?")){
    			location.href="${path}/download.do?fname="+fname;
    		}
    	}
    </script>
</div>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">타이틀</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<form id="frm02" class="form"  method="post">
	     <div class="row">
	      <div class="col">
	        <input type="text" class="form-control" placeholder="사원명 입력" name="ename">
	      </div>
	      <div class="col">
	        <input type="text" class="form-control" placeholder="직책명 입력" name="job">
	      </div>
	     </div>
	    </form> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>