<%@page import="kr.co.itwill.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.agreeCon {
    
    width: 80%;
    border: 1px solid #000;
    height: 350px;
    padding: 20px;
    overflow-y: scroll;
    margin: auto;
    margin-bottom: 30px;
    
    box-sizing: border-box;
    
    background-color: #fff;
    
    border-radius: 3px;    
    
    word-spacing: -1px;
    letter-spacing: 0px;
    overflow-wrap: break-word;
    word-break: keep-all;
}
</style>
<%@ include file="../header.jsp"%>

<!--breadcrumbs start-->
<div class="breadcrumbs">
   <div class="container">
      <div class="row">
         <div class="col-lg-4 col-sm-4">
            <h1>
               회원가입
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
               		회원가입
               </li>
               <li class="">
                  이용 약관
               </li>
            </ol>
         </div>
      </div>
   </div>
</div>
<!--breadcrumbs end-->

<div class="content">

	<!-- 본문시작 agree.jsp-->
	<!--container start-->
	<form action="join.do" method="post" onsubmit="return send()">
		<!-- JavaScript는 현재페이지에 작성 -->
		<div id="font" style="text-align: center; font-size: 30px; padding-top: 50px; padding-bottom: 50px;">
			<h6>이용 약관</h6>
		</div>
		
		<div class="agreeCon" tabindex="0">
			<div>
				화성시어린이문화센터 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. </br> 본 약관은 다양한 화성시어린이문화센터
				서비스의 이용과 관련하여 화성시어린이문화센터 서비스를 제공하는 화성시어린이문화센터(이하 ‘센터’)와 이를 이용하는
				비회원과의 관계를 설명하며, </br> 아울러 여러분의 센터 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.</br>
				센터 서비스를 이용하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의
				깊게 살펴봐 주시기 바랍니다.</br> 다양한 센터 서비스를 즐겨보세요.</br> </br> 센터는
				www.childrenjob.hscity.go.kr 센터 도메인의 웹사이트 및 운영 응용프로그램(어플리케이션)을 통해
				콘텐츠 제공, 체험 상품 등 여러분의 생활에 편리함을 더할 수 있는 다양한 서비스를 제공하고 있습니다.</br> 여러분은 PC,
				휴대폰 등 인터넷 이용이 가능한 각종 단말기를 통해 각양각색의 센터 서비스를 자유롭게 이용하실 수 있으며, 개별 서비스들의
				구체적인 내용은 각 서비스 상의 안내, 공지사항 등에서 쉽게 확인하실 수 있습니다.</br> 센터는 기본적으로 여러분 모두에게
				동일한 내용의 서비스를 제공합니다. 다만, '청소년보호법' 등 관련 법령이나 기타 개별 서비스 제공에서의 특별한 필요에
				의해서</br> 연령 또는 일정한 등급을 기준으로 이용자를 구분하여 제공하는 서비스의 내용, 이용 시간, 이용 횟수 등을 다르게
				하는 등 일부 이용을 제한하는 경우가 있습니다.</br> 자세한 내용은 역시 각 서비스 상의 안내, 공지사항 등에서 확인하실 수
				있습니다.</br> 센터 서비스에는 기본적으로 본 약관이 적용됩니다만 센터가 다양한 서비스를 제공하는 과정에서 부득이 본 약관 외
				별도의 약관, 운영정책 등을 적용하는 경우가 있습니다.</br> 센터가 이용자에 대해 관련 개인정보를 안전하게 처리하기 위하여
				기울이는 노력이나 기타 상세한 사항은 개인정보 처리방침에서 확인하실 수 있습니다.</br> 센터는 여러분이 서비스를 이용하기 위해
				일정 기간 동안 예약 혹은 접속한 기록이 없는 경우, 전자메일, 서비스 내 알림 또는 기타 적절한 전자적 수단을 통해</br>
				사전에 안내해 드린 후 여러분의 정보를 파기하거나 분리 보관할 수 있으며, 만약 이로 인해 서비스 제공을 위해 필수적인
				정보가 부족해질 경우 부득이 관련 서비스 이용계약을 해지할 수 있습니다.</br> </br> 센터는 여러분이 센터 서비스를 이용함에 있어
				센터의 고의 또는 과실로 인하여 손해를 입게 될 경우 관련 법령에 따라 손해를 배상합니다.</br> 다만, 천재지변 또는 이에
				준하는 불가항력으로 인하여 센터가 서비스를 제공할 수 없거나 이용자의 고의 또는 과실로 인하여</br> 서비스를 이용할 수 없어
				발생한 손해에 대해서 센터는 책임을 부담하지 않습니다.</br> 그리고 센터가 손해배상책임을 부담하는 경우에도 통상적으로 예견이
				불가능하거나 특별한 사정으로 인한 특별 손해 또는 간접 손해,</br> 기타 징벌적 손해에 대해서는 관련 법령에 특별한 규정이 없는
				한 책임을 부담하지 않습니다.</br> 한편, 센터 서비스를 매개로 한 여러분간의 교환, 거래 등에서 발생한 손해나 여러분이 서비스
				상에 게재된 콘텐츠를 신뢰함으로써 발생한 손해에 대해서도</br> 센터는 특별한 사정이 없는 한 이에 대해 책임을 부담하지
				않습니다. 언제든지 센터 서비스 이용계약을 해지하실 수 있습니다.</br> </br> 이용자는 언제든지 센터 서비스 이용계약을 취소할 수
				있으며,</br> 이 경우 센터는 관련 법령 등이 정하는 바에 따라 이를 지체 없이 처리하겠습니다.</br> 센터 서비스 이용계약이
				취소되면, 관련 법령 및 개인정보처리방침에 따라 해당 이용자의 정보를 보유할 수 있는 경우를 제외하고,</br> 해당 이용자에
				부속된 일체 정보를 포함한 모든 데이터는 소멸됨과 동시에 복구할 수 없게 됩니다.</br> 서비스 중단 또는 변경 시 꼭
				알려드리겠습니다.</br> </br> 센터는 연중 무휴, 1일 24시간 안정적으로 서비스를 제공하기 위해 최선을 다하고 있습니다만, 컴퓨터,
				서버 등 정보통신설비의 보수점검, 교체 또는 고장, 통신두절 등</br> 운영상 상당한 이유가 있는 경우 부득이 서비스의 전부 또는
				일부를 중단할 수 있습니다.</br> 한편, 센터는 서비스 운영 또는 개선을 위해 상당한 필요성이 있는 경우 서비스의 전부 또는
				일부를 수정, 변경 또는 종료할 수 있습니다.</br> 무료로 제공되는 서비스의 전부 또는 일부를 수정, 변경 또는 종료하게 된
				경우 관련 법령에 특별한 규정이 없는 한 별도의 보상을 하지 않습니다.</br> 이 경우 센터는 예측 가능한 경우 상당기간 전에
				이를 안내하며, 만약 예측 불가능한 경우라면 사후 지체 없이 상세히 설명하고 안내 드리겠습니다.</br> 여러분이 쉽게 알 수
				있도록 약관 및 운영정책을 게시하며 사전 공지 후 개정합니다.</br> </br> 화성시어린이문화센터는 본 약관의 내용을 여러분이 쉽게
				확인할 수 있도록 서비스 예약결제 화면에 게시하고 있습니다.</br> 화성시어린이문화센터는 수시로 본 약관, 계정 및 게시물
				운영정책을 개정할 수 있습니다만, 관련 법령을 위배하지 않는 범위 내에서 개정할 것이며,</br> 사전에 그 개정 이유와 적용
				일자를 서비스 내에 알리도록 하겠습니다.</br> 또한 여러분에게 불리할 수 있는 중대한 내용의 약관 변경의 경우에는 최소 30일
				이전에 해당 서비스 내 공지하고</br> 별도의 전자적 수단(전자메일, 서비스 내 알림 등)을 통해 개별적으로 알릴 것입니다.</br> </br>
				화성시어린이문화센터는 변경된 약관을 게시한 날로부터 효력이 발생되는 날까지 약관 변경에 대한 여러분의 의견을 기다립니다.</br>
				위 기간이 지나도록 여러분의 의견이 화성시어린이문화센터에 접수되지 않으면, 여러분이 변경된 약관에 따라 서비스를 이용하는
				데에 동의하는 것으로 간주됩니다.</br> 화성시어린이문화센터로서는 매우 안타까운 일이지만, 여러분이 변경된 약관에 동의하지 않는
				경우 변경된 약관의 적용을 받는 해당 서비스의 제공이 더 이상 불가능하게 될 수 있습니다.</br> </br> 화성시어린이문화센터 서비스에는
				기본적으로 본 약관이 적용됩니다만, 부득이 각 개별 서비스의 고유한 특성을 반영하기 위해 본 약관 외 별도의 약관,
				운영정책이 추가로 적용될 때가 있습니다.</br> 따라서 별도의 약관, 운영정책에서 그 개별 서비스 제공에 관하여 본 약관, 계정
				및 게시물 운영정책과 다르게 정한 경우에는 별도의 약관, 운영정책이 우선하여 적용됩니다.</br> 이러한 내용은 각각의 개별 서비스
				초기 화면에서 확인해 주시기 바랍니다.</br> </br> 본 약관은 한국어를 정본으로 합니다. 본 약관 또는 화성시어린이문화센터 서비스와
				관련된 여러분과 화성시어린이문화센터와의 관계에는 대한민국의 법령이 적용됩니다.</br> 그리고 본 약관 또는 화성시어린이문화센터
				서비스와 관련하여 여러분과 화성시어린이문화센터 사이에 분쟁이 발생할 경우, 그 분쟁의 처리는 대한민국 '민사소송법'에서
				정한 절차를 따릅니다.</br> </br> 공지 일자: 2019년 5월 13일</br> 적용 일자: 2019년 5월 14일</br> </br> 화성시어린이문화센터
				서비스와 관련하여 궁금하신 사항이 있으시면 해당부서(대표번호: 031-5183-3200/ 평일 09:30~18:30)로
				문의 주시기 바랍니다.
			</div>
		</div>
		
		<div style="text-align: center">
				<div style="margin-bottom: 30px;">
					<label><input type="checkbox" name="agree" id="agree">&nbsp;&nbsp;위 내용을 읽었으며, "이용 약관"에 동의합니다</label>
			  	</div>
		</div>
		
		<div id="font" style="text-align: center; font-size: 30px; padding-top: 50px; padding-bottom: 50px;">
			<h6>
				<span> 개인정보수집 및 이용에 대한 안내</span>
			</h6>
		</div>

		<div class="agreeCon" tabindex="0">
			<div>
				1. 수집하는 개인정보<br /> 이용자는 비회원으로 가입을 하지 않아도 서비스를 이용할 수 있습니다.
				화성시어린이문화센터는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.<br /> 예약결제 시점에
				화성시어린이문화센터가 이용자로부터 수집하는 개인정보는 아래와 같습니다.<br /> - 예약결제 및 예매확인 시에 ‘이름,
				휴대전화번호, 이메일 주소’를 필수항목으로 수집합니다.<br /> 서비스 이용 과정에서 이용자로부터 수집하는 개인정보는
				아래와 같습니다.<br /> 화성시어린이문화센터 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당
				서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다.<br /> 추가로 개인정보를 수집할 경우에는 해당
				개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및<br /> 이용목적, 개인정보의
				보관기간’에 대해 안내 드리고 동의를 받습니다.<br /> 서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록,
				기기정보, 위치정보가 생성되어 수집될 수 있습니다.<br /> <br /> 구체적으로<br /> 1) 서비스 이용
				과정에서 이용자에 관한 정보를 정보통신서비스 제공자가 자동화된 방법으로 생성하여 이를 저장(수집)하거나,<br /> 2)
				이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환한 후에 수집하는 경우를 의미합니다.<br />
				<br /> 2. 수집한 개인정보의 이용<br /> 예약결제 의사의 확인, 이용자 식별, 예약취소 의사의 확인을 위하여
				개인정보를 이용합니다.<br /> 콘텐츠 등 서비스 제공(광고 포함)에 더하여, 서비스 방문 및 이용기록의 분석 등 신규
				서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.<br /> 법령 및 화성시어린이문화센터
				이용약관을 위반하는 이용자에 대한 이용 제한 조치, 부정 이용 행위를 포함하여<br /> 서비스의 원활한 운영에 지장을
				주는 행위에 대한 방지 및 제재, 부정거래 방지, 고지사항 전달, 분쟁조정을 위한 기록 보존,<br /> 민원처리 등
				이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.<br /> 예약결제 서비스 제공에 따르는 체험권 상품 및
				시네마, 대관시설예약 결제 상품 및 서비스의 예약확인을 위하여 개인정보를 이용합니다.<br /> 이벤트 정보 및 참여기회
				제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.<br /> 서비스 이용기록과 접속 빈도
				분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.<br />
				보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.<br />
				<br /> 3. 개인정보의 파기<br /> 화성시어린이문화센터는 원칙적으로 이용자의 개인정보를 예약결제 건 현장 발권
				시 지체없이 파기하고 있습니다.<br /> 단, 이용자에게 개인정보 보관 기간에 대해 별도의 동의를 얻은 경우, 또는
				법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.<br />
				이용자에게 개인정보 보관 기간에 대해 별도의 동의를 얻은 경우는 아래와 같습니다.<br /> 부정가입 및 징계기록 등의
				부정이용기록은 부정 가입 및 이용 방지를 위하여 수집 시점으로부터 6개월간 보관하고 파기하고 있습니다.<br />
				부정이용기록 내 개인정보는 가입인증 휴대폰 번호(만 14세 미만 회원의 경우 법정대리인 DI)가 있습니다. 결제도용,
				불법할인대출(일명 '카드깡') 등<br /> 관련 법령 및 이용약관을 위반하는 부정거래기록(이름, 휴대전화번호, 이메일
				주소, IP주소, 쿠키, 기기정보)은 부정거래 방지 및<br /> 다른 선량한 이용자의 보호, 안전한 거래 환경 보장을
				위하여 수집 시점으로부터 3년간 보관하고 파기합니다.<br /> 부정이용으로 징계를 받기 전에 서비스를 부정 이용하는
				사례를 막기 위해 탈퇴한 이용자의 휴대전화번호를 복호화가 불가능한 일방향 암호화(해시 처리)하여 6개월간 보관합니다.
				전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는
				경우는 아래와 같습니다. <br /> 화성시어린이문화센터는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본
				정보를 다른 목적으로는 절대 이용하지 않습니다.<br /> 서비스 종료, 이용자에게 동의받은 개인정보 보유기간의 도래와
				같이 개인정보의 수집 및 이용목적이 달성된 개인정보는 재생이 불가능한 방법으로 파기하고 있습니다. <br /> 법령에서
				보존의무를 부과한 정보에 대해서도 해당 기간 경과 후 지체없이 재생이 불가능한 방법으로 파기합니다. <br /> 전자적
				파일 형태의 경우 복구 및 재생이 되지 않도록 기술적인 방법을 이용하여 안전하게 삭제하며, 출력물 등은 분쇄하거나 소각하는
				방식 등으로 파기합니다.<br /> <br /> 전자상거래 등에서 소비자 보호에 관한 법률<br /> 계약 또는
				청약철회 등에 관한 기록: 5년 보관<br /> 대금결제 및 재화 등의 공급에 관한 기록: 5년 보관<br />
				소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관<br /> 전자금융거래법<br /> 전자금융에 관한 기록: 5년
				보관<br /> 통신비밀보호법<br /> 예약결제 기록: 3개월<br />
			</div>
		</div>

		<div style="text-align: center">
				<div style="margin-bottom: 30px;">
					<label><input type="checkbox" name="agree1" id="agree1">&nbsp;&nbsp;위 내용을 읽었으며, "개인정보수집 및 이용에 대한 안내"에 동의합니다</label>
			  	</div>
		</div>

		<div style="text-align: center">
			<button class="btn btn-lg btn-login btn-success" type="submit" onclick="/member/join.do">회원가입 진행</button>
            <button class="btn btn-lg btn-login btn-warning" type="button" onclick="javascript:history.back()">뒤로 가기</button>
		</div>
	</form>


	<script>
		function send() {
			if (document.getElementById("agree").checked && document.getElementById("agree1").checked == true) {
				return true;
			} else if (document.getElementById("agree").checked == false) {
				alert("'이용 약관'에 동의 후 회원가입이 가능합니다");
				document.getElementById("agree").focus();
				return false;
			}else if (document.getElementById("agree1").checked == false) {
				alert("'개인정보수집 및 이용에 대한 안내'에 동의 후 회원가입이 가능합니다");
				document.getElementById("agree1").focus();
				return false;
			}//if end
		}//send() end
	</script>
	<!-- 본문 끝 -->
</div>
<%@ include file="../footer.jsp"%>