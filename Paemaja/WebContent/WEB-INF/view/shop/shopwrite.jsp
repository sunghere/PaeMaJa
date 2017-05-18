<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<script type="text/javascript"
	src="<%=request.getContextPath()%>/ckeditor/ckeditor.js"></script>



<script>
		
		$(function () {
			var init=function(){
				
				CKEDITOR.replace( 'ckedtest', {
					width:'100%',
		            height:'400px',
			        filebrowserUploadUrl: 'imageUpload.do',
			      })
			};
					
				
			
			$("#typetest").click(function(){
				showMsgs('작성하시겠습니까??<br><button type="submit">작성</button>');
				var shopContent=CKEDITOR.instances.ckedtest.getData();
				$("#ff").attr("value",shopContent);
				
				$("#ff").val(shopContent);
				
				console.log($("#ff").val());
			});
	
			
			$("#aaa").click(function(){
				/* var shopContent=CKEDITOR.instances.ckedtest.getData();
				$("#ff").attr("value",shopContent) */
				/* $.ajax({
					url:"shopwriteaf.do",
					type:"post",
					async:false,
					data:{"addr": $('input[name="addr"]').val(), 
						  "tel":$("#tel").val(), 
						  "category":$("#category").val(),
						  "menu":$("#menu").val(),
						  "content":$("#ff").val(),
						  "name":$("#name").val(),
						  "search":$("#search").val()},
					success:function(data){
						alert(data)
					}
				}) */
			}) 
			init();
	});


</script>
	<button type="button" id="typetest" value="타입 확인" class="btn"></button>
<form action="shopwriteaf.do" method="post">
	<button id="aaa">저장</button>
	상호 <input type="text" id="name" name="name"> <br>
	주소 <input type="text" id="addr" name="addr"> <br>
	전화번호 <input type="text" id="tel" name="tel"> <br>
	카테고리 <input type="text" id="category" name="category"> <br>
	메뉴 <input type="text" id="menu" name="menu"> <br>
		<input type="hidden" id="ff" name="ff" value="">
	

	<textarea id='ckedtest'>

	</textarea>
	
