let index = {
		init: function() {
			$("#btn-save").on("click", ()=>{   // function(){}, ()=>{} this를 바인딩하기 위해
				this.save();
			});
		/*	$("#btn-login").on("click", ()=>{   // function(){}, ()=>{} this를 바인딩하기 위해
				this.login();
			});*/
			$("#btn-update").on("click", ()=>{   // function(){}, ()=>{} this를 바인딩하기 위해
				this.update();
			});
		},

		save: function(){
//			alert('gdg');
			let data = {
				username: $("#id").val(),
				password: $("#password").val(),
				passwordCheck: $("#password-check").val(),
				email: $("#email").val(),
				name: $("#name").val()
			};
			console.log(data);
			
			// ajax호출시 default가 비동기 호출
			// ajax 통신을 이용해서 3개의 파라미터를 json으로 변경하여 insert 요청
			// ajax가 통신을 성공하고 json을 리턴해주면 자동으로 자바 오브젝트로 변환
			$.ajax({ 
				type: "POST",
				url: "/auth/joinProc",
				data: JSON.stringify(data),  // http body데이터
				contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
				dataType: "json" // 요청을 서버로 해서 응답이 왔을 때 기본적으로 모든 것이 문자열 (생긴게 json이라면) => javascript 오브젝트로 변경
			}).done(function(resp){
				if(resp.status === 500){
					alert("회원가입에 실패하였습니다.");
				}else{
					alert("회원가입이 완료되었습니다.");
					location.href="/auth/loginForm";
				}
			}).fail(function(error){
				alert("에러");
				alert(JSON.stringify(error));
			}); 
		},
		
		update: function(){
			let data = {
				id: $("#id").val(),
				username: $("#userId").val(),
				password: $("#password").val(),
				passwordCheck: $("#password-check").val(),
				email: $("#email").val(),
				name: $("#name").val()
			};
			
			$.ajax({ 
				type: "PUT",
				url: "/user",
				data: JSON.stringify(data),  // http body데이터
				contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
				dataType: "json" 
			}).done(function(resp){
				alert("수정이 완료되었습니다.");
				location.href="/";
			}).fail(function(error){
				alert("에러");
				alert(JSON.stringify(error));
			}); 
		}
		
/*		login: function(){
//			alert('gdg');
			let data = {
				username: $("#id").val(),
				password: $("#password").val(),
			};
			
			$.ajax({ 
				type: "POST",
				url: "/api/user/login",
				data: JSON.stringify(data),  // http body데이터
				contentType: "application/json; charset=utf-8", // body데이터가 어떤 타입인지(MIME)
				dataType: "json" // 요청을 서버로 해서 응답이 왔을 때 기본적으로 모든 것이 문자열 (생긴게 json이라면) => javascript 오브젝트로 변경
			}).done(function(resp){
				alert("로그인이 완료되었습니다.");
//				console.log(resp);
				location.href="/";
			}).fail(function(error){
				alert("에러");
				alert(JSON.stringify(error));
			}); 
		}*/
}

index.init();   