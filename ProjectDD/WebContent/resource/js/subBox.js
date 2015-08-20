	var state=false;
	$(document).ready(function(){
		$("#mem-id").click(function(){
			if(state==false){
				$("#box-info").show();
				state=true;
			}
			else{
				$("#box-info").hide();
				state=false;
			}
		});
	}); 