</form>
<script type="text/javascript"
        src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=5KvZP2PadHIlORT_ptWd&submodules=panorama,geocoder"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function NewZipCode5NumCheck() {
        new daum.Postcode({
            oncomplete: function (data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if (data.userSelectedType === 'R') {
                    //법정동명이 있을 경우 추가한다.
                    if (data.bname !== '') {
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if (data.buildingName !== '') {
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
                }

                /*
                 // 우편번호와 주소 정보를 해당 필드에 넣는다.
                 document.getElementById('inpPOST').value = data.zonecode; //5자리 새우편번호 사용
                 document.getElementById('inpADDR').value = fullAddr;

                 // 커서를 상세주소 필드로 이동한다.
                 document.getElementById('inpADDR').focus();
                 document.getElementById('inpADDR').setSelectionRange(999,999);
                 */

                $("#addrtf").val(fullAddr);
                $("#bSearch").focus();
            }
        }).open();
    }
</script>
<div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
    <div class="row">
        <div class="col-md-4">
            <input id="addrtf" class="form-control" name="addrtf" placeholder="주소를 입력해주세요" type="search">
        </div>
        <div class="col-md-3">
        <button id="bAddress" type="button" class="btn btn-primary"
                onclick="NewZipCode5NumCheck(); return false;">상세주소
        </button>
        </div>
        <button id="bSearch" type="button" class="btn btn-primary">좌표조회</button>
        <div id="map" style="HEIGHT: 300px; WIDTH: 100%"></div>
        <div id="scriptCode"></div>
    </div>
</div>
<script id="code">

    var mylat = 37.5666102;
    var mylng = 126.9783881;
    if (!!navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
    }
    else {
        alert("이 브라우저는 Geolocation를 지원하지 않습니다");
    }
    function errorCallback(error) {
        alert(error.message);
        mapinit();
    }

    function successCallback(position) {
        mylat = position.coords.latitude;
        mylng = position.coords.longitude;
        mapinit();
    }


    var mapOptions = {
        center: new naver.maps.LatLng(mylat, mylng),
        zoom: 10,
        scaleControl: false,
        logoControl: false,
        mapDataControl: false,
        mapTypeControl: true,
        zoomControl: true,
        minZoom: 1
    };

    mapinit = function () {
        mapOptions = {
            center: new naver.maps.LatLng(mylat, mylng),
            zoom: 10,
            scaleControl: false,
            logoControl: false,
            mapDataControl: false,
            mapTypeControl: true,
            zoomControl: true,
            minZoom: 1
        };
        map = new naver.maps.Map('map', mapOptions);

        marker = new naver.maps.Marker({
            position: new naver.maps.LatLng(mylat, mylng),
            map: map
        });

        infoWindow = new naver.maps.InfoWindow({
            content: ''
        });
        updateInfoWindow(map.getCenter());
        map.addListener('click', function (e) {
            updateInfoWindow(e.coord);
        });
        map.addListener('idle', function (e) {
            //updateInfoWindow(map.getCenter());
        });
    }
    var map;

    var marker;

    var infoWindow;


    function updateInfoWindow(latlng) {
        var utmk = naver.maps.TransCoord.fromLatLngToUTMK(latlng),    // 위/경도 -> UTMK
            tm128 = naver.maps.TransCoord.fromUTMKToTM128(utmk),       // UTMK    -> TM128
            naverCoord = naver.maps.TransCoord.fromTM128ToNaver(tm128),     // TM128   -> NAVER
            latlngConv = naver.maps.LatLng(latlng);                         // 위/경도

        var latVal = latlngConv.lat();
        lngVal = latlngConv.lng();

        utmk.x = parseFloat(utmk.x.toFixed(1));
        utmk.y = parseFloat(utmk.y.toFixed(1));

        infoWindow.setContent([
            '<div style="padding:10px;width:340px;font-size:14px;line-height:20px;">',
            '<span onclick="selectLatLng(' + latVal + ', ' + lngVal + ');" style="cursor:pointer;"><strong>LatLng</strong> : ' + latlngConv + '</span> (◀ 클릭)<br />',
            '<strong>UTMK  </strong> : ' + utmk + '<br />',
            '<strong>TM128 </strong> : ' + tm128 + '<br />',
            '<strong>NAVER </strong> : ' + naverCoord + '<br />',
            '</div>'
        ].join(''));

        infoWindow.open(map, latlng);
    }

    function selectLatLng(lat, lng) {
        var sHTMLCODE = "" + lat + "/" + lng;
        $("#scriptCode").html(sHTMLCODE);
    }

    function selectAddress(lat, lng) {
        var latlng = new naver.maps.LatLng(lat, lng);
        map.setCenter(latlng);          // 중심 좌표 이동
        //map.setZoom(13);              // 줌 레벨 변경
        marker.setPosition(latlng);     // 마크 이동
        updateInfoWindow(latlng);       // 정보창 표현
        $("#bAddress").focus();
        $("#addrList").css("visibility", "hidden");
    }

    $("#bSearch").click(function () {
        var sHTML = "";
        var sUrl = "https://apis.daum.net/local/geo/addr2coord?apikey=1b98be2bf5ecb8fa9384650b0345cf83&output=json&page_size=30&q=";
        var sAddr = $("#addrtf").val();
        if (sAddr.length == 0) {
            alert("주소를 입력하세요");
            $("#bAddress").focus();
            return;
        }
        $.ajax({
            type: "post",
            url: sUrl + encodeURIComponent(sAddr),
            dataType: "jsonp",
            async: true,
            success: function (data) {
                if (data.channel.item.length == 0) {
                    alert("올바른 주소를 입력하세요");
                    $("#bAddress").focus();
                }
                else if (data.channel.item.length == 1) {
                    selectAddress(data.channel.item[0].lat, data.channel.item[0].lng);
                }
                else {
                    sHTML = sHTML + "<table cellpadding=\"5\" cellspacing=\"5\" width=\"100%\" height=\"100%\">                                                      ";
                    sHTML = sHTML + "<tbody>                                                                                                                         ";
                    sHTML = sHTML + "<tr>                                                                                                                            ";
                    sHTML = sHTML + "    <td align=\"center\" valign=\"middle\" style=\"background-color:#FFFFFF;\">                                                 ";
                    sHTML = sHTML + "	<table cellpadding=\"3\" cellspacing=\"3\" style=\"border:2px solid #c5dbec;\" width=\"100%\">                               ";
                    sHTML = sHTML + "	<tbody>                                                                                                                      ";
                    sHTML = sHTML + "	<tr>                                                                                                                         ";
                    sHTML = sHTML + "		<td style=\"border:1px solid #c5dbec;text-align:center;height:30px;font-weight:bold;background-color:#dfeffc;\">주소</td>";
                    sHTML = sHTML + "		<td style=\"border:1px solid #c5dbec;text-align:center;height:30px;font-weight:bold;background-color:#dfeffc;\">lat</td> ";
                    sHTML = sHTML + "		<td style=\"border:1px solid #c5dbec;text-align:center;height:30px;font-weight:bold;background-color:#dfeffc;\">lng</td> ";
                    sHTML = sHTML + "	</tr>                                                                                                                        ";
                    for (var i = 0; i < data.channel.item.length; i++) {
                        sHTML = sHTML + "<tr>                                                                                                                                                                                                                                                                       ";
                        sHTML = sHTML + "	<td style=\"border:1px solid #c5dbec;text-align:left;height:30px;font-weight:bold;background-color:#f9fcff;cursor:pointer;\" onclick=\"selectAddress('" + data.channel.item[i]["lat"] + "', '" + data.channel.item[i]["lng"] + "');\">" + data.channel.item[i]["title"] + "</td>";
                        sHTML = sHTML + "	<td style=\"border:1px solid #c5dbec;text-align:center;height:30px;background-color:#ffffff;\">" + data.channel.item[i]["lat"] + "</td>                                                                                                                                 ";
                        sHTML = sHTML + "	<td style=\"border:1px solid #c5dbec;text-align:center;height:30px;background-color:#ffffff;\">" + data.channel.item[i]["lng"] + "</td>                                                                                                                                 ";
                        sHTML = sHTML + "</tr>                                                                                                                                                                                                                                                                      ";
                    }
                    sHTML = sHTML + "</tbody></table></td></tr></tbody></table>";
                    $("#addrList").html("");
                    $("#addrList").html(sHTML);
                    $("#bAddress").focus();
                    $("#addrList").css("visibility", "visible");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert('[' + jqXHR.status + '] ' + textStatus + ': ' + errorThrown + ': ' + jqXHR.responseText);
            }
        });
    });

    //    $("body").append("<div id=\"addrList\" style=\"visibility:hidden;position:absolute;top:25%;left:25%;width:50%;height:50%;z-index:99999;border-width:1px;border-style:none;\"></div>");
</script>