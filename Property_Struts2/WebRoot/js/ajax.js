	function createAJAX(){
		var ajax=null;
		try {
			ajax = new ActiveXObject("microsoft.xmlhttp");
		} catch (e1) {
			try {
				ajax= new XMLHttpRequest();//火狐
			} catch (e2) {
				alert('您的浏览器不合群，请更换！');
			}
		}
		return ajax;
	}