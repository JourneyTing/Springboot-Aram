let index = {
		init: function() {
			$("#btn-save").on("click", ()=>{
				this.sace();
			});
		}

		save: function(){
			alert('gdg');
		}
}

index.init();   