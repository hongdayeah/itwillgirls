<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<!-- 본문시작 program -- list.jsp -->

<!--breadcrumbs start-->
<div class="breadcrumbs">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-sm-4">
				<h1>
					우리센터 프로그램을 소개합니다
				</h1>
			</div>
			<div class="col-lg-8 col-sm-8">
				<ol class="breadcrumb pull-right">
					<li>
						<a href="../home.do">
							Home
						</a>
					</li>
					<li>
						<a href="list.do">
							프로그램
						</a>
					</li>
					<li class="">
						프로그램 소개
					</li>
				</ol>
			</div>
		</div>
	</div>
</div>
<!--breadcrumbs end-->

<!--container start-->
<div class="container">
  <!-- 리스트 행 개수만큼 출력 -->
  <c:forEach var="dto" items="${list}" varStatus="status">
    <c:if test="${status.count % 2 == 1}">
      <div class="row">
    </c:if>
    
    <div class="col-md-6">
      <!-- 왼쪽 -->
      <div class="blog-left">
        <div class="blog-img">
          <img class="grid-image" src="https://myabcdebucket.s3.ap-northeast-2.amazonaws.com/${dto.pro_poster}" alt="${dto.pro_poster}"/>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="blog-two-info">
              <p>
                <!-- 강사님 이름 -->
                <i class="fa fa-user"></i>
                <span style="font-weight: bold;">강사</span> 
                <!-- for문 돌려서 -->
                <a href="#"> 강사</a> <!-- 해당 pro_obj의 강사 리스트 불러오기 -->
                |
                <!-- 등록일 -->
                <i class="fa fa-calendar"></i>
                <span style="font-weight: bold;">수강기간</span>
                <c:set var="proStart" value="${fn:substring(dto.proper_start, 5, 10)}" />
                <c:set var="proEnd" value="${fn:substring(dto.proper_end, 5, 10)}" />
                ${proStart} ~ ${proEnd}
                |
                <!-- 리뷰 개수 -->
                <i class="fa fa-comment"></i>
                <span style="font-weight: bold;">후기</span>
                <a href="#">n개</a> <!-- 해당 pro_obj의 리뷰 개수 불러오기 -->
                |
                <!-- 찜 개수? 찜으로 한다면 하트 이미지 쓰기 -->
                <i class="fa fa-share"></i>
                <span style="font-weight: bold;">공유</span>
                <a href="#">n번</a> <!-- pro_obj의 찜 개수 가져오기 -->
                <br>
                <!-- 해당 프로그램의 성향 타입 개수만큼 -->
                <i class="fa fa-tags"></i>
                성향 :
                <!-- pro_obj의 성향 for문 돌리기 -->
                <a href="#">
                  <span class="label label-info"> IE</span>
                </a>
                <a href="#">
                  <span class="label label-info">II </span>
                </a>
              </p>
            </div>
          </div>
        </div>
        <div class="blog-content">
          <!-- 프로그램 사진, 이름, 정원, 접수기간, 수강기간, 금액, 연령 -->
          <h3>
            ${dto.pro_name}
          </h3>
          <p>
            ${dto.pro_exp }
          </p>
        </div>
        <button class="btn btn-primary" onclick="location.href='read.do?pro_obj=${dto.pro_obj}'">
          더보기
        </button>
      </div>
    </div>
    
    <c:if test="${status.count % 2 == 0}">
      </div>
    </c:if>
  </c:forEach>
</div>
<!--container end-->

<script>
/*
function product_delete() {
	if (confirm("첨부된 파일은 영구히 삭제됩니다.\n진행할까요?")) {
		$.ajax({
			url: "delete.do",
			type: "POST",
			success: function(response) {
			  // 서버 응답에 대한 처리
			  console.log("파일 삭제 요청 성공");
			},
			error: function(xhr, status, error) {
			  // 요청이 실패했을 때 처리
			  console.log("파일 삭제 요청 실패");
			  console.log("Error: " + error);
			}
		});
	}
}
*/
</script> 
       
<%@ include file="../footer.jsp" %>