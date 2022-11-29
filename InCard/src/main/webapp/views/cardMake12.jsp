<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	    <link rel="stylesheet" type="text/css" href="../css/tui-color-picker.css">
	    <link rel="stylesheet" type="text/css" href="../css/tui-image-editor.css">
		<title>카드 제작</title>
		<style>
	        @import url(<a href="http://fonts.googleapis.com/css?family=Noto+Sans);" target="_blank">http://fonts.googleapis.com/css?family=Noto+Sans);</a>
			* {
				margin:0px 0px 0px 0px;
				padding:0px;
			}
			#wrapper {
				width:1920px;
				margin:auto;
			}
			#background {
				width:1920px;
				height:800px;
				margin:auto;
				float:left;
				background-color:#F5A9F2;
			}
			#makeLocation {
				width:850px;
				height:530px;
				margin:100px 350px 50px 550px;
				float:left;
				background-color:#FFFFFF;
			}
			#saveButton {
				margin:0px 0px 0px 750px;
			}
			.button {
				background-color:#FF8000;
				cursor:pointer;
				color:white;
				font-weight:bold;
				font-size:15pt;
				border:none;
				width:200px;
				height:75px;
				margin: 10px 0px 0px 30px;
			}
			#tui-image-editor-container > div.tui-image-editor-main-container > div.tui-image-editor-header > div.tui-image-editor-header-logo{
				display:none;
			}

		</style>
	</head>
	<body>
		<jsp:include page="header2.jsp"/>
		<div id="wrapper">
			<div id="background">
				<div id="tui-image-editor-container"></div>
					<script type="text/javascript" src="../js/fabric.js"></script>
					<script type="text/javascript" src="../js/tui-code-snippet.min.js"></script>
					<script type="text/javascript" src="../js/tui-color-picker.js"></script>
					<script type="text/javascript" src="../js/FileSaver.min.js"></script>
					<script src="../js/tui-image-editor.js"></script>
					<script>
				    // Image editor
				    var imageEditor = new tui.ImageEditor('#tui-image-editor-container', {
				        includeUI: {
				            loadImage: {
				                path: '../images/cards/선물상자3.png',
				                name: 'SampleImage'
				            },
				            //  theme: blackTheme, // or whiteTheme
				            initMenu: 'filter',
				            menuBarPosition: 'bottom'
				        },
				        cssMaxWidth: 700,
				        cssMaxHeight: 500,
				        usageStatistics: false
				    });
				    window.onresize = function() {
				        imageEditor.ui.resizeEditor();
				    }
					</script>
				</div>
				
			</div>
		</div>
		<jsp:include page="footer.jsp"/>
	</body>
</html>