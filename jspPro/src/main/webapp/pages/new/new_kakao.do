#list.do
<c:forEach var="elist" items="${ elist }" >
<li>${elist.el_name}</li>
</c:forEach>


		$("#btn_em_logout").on("click", function() {
			//sessionStorage.clear();  //세션 데이터 삭제
			
			 <% session.removeAttribute("email"); %>
			location.reload(); //새로고침
		});
		
		$("#btn_logout").on("click", function() {
			//sessionStorage.clear();  //세션 데이터 삭제
			 
			 <% session.removeAttribute("email"); %>
			location.reload(); //새로고침
		});
		