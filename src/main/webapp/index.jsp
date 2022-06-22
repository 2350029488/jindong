<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
pageContext.setAttribute("PATH",request.getContextPath());
%>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>京东(JD.COM)-综合网购首选-正品低价、品质保障、配送及时、轻松购物！</title>
		<meta name="description" content="京东JD.COM-专业的综合网上购物商城,销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品等数万个品牌优质商品.便捷、诚信的服务，为您提供愉悦的网上购物体验!" />
		<meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,京东" />
		<link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
		<link rel="stylesheet" href="${PATH}/static/css/normalize.css" />
		<link rel="stylesheet" href="${PATH}/static/css/base.css" />
		<link rel="stylesheet" href="${PATH}/static/css/index.css" />
		<script src="${PATH}/static/js/jquery.min.js"></script>
		<script src="${PATH}/static/js/base.js"></script>
		<script src="${PATH}/static/js/index.js"></script>
	</head>
<%--		<style>--%>
<%--			.mr-g {--%>
<%--				width: 304px;--%>
<%--			}--%>
<%--			.mr-g ul {--%>
<%--				display: flex;--%>
<%--				margin-top: 10px;--%>
<%--				flex-wrap: wrap;--%>
<%--				justify-content: space-between;--%>
<%--			}--%>
<%--			.mr-g li {--%>
<%--				width: 76px;--%>
<%--				float: left;--%>
<%--				margin-bottom: 10px;--%>
<%--				text-align: center;--%>
<%--			}--%>
<%--			.mr-g img {--%>
<%--				display: block;--%>
<%--				margin: 0 auto;--%>
<%--			}--%>
<%--			.grid {--%>
<%--				height: 480px;--%>
<%--				margin-top: 10px;--%>
<%--			}--%>
<%--			.grid-col1 {--%>
<%--				width: 190px;--%>
<%--				height: 100%;--%>
<%--				background-color: #6e6568;--%>
<%--				color: #fff;--%>
<%--				font-size: 14px;--%>
<%--				position: relative;--%>
<%--			}--%>
<%--			.grid-col1 ul {--%>
<%--				padding: 10px 0;--%>
<%--			}--%>
<%--			.grid-col1 ul li {--%>
<%--				padding-left: 12px;--%>
<%--				height: 29px;--%>
<%--				line-height: 26px;--%>
<%--				transition: all .5s;--%>
<%--			}--%>
<%--			.grid-col1 ul li:hover {--%>
<%--				padding-left: 20px;--%>
<%--			}--%>
<%--			.grid-col1 ul li:hover {--%>
<%--				background-color: #9c9698;--%>
<%--			}--%>
<%--			.grid-col1 a {--%>
<%--				color: #fff;--%>
<%--				font-size: 14px;--%>
<%--				margin: 0 3px;--%>
<%--			}--%>
<%--			.grid-col1 a:hover {--%>
<%--				color: #f10215;--%>
<%--			}--%>
<%--			.content {--%>
<%--				position: absolute;--%>
<%--				width: 1000px;--%>
<%--				height: 480px;--%>
<%--				top: 0;--%>
<%--				left: 185px;--%>
<%--				border: 1px solid #f7f7f7;--%>
<%--				background-color: #fff;--%>
<%--				z-index: 999;--%>
<%--				box-shadow: 2px 0 5px rgba(0, 0, 0, .3);--%>
<%--				display: none;--%>
<%--			}--%>
<%--			.channel {--%>
<%--				height: 24px;--%>
<%--				padding-left: 20px;--%>
<%--				padding-top: 20px;--%>
<%--				overflow: hidden;--%>
<%--				margin-bottom: 20px;--%>
<%--			}--%>
<%--			.channel a {--%>
<%--				display: block;--%>
<%--				padding-left: 10px;--%>
<%--				padding-right: 13px;--%>
<%--				height: 24px;--%>
<%--				line-height: 24px;--%>
<%--				background-color: #333;--%>
<%--				float: left;--%>
<%--				margin: 0 5px;--%>
<%--			}--%>
<%--			.channel a:hover {--%>
<%--				background-color: #c81623;--%>
<%--				color: #fff;--%>
<%--			}--%>
<%--			.cate_detail {--%>
<%--				padding: 10px 17px 0 20px;--%>
<%--				overflow: hidden;--%>
<%--			}--%>
<%--			.cate_detail dl {--%>
<%--				display: block;--%>
<%--			}--%>
<%--			.cate_detail dt {--%>
<%--				width: 67px;--%>
<%--				float: left;--%>
<%--				padding-right: 6px;--%>
<%--				text-align: right;--%>
<%--			}--%>
<%--			.cate_detail dt a {--%>
<%--				color: #333;--%>
<%--				font-weight: 700;--%>
<%--				font-size: 12px;--%>
<%--			}--%>
<%--			.cate_detail div {--%>
<%--				width: 699px;--%>
<%--				overflow: hidden;--%>
<%--			}--%>
<%--			.cate_detail dd {--%>
<%--				float: left;--%>
<%--				margin: 0 7px;--%>
<%--				height: 22px;--%>
<%--			}--%>
<%--			.cate_detail dd a {--%>
<%--				color: #666;--%>
<%--				font-size: 12px;--%>
<%--			}--%>
<%--			/*banner部分开始*/--%>
<%--			.grid-col2 {--%>
<%--				width: 790px;--%>
<%--				height: 100%;--%>
<%--				margin-left: 10px;--%>
<%--			}--%>
<%--			.grid-col2-b div {--%>
<%--				margin-top: 10px;--%>
<%--			}--%>
<%--			/*箭头部分开始*/--%>
<%--			.grid-col2-t {--%>
<%--				position: relative;--%>
<%--				height: 340px;--%>
<%--			}--%>
<%--			.t-img li {--%>
<%--				position: absolute;--%>
<%--			}--%>
<%--			.arrow-l,--%>
<%--			.arrow-r {--%>
<%--				position: absolute;--%>
<%--				top: 50%;--%>
<%--				width: 30px;--%>
<%--				height: 60px;--%>
<%--				background: rgba(0, 0, 0, .3);--%>
<%--				transform: translateY(-50%);--%>
<%--				text-align: center;--%>
<%--				line-height: 60px;--%>
<%--				font-size: 20px;--%>
<%--				color: rgba(255, 255, 255, .6);--%>
<%--				font-family: arial;--%>
<%--				font-weight: normal;--%>
<%--			}--%>
<%--			.arrow-l {--%>
<%--				left: 0;--%>
<%--			}--%>
<%--			.arrow-r {--%>
<%--				right: 0;--%>
<%--			}--%>
<%--			.circle {--%>
<%--				height: 20px;--%>
<%--				background-color: rgba(255, 255, 255, .3);--%>
<%--				position: absolute;--%>
<%--				left: 50%;--%>
<%--				bottom: 20px;--%>
<%--				transform: translateX(-50%);--%>
<%--				border-radius: 10px;--%>
<%--				/*padding-left: 0 8px 0 8px;*/--%>
<%--				padding-left: 8px;--%>
<%--			}--%>
<%--			.circle li {--%>
<%--				width: 12px;--%>
<%--				height: 12px;--%>
<%--				border-radius: 50%;--%>
<%--				background-color: #fff;--%>
<%--				float: left;--%>
<%--				margin: 4px;--%>
<%--				cursor: pointer;--%>
<%--			}--%>
<%--			.circle .current {--%>
<%--				background-color: #f10215;--%>
<%--			}--%>
<%--			/*右边模块*/--%>
<%--			.grid-col3 {--%>
<%--				width: 190px;--%>
<%--				height: 100%;--%>
<%--				background-color: #fff;--%>
<%--			}--%>
<%--			.login {--%>
<%--				height: 85px;--%>
<%--				border-bottom: 1px solid #ccc;--%>
<%--				padding: 15px;--%>
<%--			}--%>
<%--			.login-t {--%>
<%--				width: 95px;--%>
<%--				height: 60px;--%>
<%--				line-height: 20px;--%>
<%--				font-size: 12px;--%>
<%--				white-space: nowrap;--%>
<%--				overflow: hidden;--%>
<%--				text-overflow: ellipsis;--%>
<%--				color: #666;--%>
<%--				padding-left: 60px;--%>
<%--				position: relative;--%>
<%--			}--%>
<%--			.login-t a {--%>
<%--				color: #666;--%>
<%--			}--%>
<%--			.login-t a:hover {--%>
<%--				color: #f10512;--%>
<%--			}--%>
<%--			.user_info {--%>
<%--				width: 50px;--%>
<%--				height: 50px;--%>
<%--				position: absolute;--%>
<%--				left: 0;--%>
<%--				top: 0;--%>
<%--				/*background: url() -70px 0 no-repeat;*/--%>
<%--			}--%>
<%--			.user_info img {--%>
<%--				width: 40px;--%>
<%--				border-radius: 50%;--%>
<%--				margin: 5px;--%>
<%--			}--%>
<%--			.login-b a {--%>
<%--				display: inline-block;--%>
<%--				width: 70px;--%>
<%--				height: 20px;--%>
<%--				line-height: 20px;--%>
<%--				border: 2px solid #f10215;--%>
<%--				margin-right: 3px;--%>
<%--				text-align: center;--%>
<%--				color: #f10215;--%>
<%--			}--%>
<%--			.login-b a:hover {--%>
<%--				background-color: #f10215;--%>
<%--				color: #fff;--%>
<%--			}--%>
<%--			.news {--%>
<%--				height: 154px;--%>
<%--				border-bottom: 1px solid #ccc;--%>
<%--				padding: 7px 13px 0;--%>
<%--				box-sizing: border-box;--%>
<%--			}--%>
<%--			.news-t {--%>
<%--				height: 19px;--%>
<%--				border-bottom: 1px solid #ccc;--%>
<%--				position: relative;--%>
<%--			}--%>
<%--			.news-t a {--%>
<%--				float: left;--%>
<%--				height: 17px;--%>
<%--				line-height: 17px;--%>
<%--			}--%>
<%--			.cuxiao {--%>
<%--				width: 38px;--%>
<%--				border-right: 1px solid #ccc;--%>
<%--			}--%>
<%--			.gg {--%>
<%--				margin-left: 15px;--%>
<%--			}--%>
<%--			.news-t .more {--%>
<%--				float: right;--%>
<%--			}--%>
<%--			.news-t div {--%>
<%--				width: 28px;--%>
<%--				height: 2px;--%>
<%--				background-color: #f10215;--%>
<%--				position: absolute;--%>
<%--				bottom: -1px;--%>
<%--			}--%>
<%--			.redline {--%>
<%--				left: 0;--%>
<%--				display: none;--%>
<%--			}--%>
<%--			.redline:last-child {--%>
<%--				left: 51px;--%>
<%--				display: block;--%>
<%--			}--%>
<%--			.news-b {--%>
<%--				padding-top: 15px;--%>
<%--			}--%>
<%--			.news-b li {--%>
<%--				height: 23px;--%>
<%--				line-height: 23px;--%>
<%--			}--%>
<%--			.news-l {--%>
<%--				display: none;--%>
<%--			}--%>
<%--			.news-r {--%>
<%--				width: 160px;--%>
<%--			}--%>
<%--			.news-r a {--%>
<%--				display: block;--%>
<%--				white-space: nowrap;--%>
<%--				overflow: hidden;--%>
<%--				text-overflow: ellipsis;--%>
<%--			}--%>
<%--			.news-r span {--%>
<%--				font-size: 12px;--%>
<%--				height: 16px;--%>
<%--				width: 35px;--%>
<%--				line-height: 16px;--%>
<%--				text-align: center;--%>
<%--				color: #e1251b;--%>
<%--				background-color: rgba(225,37,27,.08);--%>
<%--				margin-right: 6px;--%>
<%--			}--%>
<%--			.expand {--%>
<%--				height: 209px;--%>
<%--				overflow: hidden;--%>
<%--			}--%>
<%--			.expand ul {--%>
<%--				width: 195px;--%>
<%--			}--%>
<%--			.expand li {--%>
<%--				width: 47px;--%>
<%--				height: 69px;--%>
<%--				border-right: 1px solid #ccc;--%>
<%--				border-bottom: 1px solid #ccc;--%>
<%--				float: left;--%>
<%--			}--%>
<%--			.expand li a {--%>
<%--				display: block;--%>
<%--				padding-top: 15px;--%>
<%--				text-align: center;--%>
<%--			}--%>
<%--			.expand li i {--%>
<%--				display: block;--%>
<%--				margin: 0 auto;--%>
<%--				margin-bottom: 10px;--%>
<%--				/*background: url(../images/sprite_fs@1x.png) no-repeat;*/--%>
<%--			}--%>
<%--			.expand li:first-child i {--%>
<%--				width: 18px;--%>
<%--				height: 23px;--%>
<%--				background-position: -5px -88px;--%>
<%--			}--%>
<%--			.expand li:nth-child(2) i {--%>
<%--				width: 20px;--%>
<%--				height: 20px;--%>
<%--				background-position: -2px -46px;--%>
<%--			}--%>
<%--			.expand li:nth-child(3) i {--%>
<%--				width: 18px;--%>
<%--				height: 20px;--%>
<%--				background-position: -47px -90px;--%>
<%--			}--%>
<%--			.expand li:nth-child(4) i {--%>
<%--				width: 24px;--%>
<%--				height: 20px;--%>
<%--				background-position: -88px -3px;--%>
<%--			}--%>
<%--			.expand li:nth-child(5) i {--%>
<%--				width: 22px;--%>
<%--				height: 20px;--%>
<%--				background-position: -89px -46px;--%>
<%--			}--%>
<%--			.expand li:nth-child(6) i {--%>
<%--				width: 18px;--%>
<%--				height: 20px;--%>
<%--				background-position: -3px -2px;--%>
<%--			}--%>
<%--			.expand li:nth-child(7) i {--%>
<%--				width: 22px;--%>
<%--				height: 20px;--%>
<%--				background-position: -45px -46px;--%>
<%--			}--%>
<%--			.expand li:nth-child(8) i {--%>
<%--				width: 15px;--%>
<%--				height: 22px;--%>
<%--				background-position: -93px -89px;--%>
<%--			}--%>
<%--			.expand li:nth-child(9) i {--%>
<%--				width: 18px;--%>
<%--				height: 21px;--%>
<%--				background-position: -135px -1px;--%>
<%--			}--%>
<%--			.expand li:nth-child(10) i {--%>
<%--				width: 17px;--%>
<%--				height: 23px;--%>
<%--				background-position: -136px -45px;--%>
<%--			}--%>
<%--			.expand li:nth-child(11) i {--%>
<%--				width: 22px;--%>
<%--				height: 20px;--%>
<%--				background-position: -133px -90px;--%>
<%--			}--%>
<%--			.expand li:nth-child(12) i {--%>
<%--				width: 15px;--%>
<%--				height: 22px;--%>
<%--				background-position: -48px -1px;--%>
<%--			}--%>
<%--			.countdown {--%>
<%--				height: 260px;--%>
<%--				margin-top: 10px;--%>
<%--			}--%>
<%--			.countdown-hd {--%>
<%--				width: 190px;--%>
<%--				height: 260px;--%>
<%--				/*background: url(../images/skill.png) no-repeat;*/--%>
<%--				text-align: center;--%>
<%--				color: #fff;--%>
<%--			}--%>
<%--			.countdown-hd h3 {--%>
<%--				font-size: 30px;--%>
<%--				margin-top: 35px;--%>
<%--			}--%>
<%--			.hd_countdown {--%>
<%--				margin-top: 100px;--%>
<%--				font-size: 14px;--%>
<%--			}--%>
<%--			.hd_countdown strong {--%>
<%--				font-size: 18px;--%>
<%--			}--%>
<%--			.timer {--%>
<%--				width: 130px;--%>
<%--				height: 30px;--%>
<%--				margin-top: 10px;--%>
<%--				margin: 20px auto 0;--%>
<%--				overflow: hidden;--%>
<%--			}--%>
<%--			.timer span {--%>
<%--				display: inline-block;--%>
<%--				background-color: #2f3430;--%>
<%--				width: 30px;--%>
<%--				height: 30px;--%>
<%--				line-height: 30px;--%>
<%--				margin-right: 20px;--%>
<%--				font-size: 20px;--%>
<%--				float: left;--%>
<%--				position: relative;--%>
<%--			}--%>
<%--			.timer span:last-child {--%>
<%--				margin-right: 0;--%>
<%--			}--%>
<%--			.timer span::after {--%>
<%--				content: ":";--%>
<%--				position: absolute;--%>
<%--				right: -20px;--%>
<%--				top: -2px;--%>
<%--				width: 20px;--%>
<%--				height: 100%;--%>
<%--				font-weight: bolder;--%>
<%--			}--%>
<%--			.countdown-bd {--%>
<%--				width: 1000px;--%>
<%--				height: 260px;--%>
<%--				background-color: #ebebeb;--%>
<%--			}--%>
<%--			.countdown-bd li {--%>
<%--				width: 249px;--%>
<%--				height: 160px;--%>
<%--				border-right: 1px solid #ccc;--%>
<%--				float: left;--%>
<%--				margin-top: 50px;--%>
<%--			}--%>
<%--			.countdown-bd li:last-child{--%>
<%--				border-right: 0;--%>
<%--			}--%>
<%--			.recomment {--%>
<%--				height: 260px;--%>
<%--				margin-top: 20px;--%>
<%--			}--%>
<%--			.recom-l {--%>
<%--				float: left;--%>
<%--				width: 190px;--%>
<%--				height: 100%;--%>
<%--				/*background: url(../images/recomment.png) no-repeat;*/--%>
<%--			}--%>
<%--			.recom-r {--%>
<%--				float: left;--%>
<%--				width: 990px;--%>
<%--				height: 100%;--%>
<%--				margin-left: 10px;--%>
<%--				overflow: hidden;--%>
<%--				background-color: #fff;--%>
<%--			}--%>
<%--			.recom-r:hover ul {--%>
<%--				animation-play-state: paused;--%>
<%--			}--%>
<%--			.recom-r ul {--%>
<%--				width: 200%;--%>
<%--				animation: moving 8s linear infinite;--%>
<%--			}--%>
<%--			@keyframes moving {--%>
<%--				from {--%>
<%--					transform: translateX(0);--%>
<%--				} to {--%>
<%--					  transform: translateX(-990px);--%>
<%--				  }--%>
<%--			}--%>
<%--			.recom-r li {--%>
<%--				float: left;--%>
<%--				width: 150px;--%>
<%--				height: 181px;--%>
<%--				margin: 20px 15px 0 0;--%>
<%--			}--%>
<%--			.recom-r li:nth-child(2n) {--%>
<%--				margin: 50px 15px 0 0;--%>
<%--			}--%>
<%--			.box-hd {--%>
<%--				height: 30px;--%>
<%--				border-bottom: 2px solid #f10215;--%>
<%--				margin-top: 25px;--%>
<%--			}--%>
<%--			.box-hd h3 {--%>
<%--				float: left;--%>
<%--				font-size: 18px;--%>
<%--				color: #f10215;--%>
<%--			}--%>
<%--			.tab-list {--%>
<%--				float: right;--%>
<%--				line-height: 30px;--%>
<%--			}--%>
<%--			.tab-list li {--%>
<%--				float: left;--%>
<%--				font-size: 14px;--%>
<%--				color: #ccc;--%>
<%--			}--%>
<%--			.tab-list  li a {--%>
<%--				margin: 0 15px;--%>
<%--			}--%>
<%--			.box-bd {--%>
<%--				height: 360px;--%>
<%--			}--%>
<%--			.box-bd li {--%>
<%--				overflow: hidden;--%>
<%--			}--%>
<%--			.box-bd img {--%>
<%--				transition: all .2s;--%>
<%--			}--%>
<%--			.box-bd img:hover {--%>
<%--				margin-left: 5px;--%>
<%--			}--%>
<%--			.w199 {--%>
<%--				width: 199px;--%>
<%--				background-color: #f9f9f9;--%>
<%--			}--%>
<%--			.w329 {--%>
<%--				width: 329px;--%>
<%--			}--%>
<%--			.w219 {--%>
<%--				width: 219px;--%>
<%--				border-right: 1px solid #ccc;--%>
<%--			}--%>
<%--			.w220 {--%>
<%--				width: 220px;--%>
<%--				border-right: 1px solid #ccc;--%>
<%--			}--%>
<%--			.tab-con li {--%>
<%--				height: 360px;--%>
<%--				float: left--%>
<%--			}--%>
<%--			.tab-con-item {--%>
<%--				border-bottom: 1px solid #ccc;--%>
<%--			}--%>
<%--			.tab-con-list {--%>
<%--				overflow: hidden;--%>
<%--				margin-bottom: 15px;--%>
<%--			}--%>
<%--			.tab-con-list li {--%>
<%--				width: 86px;--%>
<%--				height: 32px;--%>
<%--				line-height: 32px;--%>
<%--				border-bottom: 1px solid #ccc;--%>
<%--				margin-left: 10px;--%>
<%--				text-align: center;--%>
<%--			}--%>
<%--			.fixedtool {--%>
<%--				position: fixed;--%>
<%--				top: 260px;--%>
<%--				right: 50%;  /* 先走浏览器宽度的一半 */--%>
<%--				margin-right: -657px;  /* 再走版心的一半加自己本身宽度再加2px空白 1190/2+66+2 */--%>
<%--				width: 60px;--%>
<%--			}--%>
<%--			.fixedtool li {--%>
<%--				height: 60px;--%>
<%--				width: 60px;--%>
<%--				padding: 11px 16px;--%>
<%--				box-sizing: border-box;--%>
<%--				font-size: 14px;--%>
<%--				text-align: center;--%>
<%--				border-bottom: 1px solid #ccc;--%>
<%--				cursor: pointer;--%>
<%--				background-color: #fff;--%>
<%--			}--%>
<%--			.fixedtool li:first-child {--%>
<%--				color: #e1251b;--%>
<%--			}--%>
<%--			.fixedtool ul .current {--%>
<%--				background-color: #f10215;--%>
<%--				color: #fff;--%>
<%--				transition: all .2s;--%>
<%--			}--%>
<%--			@media only screen and (min-width: 500px) {--%>
<%--				.mr-g,--%>
<%--				.zhai,--%>
<%--				.recom-l p,--%>
<%--				.m-copyright,--%>
<%--				.commonNav {--%>
<%--					display: none;--%>
<%--				}--%>
<%--			}--%>
<%--			@media only screen and (max-width: 323px) {--%>
<%--				.w {--%>
<%--					width: 304px;--%>
<%--					overflow: hidden;--%>
<%--				}--%>
<%--				.grid,--%>
<%--				.countdown-bd .kuan,--%>
<%--				.recom-r li:nth-child(5n),--%>
<%--				.recom-r li:nth-child(6n),--%>
<%--				.tab-list,--%>
<%--				.tab-con-list,--%>
<%--				.fixedtool,--%>
<%--				footer {--%>
<%--					display: none;--%>
<%--				}--%>
<%--				.countdown {--%>
<%--					height: 320px;--%>
<%--					width: 304px;--%>
<%--				}--%>
<%--				.countdown-hd {--%>
<%--					width: 304px;--%>
<%--					height: 240px;--%>
<%--					/*background: url(../images/m-skill.png) no-repeat;*/--%>
<%--					background-size: 304px;--%>
<%--					text-align: center;--%>
<%--				}--%>
<%--				.countdown-hd h3 {--%>
<%--					margin-top: 20px;--%>
<%--					width: 304px;--%>
<%--				}--%>
<%--				.recomment {--%>
<%--					height: 180px;--%>
<%--				}--%>
<%--				.hd_countdown {--%>
<%--					margin-top: 100px;--%>
<%--				}--%>
<%--				.countdown-bd {--%>
<%--					width: 304px;--%>
<%--					height: 80px;--%>
<%--				}--%>
<%--				.countdown-bd ul {--%>
<%--					display: flex;--%>
<%--					height: 80px;--%>
<%--				}--%>
<%--				.countdown-bd li {--%>
<%--					margin: auto;--%>
<%--					flex: 1;--%>
<%--					height: 80px;--%>
<%--				}--%>
<%--				.countdown-bd li:nth-child(4) {--%>
<%--					border-right: 0;--%>
<%--				}--%>
<%--				.recom-l {--%>
<%--					width: 304px;--%>
<%--					height: 60px;--%>
<%--					/*background: url(../images/recomment.png) 0 -170px no-repeat;*/--%>
<%--					background-size: cover;--%>
<%--				}--%>
<%--				.recom-l p {--%>
<%--					text-align: center;--%>
<%--					line-height: 60px;--%>
<%--					font-size: 24px;--%>
<%--					font-weight: 700;--%>
<%--					color: #fff;--%>
<%--				}--%>
<%--				.recom-r {--%>
<%--					width: 304px;--%>
<%--					margin-top: 30px;--%>
<%--					height: 80px;--%>
<%--				}--%>
<%--				.recom-r ul {--%>
<%--					width: 200%;--%>
<%--				}--%>
<%--				@keyframes moving {--%>
<%--					from {--%>
<%--						transform: translateX(0);--%>
<%--					} to {--%>
<%--						  transform: translateX(-304px);--%>
<%--					  }--%>
<%--				}--%>
<%--				.recom-r li {--%>
<%--					float: left;--%>
<%--					width: 76px;--%>
<%--					height: 76px;--%>
<%--					margin: 0;--%>
<%--				}--%>
<%--				.recom-r li img {--%>
<%--					width: 76px;--%>
<%--					height: 76px;--%>
<%--				}--%>
<%--				.recom-r li:nth-child(2n) {--%>
<%--					margin: 0;--%>
<%--				}--%>
<%--				.tab-con li {--%>
<%--					overflow: hidden;--%>
<%--				}--%>
<%--				.w329 {--%>
<%--					width: 304px;--%>
<%--				}--%>
<%--				.home_electric,--%>
<%--				.phone_address,--%>
<%--				.computer_working {--%>
<%--					overflow: hidden;--%>
<%--				}--%>
<%--				.m-copyright p {--%>
<%--					text-align: center;--%>
<%--					font-size: 12px;--%>
<%--					color: #333;--%>
<%--				}--%>
<%--				.commonNav {--%>
<%--					width: 304px;--%>
<%--					position: fixed;--%>
<%--					left: 0;--%>
<%--					bottom: 0;--%>
<%--					z-index: 999;--%>
<%--					background-color: #fff;--%>
<%--					box-shadow: 0 0 10px 0 hsla(0, 6%, 58%, .6)--%>
<%--				}--%>
<%--				.commonNav ul {--%>
<%--					display: flex;--%>
<%--				}--%>
<%--				.commonNav li {--%>
<%--					float: left;--%>
<%--					flex: 1;--%>
<%--				}--%>
<%--			}--%>



<%--			/*! normalize.css v5.0.0 | MIT License | github.com/necolas/normalize.css */--%>
<%--			/*--%>
<%--	        http://necolas.github.io/normalize.css/--%>
<%--	        */--%>
<%--			/**--%>
<%--	         * 1. Change the default font family in all browsers (opinionated).--%>
<%--	         * 2. Correct the line height in all browsers.--%>
<%--	         * 3. Prevent adjustments of font size after orientation changes in--%>
<%--	         *    IE on Windows Phone and in iOS.--%>
<%--	         */--%>

<%--			/* Document--%>
<%--	           ========================================================================== */--%>

<%--			html {--%>
<%--				font-family: sans-serif; /* 1 */--%>
<%--				line-height: 1.15; /* 2 */--%>
<%--				-ms-text-size-adjust: 100%; /* 3 */--%>
<%--				-webkit-text-size-adjust: 100%; /* 3 */--%>
<%--			}--%>

<%--			/* Sections--%>
<%--	           ========================================================================== */--%>

<%--			/**--%>
<%--	         * Remove the margin in all browsers (opinionated).--%>
<%--	         */--%>

<%--			body {--%>
<%--				margin: 0;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Add the correct display in IE 9-.--%>
<%--	         */--%>

<%--			article,--%>
<%--			aside,--%>
<%--			footer,--%>
<%--			header,--%>
<%--			nav,--%>
<%--			section {--%>
<%--				display: block;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Correct the font size and margin on `h1` elements within `section` and--%>
<%--	         * `article` contexts in Chrome, Firefox, and Safari.--%>
<%--	         */--%>

<%--			h1 {--%>
<%--				font-size: 2em;--%>
<%--				margin: 0.67em 0;--%>
<%--			}--%>

<%--			/* Grouping content--%>
<%--	           ========================================================================== */--%>

<%--			/**--%>
<%--	         * Add the correct display in IE 9-.--%>
<%--	         * 1. Add the correct display in IE.--%>
<%--	         */--%>

<%--			figcaption,--%>
<%--			figure,--%>
<%--			main { /* 1 */--%>
<%--				display: block;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Add the correct margin in IE 8.--%>
<%--	         */--%>

<%--			figure {--%>
<%--				margin: 1em 40px;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * 1. Add the correct box sizing in Firefox.--%>
<%--	         * 2. Show the overflow in Edge and IE.--%>
<%--	         */--%>

<%--			hr {--%>
<%--				box-sizing: content-box; /* 1 */--%>
<%--				height: 0; /* 1 */--%>
<%--				overflow: visible; /* 2 */--%>
<%--			}--%>

<%--			/**--%>
<%--	         * 1. Correct the inheritance and scaling of font size in all browsers.--%>
<%--	         * 2. Correct the odd `em` font sizing in all browsers.--%>
<%--	         */--%>

<%--			pre {--%>
<%--				font-family: monospace, monospace; /* 1 */--%>
<%--				font-size: 1em; /* 2 */--%>
<%--			}--%>

<%--			/* Text-level semantics--%>
<%--	           ========================================================================== */--%>

<%--			/**--%>
<%--	         * 1. Remove the gray background on active links in IE 10.--%>
<%--	         * 2. Remove gaps in links underline in iOS 8+ and Safari 8+.--%>
<%--	         */--%>

<%--			a {--%>
<%--				background-color: transparent; /* 1 */--%>
<%--				-webkit-text-decoration-skip: objects; /* 2 */--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Remove the outline on focused links when they are also active or hovered--%>
<%--	         * in all browsers (opinionated).--%>
<%--	         */--%>

<%--			a:active,--%>
<%--			a:hover {--%>
<%--				outline-width: 0;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * 1. Remove the bottom border in Firefox 39-.--%>
<%--	         * 2. Add the correct text decoration in Chrome, Edge, IE, Opera, and Safari.--%>
<%--	         */--%>

<%--			abbr[title] {--%>
<%--				border-bottom: none; /* 1 */--%>
<%--				text-decoration: underline; /* 2 */--%>
<%--				text-decoration: underline dotted; /* 2 */--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Prevent the duplicate application of `bolder` by the next rule in Safari 6.--%>
<%--	         */--%>

<%--			b,--%>
<%--			strong {--%>
<%--				font-weight: inherit;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Add the correct font weight in Chrome, Edge, and Safari.--%>
<%--	         */--%>

<%--			b,--%>
<%--			strong {--%>
<%--				font-weight: bolder;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * 1. Correct the inheritance and scaling of font size in all browsers.--%>
<%--	         * 2. Correct the odd `em` font sizing in all browsers.--%>
<%--	         */--%>

<%--			code,--%>
<%--			kbd,--%>
<%--			samp {--%>
<%--				font-family: monospace, monospace; /* 1 */--%>
<%--				font-size: 1em; /* 2 */--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Add the correct font style in Android 4.3-.--%>
<%--	         */--%>

<%--			dfn {--%>
<%--				font-style: italic;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Add the correct background and color in IE 9-.--%>
<%--	         */--%>

<%--			mark {--%>
<%--				background-color: #ff0;--%>
<%--				color: #000;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Add the correct font size in all browsers.--%>
<%--	         */--%>

<%--			small {--%>
<%--				font-size: 80%;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Prevent `sub` and `sup` elements from affecting the line height in--%>
<%--	         * all browsers.--%>
<%--	         */--%>

<%--			sub,--%>
<%--			sup {--%>
<%--				font-size: 75%;--%>
<%--				line-height: 0;--%>
<%--				position: relative;--%>
<%--				vertical-align: baseline;--%>
<%--			}--%>

<%--			sub {--%>
<%--				bottom: -0.25em;--%>
<%--			}--%>

<%--			sup {--%>
<%--				top: -0.5em;--%>
<%--			}--%>

<%--			/* Embedded content--%>
<%--	           ========================================================================== */--%>

<%--			/**--%>
<%--	         * Add the correct display in IE 9-.--%>
<%--	         */--%>

<%--			audio,--%>
<%--			video {--%>
<%--				display: inline-block;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Add the correct display in iOS 4-7.--%>
<%--	         */--%>

<%--			audio:not([controls]) {--%>
<%--				display: none;--%>
<%--				height: 0;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Remove the border on images inside links in IE 10-.--%>
<%--	         */--%>

<%--			img {--%>
<%--				border-style: none;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Hide the overflow in IE.--%>
<%--	         */--%>

<%--			svg:not(:root) {--%>
<%--				overflow: hidden;--%>
<%--			}--%>

<%--			/* Forms--%>
<%--	           ========================================================================== */--%>

<%--			/**--%>
<%--	         * 1. Change the font styles in all browsers (opinionated).--%>
<%--	         * 2. Remove the margin in Firefox and Safari.--%>
<%--	         */--%>

<%--			button,--%>
<%--			input,--%>
<%--			optgroup,--%>
<%--			select,--%>
<%--			textarea {--%>
<%--				font-family: sans-serif; /* 1 */--%>
<%--				font-size: 100%; /* 1 */--%>
<%--				line-height: 1.15; /* 1 */--%>
<%--				margin: 0; /* 2 */--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Show the overflow in IE.--%>
<%--	         * 1. Show the overflow in Edge.--%>
<%--	         */--%>

<%--			button,--%>
<%--			input { /* 1 */--%>
<%--				overflow: visible;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Remove the inheritance of text transform in Edge, Firefox, and IE.--%>
<%--	         * 1. Remove the inheritance of text transform in Firefox.--%>
<%--	         */--%>

<%--			button,--%>
<%--			select { /* 1 */--%>
<%--				text-transform: none;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * 1. Prevent a WebKit bug where (2) destroys native `audio` and `video`--%>
<%--	         *    controls in Android 4.--%>
<%--	         * 2. Correct the inability to style clickable types in iOS and Safari.--%>
<%--	         */--%>

<%--			button,--%>
<%--			html [type="button"], /* 1 */--%>
<%--			[type="reset"],--%>
<%--			[type="submit"] {--%>
<%--				-webkit-appearance: button; /* 2 */--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Remove the inner border and padding in Firefox.--%>
<%--	         */--%>

<%--			button::-moz-focus-inner,--%>
<%--			[type="button"]::-moz-focus-inner,--%>
<%--			[type="reset"]::-moz-focus-inner,--%>
<%--			[type="submit"]::-moz-focus-inner {--%>
<%--				border-style: none;--%>
<%--				padding: 0;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Restore the focus styles unset by the previous rule.--%>
<%--	         */--%>

<%--			button:-moz-focusring,--%>
<%--			[type="button"]:-moz-focusring,--%>
<%--			[type="reset"]:-moz-focusring,--%>
<%--			[type="submit"]:-moz-focusring {--%>
<%--				outline: 1px dotted ButtonText;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Change the border, margin, and padding in all browsers (opinionated).--%>
<%--	         */--%>

<%--			fieldset {--%>
<%--				border: 1px solid #c0c0c0;--%>
<%--				margin: 0 2px;--%>
<%--				padding: 0.35em 0.625em 0.75em;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * 1. Correct the text wrapping in Edge and IE.--%>
<%--	         * 2. Correct the color inheritance from `fieldset` elements in IE.--%>
<%--	         * 3. Remove the padding so developers are not caught out when they zero out--%>
<%--	         *    `fieldset` elements in all browsers.--%>
<%--	         */--%>

<%--			legend {--%>
<%--				box-sizing: border-box; /* 1 */--%>
<%--				color: inherit; /* 2 */--%>
<%--				display: table; /* 1 */--%>
<%--				max-width: 100%; /* 1 */--%>
<%--				padding: 0; /* 3 */--%>
<%--				white-space: normal; /* 1 */--%>
<%--			}--%>

<%--			/**--%>
<%--	         * 1. Add the correct display in IE 9-.--%>
<%--	         * 2. Add the correct vertical alignment in Chrome, Firefox, and Opera.--%>
<%--	         */--%>

<%--			progress {--%>
<%--				display: inline-block; /* 1 */--%>
<%--				vertical-align: baseline; /* 2 */--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Remove the default vertical scrollbar in IE.--%>
<%--	         */--%>

<%--			textarea {--%>
<%--				overflow: auto;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * 1. Add the correct box sizing in IE 10-.--%>
<%--	         * 2. Remove the padding in IE 10-.--%>
<%--	         */--%>

<%--			[type="checkbox"],--%>
<%--			[type="radio"] {--%>
<%--				box-sizing: border-box; /* 1 */--%>
<%--				padding: 0; /* 2 */--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Correct the cursor style of increment and decrement buttons in Chrome.--%>
<%--	         */--%>

<%--			[type="number"]::-webkit-inner-spin-button,--%>
<%--			[type="number"]::-webkit-outer-spin-button {--%>
<%--				height: auto;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * 1. Correct the odd appearance in Chrome and Safari.--%>
<%--	         * 2. Correct the outline style in Safari.--%>
<%--	         */--%>

<%--			[type="search"] {--%>
<%--				-webkit-appearance: textfield; /* 1 */--%>
<%--				outline-offset: -2px; /* 2 */--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Remove the inner padding and cancel buttons in Chrome and Safari on macOS.--%>
<%--	         */--%>

<%--			[type="search"]::-webkit-search-cancel-button,--%>
<%--			[type="search"]::-webkit-search-decoration {--%>
<%--				-webkit-appearance: none;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * 1. Correct the inability to style clickable types in iOS and Safari.--%>
<%--	         * 2. Change font properties to `inherit` in Safari.--%>
<%--	         */--%>

<%--			::-webkit-file-upload-button {--%>
<%--				-webkit-appearance: button; /* 1 */--%>
<%--				font: inherit; /* 2 */--%>
<%--			}--%>

<%--			/* Interactive--%>
<%--	           ========================================================================== */--%>

<%--			/*--%>
<%--	         * Add the correct display in IE 9-.--%>
<%--	         * 1. Add the correct display in Edge, IE, and Firefox.--%>
<%--	         */--%>

<%--			details, /* 1 */--%>
<%--			menu {--%>
<%--				display: block;--%>
<%--			}--%>

<%--			/*--%>
<%--	         * Add the correct display in all browsers.--%>
<%--	         */--%>

<%--			summary {--%>
<%--				display: list-item;--%>
<%--			}--%>

<%--			/* Scripting--%>
<%--	           ========================================================================== */--%>

<%--			/**--%>
<%--	         * Add the correct display in IE 9-.--%>
<%--	         */--%>

<%--			canvas {--%>
<%--				display: inline-block;--%>
<%--			}--%>

<%--			/**--%>
<%--	         * Add the correct display in IE.--%>
<%--	         */--%>

<%--			template {--%>
<%--				display: none;--%>
<%--			}--%>

<%--			/* Hidden--%>
<%--	           ========================================================================== */--%>

<%--			/**--%>
<%--	         * Add the correct display in IE 10-.--%>
<%--	         */--%>

<%--			[hidden] {--%>
<%--				display: none;--%>
<%--			}--%>

<%--			img {--%>
<%--				vertical-align: top;--%>
<%--			}--%>
<%--			.w {--%>
<%--				width: 1190px;--%>
<%--				margin: 0 auto;--%>
<%--			}--%>
<%--			.fl { /*浮动的公共类*/--%>
<%--				float: left;--%>
<%--			}--%>
<%--			.fr {--%>
<%--				float: right;--%>
<%--			}--%>
<%--			a {--%>
<%--				text-decoration: none;--%>
<%--				font-size: 12px;--%>
<%--				color: #999;--%>
<%--			}--%>
<%--			a:hover {--%>
<%--				color: #e33333;--%>
<%--			}--%>
<%--			blockquote,body,button,dd,dl,dt,fieldset,form,h1,h2,h3,h4,h5,h6,hr,input,legend,li,ol,p,pre,td,textarea,th,ul {--%>
<%--				list-style: none;--%>
<%--				margin: 0;--%>
<%--				padding: 0;--%>
<%--			}--%>
<%--			input, button {--%>
<%--				border: 0;--%>
<%--				outline: none;--%>
<%--			}--%>
<%--			body {--%>
<%--				background-color: #f6f6f6;--%>
<%--			}--%>
<%--			.f10 {--%>
<%--				color: #f10215!important;--%>
<%--			}--%>

<%--			.clearfix:after {--%>
<%--				clear: both;--%>
<%--			}--%>
<%--			.clearfix:after, .clearfix:before {--%>
<%--				display: table;--%>
<%--				content: "";--%>
<%--				line-height: 0;--%>
<%--			}--%>




<%--			header {--%>
<%--				height: 80px;--%>
<%--			}--%>
<%--			header a {--%>
<%--				display: block;--%>
<%--				height: 80px;--%>
<%--			}--%>
<%--			.shortcut {--%>
<%--				background-color: #e3e4e5;--%>
<%--				height: 30px;--%>
<%--				line-height: 30px;--%>
<%--				border-bottom: 1px solid #ddd;--%>
<%--			}--%>
<%--			.city {--%>
<%--				margin-left: 200px;--%>
<%--			}--%>
<%--			.shortcut li {--%>
<%--				float: left;--%>
<%--			}--%>
<%--			.shortcut i {--%>
<%--				font-family: "icomoon";--%>
<%--				font-style: normal;--%>
<%--				color: #999;--%>
<%--			}--%>
<%--			.space {--%>
<%--				width: 1px;--%>
<%--				height: 10px;--%>
<%--				background-color: #ccc;--%>
<%--				margin: 10px 12px 0px;--%>
<%--			}--%>
<%--			.nav li {--%>
<%--				position: relative;--%>
<%--			}--%>
<%--			.dropdown-layer {--%>
<%--				position: absolute;--%>
<%--				width: 280px;--%>
<%--				height: 162px;--%>
<%--				top: 30px;--%>
<%--				left: -12px;--%>
<%--				background-color: #e3e4e5;--%>
<%--				z-index: 999;--%>
<%--				padding-left: 14px;--%>
<%--				display: none;--%>
<%--			}--%>
<%--			.dropdown-layer dl {--%>
<%--				float: left;--%>
<%--				width: 126px;--%>
<%--			}--%>
<%--			.dropdown-layer .d {--%>
<%--				border-bottom: 1px solid #ccc;--%>
<%--			}--%>
<%--			.m {--%>
<%--				background-color: #fff;--%>
<%--			}--%>
<%--			.mobile {--%>
<%--				position: relative;--%>
<%--			}--%>
<%--			.mobile img{--%>
<%--				position: absolute;--%>
<%--				left: -3px;--%>
<%--				top: 32px;--%>
<%--				border: 1px solid #ccc;--%>
<%--				padding: 3px;--%>
<%--			}--%>
<%--			.mobile i {--%>
<%--				position: absolute;--%>
<%--				top: 32px;--%>
<%--				left: 65px;--%>
<%--				width: 15px;--%>
<%--				height: 15px;--%>
<%--				line-height: 15px;--%>
<%--				text-align: center;--%>
<%--				border: 1px solid #ccc;--%>
<%--				border-left: 0;--%>
<%--				cursor: pointer;--%>
<%--			}--%>
<%--			.middle {--%>
<%--				height: 140px;--%>
<%--				position: relative;--%>
<%--			}--%>
<%--			.logo {--%>
<%--				position: absolute;--%>
<%--				top: 10px;--%>
<%--				left: 0px;--%>
<%--			}--%>
<%--			.logo a {--%>
<%--				display: block;--%>
<%--				text-indent: -999px;--%>
<%--				overflow: hidden;--%>
<%--				/*font-size: 0;*/--%>
<%--			}--%>
<%--			.form {--%>
<%--				width: 550px;--%>
<%--				height: 35px;--%>
<%--				position: absolute;--%>
<%--				top: 25px;--%>
<%--				left: 320px;--%>
<%--			}--%>
<%--			.form input {--%>
<%--				width: 495px;--%>
<%--				height: 33px;--%>
<%--				border: 1px solid #f10215;--%>
<%--				float: left;--%>
<%--				font-size: 14px;--%>
<%--				padding-left: 3px;--%>
<%--			}--%>
<%--			.form button {--%>
<%--				width: 50px;--%>
<%--				height: 35px;--%>
<%--				float: left;--%>
<%--				background-color: #f10215;--%>
<%--			}--%>
<%--			.form button i {--%>
<%--				font-family: "icomoon";--%>
<%--				font-style: normal;--%>
<%--				color: #fff;--%>
<%--			}--%>
<%--			.shopCar {--%>
<%--				width: 178px;--%>
<%--				height: 33px;--%>
<%--				line-height: 33px;--%>
<%--				border: 1px solid #ccc;--%>
<%--				position: absolute;--%>
<%--				top: 25px;--%>
<%--				right: 95px;--%>
<%--				background-color: #fff;--%>
<%--				text-align: center;--%>
<%--				color: #f10215;--%>
<%--			}--%>
<%--			.shopCar i {--%>
<%--				font-family: icomoon;--%>
<%--				font-style: normal;--%>
<%--				margin-right: 5px;--%>
<%--			}--%>
<%--			.shopCar span {--%>
<%--				height: 15px;--%>
<%--				background-color: #f10215;--%>
<%--				border-radius: 8px 8px 8px 0;--%>
<%--				position: absolute;--%>
<%--				top: -6px;--%>
<%--				left: 135px;--%>
<%--				font-size: 12px;--%>
<%--				color: #fff;--%>
<%--				line-height: 15px;--%>
<%--				padding: 0 5px;--%>
<%--			}--%>
<%--			.hotwords {--%>
<%--				position: absolute;--%>
<%--				top: 68px;--%>
<%--				left: 320px;--%>
<%--			}--%>
<%--			.navitems {--%>
<%--				width: 770px;--%>
<%--				height: 40px;--%>
<%--				line-height: 40px;--%>
<%--				position: absolute;--%>
<%--				bottom: 0;--%>
<%--				left: 200px;--%>
<%--			}--%>
<%--			.navitems li {--%>
<%--				float: left;--%>
<%--				margin-left: 30px;--%>
<%--			}--%>
<%--			.navitems li a {--%>
<%--				font-size: 16px;--%>
<%--				font-weight: 700;--%>
<%--				color: #555;--%>
<%--			}--%>
<%--			.navitems li a:hover {--%>
<%--				color: #f10215;--%>
<%--			}--%>
<%--			.navitems .space {--%>
<%--				margin: 15px -15px 0px 15px;--%>
<%--			}--%>
<%--			.super {--%>
<%--				position: absolute;--%>
<%--				bottom: 10px;--%>
<%--				right: 0;--%>
<%--			}--%>
<%--			footer {--%>
<%--				margin-top: 35px;--%>
<%--				height: 560px;--%>
<%--				background-color: #eaeaea;--%>
<%--			}--%>
<%--			footer a {--%>
<%--				color: #666;--%>
<%--			}--%>
<%--			.service {--%>
<%--				padding: 30px 0px;--%>
<%--				border-bottom: 1px solid #dedede;--%>
<%--				overflow: hidden;--%>
<%--			}--%>
<%--			.service ul li {--%>
<%--				width: 297px;--%>
<%--				height: 43px;--%>
<%--				position: relative;--%>
<%--				line-height: 43px;--%>
<%--				float: left;--%>
<%--			}--%>
<%--			.service li h5 {--%>
<%--				position: absolute;--%>
<%--				top: 0;--%>
<%--				left: 38px;--%>
<%--				width: 36px;--%>
<%--				height: 43px;--%>
<%--				/*background: url(../images/ico.png) no-repeat;*/--%>
<%--			}--%>
<%--			.service li:nth-child(2) h5 {--%>
<%--				background-position: 0 -43px;--%>
<%--			}--%>
<%--			.service li:nth-child(3) h5 {--%>
<%--				background-position: 0 -86px;--%>
<%--			}--%>
<%--			.service li:nth-child(4) h5 {--%>
<%--				background-position: bottom;--%>
<%--			}--%>
<%--			.service li p {--%>
<%--				font-weight: 700;--%>
<%--				margin-left: 82px;--%>
<%--			}--%>
<%--			.help {--%>
<%--				height: 200px;--%>
<%--				border-bottom: 1px solid #dedede;--%>
<%--				padding-top: 25px;--%>
<%--				box-sizing: border-box;--%>
<%--			}--%>
<%--			.help dl {--%>
<%--				width: 192px;--%>
<%--				float: left;--%>
<%--			}--%>
<%--			.help dt,--%>
<%--			.coverage h5 {--%>
<%--				height: 30px;--%>
<%--				font-size: 14px;--%>
<%--				color: #666;--%>
<%--			}--%>
<%--			.help dd {--%>
<%--				height: 22px;--%>
<%--			}--%>
<%--			.coverage {--%>
<%--				width: 200px;--%>
<%--				height: 150px;--%>

<%--			}--%>
<%--			.coverage h5 {--%>
<%--				padding-left: 35px;--%>
<%--			}--%>
<%--			.coverage p {--%>
<%--				width: 180px;--%>
<%--				font-size: 12px;--%>
<%--				color: #666;--%>
<%--				line-height: 18px;--%>
<%--			}--%>
<%--			.coverage a {--%>
<%--				display: block;--%>
<%--				margin-top: 5px;--%>
<%--				width: 180px;--%>
<%--				text-align: right;--%>
<%--			}--%>
<%--			.copyright {--%>
<%--				color: #666;--%>
<%--				padding-top: 20px;--%>
<%--				text-align: center;--%>
<%--				font-size: 12px;--%>
<%--			}--%>
<%--			.copyright span {--%>
<%--				margin: 0 10px;--%>
<%--			}--%>
<%--			.copyright div p {--%>
<%--				line-height: 22px;--%>
<%--			}--%>
<%--			.copyright div {--%>
<%--				margin-top: 22px;--%>
<%--			}--%>
<%--			.foot-icon a {--%>
<%--				display: inline-block;--%>
<%--				width: 103px;--%>
<%--				height: 33px;--%>

<%--				margin: 20px 4px 0;--%>
<%--			}--%>
<%--			.foot-icon a:nth-child(2) {--%>
<%--				background-position: -103px -150px;--%>
<%--			}--%>
<%--			.foot-icon a:nth-child(3) {--%>
<%--				background-position: 0 -183px;--%>
<%--			}--%>
<%--			.foot-icon a:nth-child(4) {--%>
<%--				background-position: -103px -183px;--%>
<%--			}--%>
<%--			.foot-icon a:nth-child(5) {--%>
<%--				background-position: 0 -216px;--%>
<%--			}--%>
<%--			.foot-icon a:nth-child(6) {--%>
<%--				background-position: -103px -216px;--%>
<%--			}--%>

<%--			@media only screen and (min-width: 500px) {--%>
<%--				header,--%>
<%--				.shortcut {--%>
<%--					display: block;--%>
<%--				}--%>
<%--				.logo a {--%>
<%--					width: 190px;--%>
<%--					height: 120px;--%>

<%--				}--%>
<%--			}--%>
<%--			@media only screen and (max-width: 323px) {--%>
<%--				.w {--%>
<%--					width: 304px;--%>
<%--				}--%>
<%--				.middle {--%>
<%--					width: 304px;--%>
<%--					height: 70px;--%>
<%--				}--%>
<%--				header,--%>
<%--				.shortcut {--%>
<%--					display: none;--%>
<%--				}--%>
<%--				.logo {--%>
<%--					left: 10px;--%>
<%--				}--%>
<%--				.logo a {--%>
<%--					width: 70px;--%>
<%--					height: 42px;--%>

<%--					background-size: 70px 42px;--%>
<%--				}--%>
<%--				.form {--%>
<%--					width: 208px;--%>
<%--					height: 36px;--%>
<%--					left: 90px;--%>
<%--					top: 20px;--%>
<%--				}--%>
<%--				.form input {--%>
<%--					width: 160px;--%>
<%--				}--%>
<%--				.form button {--%>
<%--					width: 40px;--%>
<%--				}--%>
<%--				.shopCar,--%>
<%--				.hotwords,--%>
<%--				.navitems,--%>
<%--				.super {--%>
<%--					display: none;--%>
<%--				}--%>
<%--			}--%>
<%--		</style>--%>
	<body>
		<header>
			<a href="#">
				<img src="${PATH}/static/image/header.jpg" height="80" width="100%" alt="">
			</a>
		</header>
		<div class="shortcut">
			<div class="w">
				<ul class="fl city">
					<li><i class="f10"></i><a href="#">北京</a></li>
				</ul>
				<ul class="fr nav">
				<li>
					<a href="${PATH}/go_login">你好，请登录</a>
					<a href="${PATH}/go_register" class="f10">免费注册</a>
				</li>
				<li class="space"></li>
				<li>
					<a href="#">我的订单</a>
				</li>
				<li class="space"></li>
				<li>
					<a href="#">我的京东</a>
					<i></i>
					<div class="dropdown-layer">
						<dl class="d">
							<dd><a href="#">待处理订单</a></dd>
							<dd><a href="#">返修退换货</a></dd>
							<dd><a href="#">降价商品</a></dd>
						</dl>
						<dl class="d">
							<dd><a href="#">消息</a></dd>
							<dd><a href="#">我的问答</a></dd>
							<dd><a href="#">我的关注</a></dd>
						</dl>
						<dl>
							<dd><a href="#">我的京豆</a></dd>
							<dd><a href="#">我的白条</a></dd>
						</dl>
						<dl>
							<dd><a href="#">我的优惠券</a></dd>
							<dd><a href="#">我的理财</a></dd>
						</dl>
					</div>
				</li>
				<li class="space"></li>
				<li>
					<a href="#">京东会员</a>
				</li>

				<li class="space"></li>
				<li>
					<a href="#">企业采购</a>
				</li>
				<li class="space"></li>
				<li>
					<a href="#">客户服务</a>
					<i></i>
					<div class="dropdown-layer">
						<dl class="d">
							<dd><a href="#">待处理订单</a></dd>
							<dd><a href="#">返修退换货</a></dd>
							<dd><a href="#">降价商品</a></dd>
						</dl>
						<dl class="d">
							<dd><a href="#">消息</a></dd>
							<dd><a href="#">我的问答</a></dd>
							<dd><a href="#">我的关注</a></dd>
						</dl>
						<dl>
							<dd><a href="#">我的京豆</a></dd>
							<dd><a href="#">我的白条</a></dd>
						</dl>
						<dl>
							<dd><a href="#">我的优惠券</a></dd>
							<dd><a href="#">我的理财</a></dd>
						</dl>
					</div>
				</li>
				<li class="space"></li>
				<li>
					<a href="#">网站导航</a>
					<i></i>
					<div class="dropdown-layer">
						<dl class="d">
							<dd><a href="#">待处理订单</a></dd>
							<dd><a href="#">返修退换货</a></dd>
							<dd><a href="#">降价商品</a></dd>
						</dl>
						<dl class="d">
							<dd><a href="#">消息</a></dd>
							<dd><a href="#">我的问答</a></dd>
							<dd><a href="#">我的关注</a></dd>
						</dl>
						<dl>
							<dd><a href="#">我的京豆</a></dd>
							<dd><a href="#">我的白条</a></dd>
						</dl>
						<dl>
							<dd><a href="#">我的优惠券</a></dd>
							<dd><a href="#">我的理财</a></dd>
						</dl>
					</div>
				</li>
				<li class="space"></li>
				<li class="mobile">
					<a href="mobile.html">手机京东</a>
					 <img src="${PATH}/static/image/mobile.png" height="60" width="60" alt="">
					 <i class="close-btn">x</i>
				</li>
			</ul>
			</div>
		</div>
		<div class="m">
			<div class="w middle">
				<div class="logo">
					<h1>  <!-- 提高权重 便利于搜索引擎优化 -->
						<a href="index.jsp" title="京东">京东</a>
					</h1>
				</div>
				<div class="form">
					<input id="text" type="text" placeholder="扫描仪">
					<button><i></i></button> 
				</div>
				<div class="shopCar">
					<i></i><a href="${PATH}/go_shopping_cart" class="f10">我的购物车</a><span id="shopping_nums" ></span>
				</div>
				<div class="hotwords">
					<a href="#" class="f10">199减100</a>
					<a href="#">鼠标试用</a>
					<a href="#">农资7折</a>
					<a href="#">低至29元</a>
					<a href="#">抽奖赢空调</a>
					<a href="#">记忆棉</a>
					<a href="#">坐垫</a>
					<a href="#">1分钱买油</a>
					<a href="#">智能手表</a>
				</div>
				<div class="navitems">
					<ul>
						<li><a href="list.html">秒杀</a></li>
						<li><a href="#">优惠券</a></li>
						<li><a href="#">闪购</a></li>
						<li><a href="#">拍卖</a></li>
						<li class="space "></li>
						<li><a href="#">服装城</a></li>
						<li><a href="#">京东超市</a></li>
						<li><a href="#">生鲜</a></li>
						<li><a href="#">全球购</a></li>
						<li class="space"></li>
						<li><a href="#">京东金融</a></li>
					</ul>
				</div>
				<div class="super">
					<a href="#"><img src="${PATH}/static/image/super.png" alt=""></a>
				</div>
			</div>
		</div>
		<div class="mr-g">
			<ul>
				<li><a href="#"><img src="${PATH}/static/image/mr-g-1.png" width="34px" alt="">京东超市</a></li>
				<li><a href="#"><img src="${PATH}/static/image/mr-g-2.png" width="34px" alt="">数码电器</a></li>
				<li><a href="#"><img src="${PATH}/static/image/mr-g-3.png" width="34px" alt="">京东服饰</a></li>
				<li><a href="#"><img src="${PATH}/static/image/mr-g-4.png" width="34px" alt="">京东生鲜</a></li>
				<li><a href="#"><img src="${PATH}/static/image/mr-g-5.png" width="34px" alt="">充值缴费</a></li>
				<li><a href="#"><img src="${PATH}/static/image/mr-g-6.png" width="34px" alt="">9.9元拼</a></li>
				<li><a href="#"><img src="${PATH}/static/image/mr-g-7.png" width="34px" alt="">领劵</a></li>
				<li><a href="#"><img src="${PATH}/static/image/mr-g-8.png" width="34px" alt="">赚钱</a></li>
			</ul>
		</div>
		<div class="w grid">
			<div class="grid-col1 fl">
				<ul id="navi">
					<li><a href="#">家用电器</a></li>
					<li><a href="list.html">手机</a>/<a href="#">运营商</a>/<a href="#">数码</a></li>
					<li><a href="#">电脑</a>/<a href="#">办公</a></li>
					<li><a href="#">家居</a>/<a href="#">家具</a>/<a href="#">家装</a>/<a href="#">厨具</a></li>
					<li><a href="#">男装</a>/<a href="#">女装</a>/<a href="#">童装</a>/<a href="#">内衣</a></li>
					<li><a href="#">美妆</a>/<a href="#">个护清洁</a>/<a href="#">宠物</a></li>
					<li><a href="#">女鞋</a>/<a href="#">箱包</a>/<a href="#">钟表</a>/<a href="#">珠宝</a></li>
					<li><a href="#">男鞋</a>/<a href="#">运动</a>/<a href="#">户外</a></li>
					<li><a href="#">房产</a>/<a href="#">汽车</a>/<a href="#">汽车用品</a></li>
					<li><a href="#">母婴</a>/<a href="#">玩具乐器</a></li>
					<li><a href="#">食品</a>/<a href="#">酒类</a>/<a href="#">生鲜</a>/<a href="#">特产</a></li>
					<li><a href="#">艺术</a>/<a href="#">礼品鲜花</a>/<a href="#">农资绿植</a></li>
					<li><a href="#">医药保健</a>/<a href="#">计生情趣</a></li>
					<li><a href="#">图书</a>/<a href="#">文娱</a>/<a href="#">教育</a>/<a href="#">电子书</a></li>
					<li><a href="#">机票</a>/<a href="#">酒店</a>/<a href="#">旅游</a>/<a href="#">生活</a></li>
					<li><a href="#">理财</a>/<a href="#">众筹</a>/<a href="#">白条</a>/<a href="#">保险</a></li>
				</ul>
			</div>
			<div class="grid-col2 fl">
				<div class="grid-col2-t">
					<ul class="t-img">
						<li><a href="#"><img src="${PATH}/static/image/banner.jpg" height="340" width="790" alt=""></a></li>
						<li><a href="#"><img src="${PATH}/static/image/banner1.jpg" height="340" width="790" alt=""></a></li>
						<li><a href="#"><img src="${PATH}/static/image/banner2.jpg" height="340" width="790" alt=""></a></li>
						<li><a href="#"><img src="${PATH}/static/image/banner3.jpg" height="340" width="790" alt=""></a></li>
					</ul>
					<div>
						<a href="javascript:;" class="arrow-l"><</a>
						<a href="javascript:;" class="arrow-r">></a>
					</div>
					<ol class="circle">
					</ol>
				</div>
				<div class="grid-col2-b">
					<div class="fl"><img src="${PATH}/static/image/l.jpg" alt=""></div>
					<div class="fr"><img src="${PATH}/static/image/r.jpg" alt=""></div>
				</div>
			</div>
			<div class="grid-col3 fr">
				<div class="login">
					<div class="login-t">
						Hi，欢迎来到京东！<br/>
						<a href="login.html">登录</a>
						<a href="register.html">注册</a>
						<a href="#" class="user_info">
							<img src="${PATH}/static/image/no_login.jpg" alt="">
						</a>
					</div>
					<div class="login-b">
						<a href="#">新人福利</a>
						<a href="#">PLUS会员</a>
					</div>
				</div>
				<div class="news">
					<div class="news-t">
						<a href="#" class="cuxiao">促销</a>
						<a href="#" class="gg">公告</a>
						<p><a href="#" class="more">更多</a></p>
						<div class="redline"></div>
						<div class="redline"></div>
					</div>
					<div class="news-b">
						<ul class="news-l">
							<li><a href="#">挑战三天不洗头</a></li>
							<li><a href="#">挑战三天不洗头</a></li>
							<li><a href="#">挑战三天不洗头</a></li>
							<li><a href="#">挑战三天不洗头</a></li>
						</ul>
						<ul class="news-r">
							<li>
								<a href="#">
									<span>HOT</span>
									小米含泪清库存！12G+512G不及友商一半价!
								</a>
							</li>
							<li>
								<a href="#">
									<span>最新</span>
									中国手机市场大洗牌：小米第6，OPPO第二，华为远超苹果
								</a>
							</li>
							<li>
								<a href="#">
									<span>热议</span>
									双十一手机销量首战战报：苹果第五，华为屈居第二，新王者诞生
								</a>
							</li>
							<li>
								<a href="#">
									<span>热评</span>
									华为含泪清库存！128G+4200mAh至退场价！
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- 服务拓展模块 -->
				<div class="expand">
					<ul>
						<li><a href="#"><i></i><span>话费</span></a></li>
						<li><a href="#"><i></i><span>机票</span></a></li>
						<li><a href="#"><i></i><span>酒店</span></a></li>
						<li><a href="#"><i></i><span>游戏</span></a></li>
						<li><a href="#"><i></i><span>企业购</span></a></li>
						<li><a href="#"><i></i><span>加油卡</span></a></li>
						<li><a href="#"><i></i><span>电影票</span></a></li>
						<li><a href="#"><i></i><span>火车票</span></a></li>
						<li><a href="#"><i></i><span>众筹</span></a></li>
						<li><a href="#"><i></i><span>理财</span></a></li>
						<li><a href="#"><i></i><span>礼品卡</span></a></li>
						<li><a href="#"><i></i><span>白条</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="countdown w">
			<div class="countdown-hd fl">
				<h3>京东秒杀</h3>
				<div class="hd_countdown">
					<strong>14:00</strong>点场 倒计时
					<div class="timer">
						<span class="hour">1</span>
						<span class="minute">2</span>
						<span class="second">3</span>
					</div>
				</div>
			</div>
			<div class="countdown-bd fl">
				<ul class="kuan">
					<li><a href="#"><img src="${PATH}/static/image/today01.png" alt=""></a></li>
					<li><a href="#"><img src="${PATH}/static/image/today02.png" alt=""></a></li>
					<li><a href="#"><img src="${PATH}/static/image/today03.png" alt=""></a></li>
					<li><a href="#"><img src="${PATH}/static/image/today04.png" alt=""></a></li>
				</ul>
				<ul class="zhai">
					<li><a href="#"><img src="${PATH}/static/image/m-today01.png" width="100%" height="100%" alt=""></a></li>
					<li><a href="#"><img src="${PATH}/static/image/m-today02.png" width="100%" height="100%" alt=""></a></li>
					<li><a href="#"><img src="${PATH}/static/image/m-today03.png" width="100%" height="100%" alt=""></a></li>
					<li><a href="#"><img src="${PATH}/static/image/m-today04.png" width="100%" height="100%" alt=""></a></li>
				</ul>
			</div>
		</div>
		<div class="recomment w">
			<div class="recom-l">
				<p>每日推荐</p>
			</div>
			<div class="recom-r">
				<ul>
					<li><a href="#"><img src="${PATH}/static/image/recom01.webp"></a></li>
					<li><a href="#"><img src="${PATH}/static/image/recom02.webp"></a></li>
					<li><a href="#"><img src="${PATH}/static/image/recom03.webp"></a></li>
					<li><a href="#"><img src="${PATH}/static/image/recom04.webp"></a></li>
					<li><a href="#"><img src="${PATH}/static/image/recom05.webp"></a></li>
					<li><a href="#"><img src="${PATH}/static/image/recom06.webp"></a></li>
					<li><a href="#"><img src="${PATH}/static/image/recom01.webp"></a></li>
					<li><a href="#"><img src="${PATH}/static/image/recom02.webp"></a></li>
					<li><a href="#"><img src="${PATH}/static/image/recom03.webp"></a></li>
					<li><a href="#"><img src="${PATH}/static/image/recom04.webp"></a></li>
					<li><a href="#"><img src="${PATH}/static/image/recom05.webp"></a></li>
					<li><a href="#"><img src="${PATH}/static/image/recom06.webp"></a></li>
				</ul>
			</div>
		</div>
		<div class="floor w">
			<div class="home_electric">
				<div class="box-hd">
					<h3>家用电器</h3>
					<div class="tab-list">
						<ul>
							<li><a href="#" class="f10">热门</a>|</li>
							<li><a href="#">大家电</a>|</li>
							<li><a href="#">生活电器</a>|</li>
							<li><a href="#">厨房电器</a>|</li>
							<li><a href="#">应季电器</a>|</li>
							<li><a href="#">空气/净水</a>|</li>
							<li><a href="#">高端电器</a></li>
						</ul>
					</div>
				</div>
				<div class="box-bd">
					<ul class="tab-con">
						<li class="w199">
							<ul class="tab-con-list">
								<li><a href="#">节能补贴</a></li>
								<li><a href="#">4k电视</a></li>
								<li><a href="#">空气净化器</a></li>
								<li><a href="#">IH电饭煲</a></li>
								<li><a href="#">滚筒洗衣机</a></li>
								<li><a href="#">电热水器</a></li>
							</ul>
							<img src="${PATH}/static/image/floor-1-1.png" alt="">
						</li>
						<li class="w329">
							<img src="${PATH}/static/image/floor-1-b01.png" alt="">
						</li>
						<li class="w219">
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-2.png" alt="">
								</a>
							</div>
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-3.png" alt="">
								</a>
							</div>
						</li>
						<li class="w220">
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-4.png" alt="">
								</a>
							</div>
						</li>
						<li class="w220">
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-5.png" alt="">
								</a>
							</div>
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-6.png" alt="">
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="phone_address">
				<div class="box-hd">
					<h3>手机通讯</h3>
					<div class="tab-list">
						<ul>
							<li><a href="#" class="f10">热门</a>|</li>
							<li><a href="#">大家电</a>|</li>
							<li><a href="#">生活电器</a>|</li>
							<li><a href="#">厨房电器</a>|</li>
							<li><a href="#">应季电器</a>|</li>
							<li><a href="#">空气/净水</a>|</li>
							<li><a href="#">高端电器</a></li>
						</ul>
					</div>
				</div>
				<div class="box-bd">
					<ul class="tab-con">
						<li class="w199">
							<ul class="tab-con-list">
								<li><a href="#">节能补贴</a></li>
								<li><a href="#">4k电视</a></li>
								<li><a href="#">空气净化器</a></li>
								<li><a href="#">IH电饭煲</a></li>
								<li><a href="#">滚筒洗衣机</a></li>
								<li><a href="#">电热水器</a></li>
							</ul>
							<img src="${PATH}/static/image/floor-1-1.png" alt="">
						</li>
						<li class="w329">
							<img src="${PATH}/static/image/floor-1-b01.png" alt="">
						</li>
						<li class="w219">
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-2.png" alt="">
								</a>
							</div>
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-3.png" alt="">
								</a>
							</div>
						</li>
						<li class="w220">
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-4.png" alt="">
								</a>
							</div>
						</li>
						<li class="w220">
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-5.png" alt="">
								</a>
							</div>
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-6.png" alt="">
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="computer_working">
				<div class="box-hd">
					<h3>电脑办公</h3>
					<div class="tab-list">
						<ul>
							<li><a href="#" class="f10">热门</a>|</li>
							<li><a href="#">大家电</a>|</li>
							<li><a href="#">生活电器</a>|</li>
							<li><a href="#">厨房电器</a>|</li>
							<li><a href="#">应季电器</a>|</li>
							<li><a href="#">空气/净水</a>|</li>
							<li><a href="#">高端电器</a></li>
						</ul>
					</div>
				</div>
				<div class="box-bd">
					<ul class="tab-con">
						<li class="w199">
							<ul class="tab-con-list">
								<li><a href="#">节能补贴</a></li>
								<li><a href="#">4k电视</a></li>
								<li><a href="#">空气净化器</a></li>
								<li><a href="#">IH电饭煲</a></li>
								<li><a href="#">滚筒洗衣机</a></li>
								<li><a href="#">电热水器</a></li>
							</ul>
							<img src="${PATH}/static/image/floor-1-1.png" alt="">
						</li>
						<li class="w329">
							<img src="${PATH}/static/image/floor-1-b01.png" alt="">
						</li>
						<li class="w219">
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-2.png" alt="">
								</a>
							</div>
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-3.png" alt="">
								</a>
							</div>
						</li>
						<li class="w220">
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-4.png" alt="">
								</a>
							</div>
						</li>
						<li class="w220">
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-5.png" alt="">
								</a>
							</div>
							<div class="tab-con-item">
								<a href="#">
									<img src="${PATH}/static/image/floor-1-6.png" alt="">
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="fixedtool">
			<ul>
				<li>京东秒杀</li>
				<li>发现好货</li>
				<li>家用电器</li>
				<li>手机通讯</li>
				<li>电脑办公</li>
				<li>联系客服</li>
			</ul>
		</div>
		<footer>
			<div class="service">
				<!-- 服务模块 -->
				<div class="w">
					<ul>
						<li>	
							<h5></h5>
							<p>品类齐全，轻松购物</p>
						</li>
						<li>	
							<h5></h5>
							<p>品类齐全，轻松购物</p>
						</li>
						<li>	
							<h5></h5>
							<p>品类齐全，轻松购物</p>
						</li>
						<li>	
							<h5></h5>
							<p>品类齐全，轻松购物</p>
						</li>
					</ul>
				</div>
			</div>
			<!-- 帮助模块 -->
			<div class="w help">
				<div class="fl">
					<dl>
						<dt>购物指南</dt>
						<dd><a href="#">购物流程</a></dd>
						<dd><a href="#">会员介绍</a></dd>
						<dd><a href="#">生活旅行</a></dd>
						<dd><a href="#">常见问题</a></dd>
						<dd><a href="#">大家电</a></dd>
						<dd><a href="#">联系客服</a></dd>
					</dl>
					<dl>
						<dt>配送方式</dt>
						<dd><a href="#">上门自提</a></dd>
						<dd><a href="#">211限时达</a></dd>
						<dd><a href="#">配送服务查询</a></dd>
						<dd><a href="#">配送费收取标准</a></dd>
						<dd><a href="#">海外配送</a></dd>
					</dl>
					<dl>
						<dt>支付方式</dt>
						<dd><a href="#">货到付款</a></dd>
						<dd><a href="#">在线支付</a></dd>
						<dd><a href="#">分期付款</a></dd>
						<dd><a href="#">邮局汇款</a></dd>
						<dd><a href="#">公司转账</a></dd>
					</dl>
					<dl>
						<dt>售后服务</dt>
						<dd><a href="#">售后政策</a></dd>
						<dd><a href="#">价格保护</a></dd>
						<dd><a href="#">退款说明</a></dd>
						<dd><a href="#">返修/退换货</a></dd>
						<dd><a href="#">取消订单</a></dd>
					</dl>
					<dl>
						<dt>特色服务</dt>
						<dd><a href="#">夺宝岛</a></dd>
						<dd><a href="#">DIY装机</a></dd>
						<dd><a href="#">延保服务</a></dd>
						<dd><a href="#">京东E卡</a></dd>
						<dd><a href="#">京东通信</a></dd>
						<dd><a href="#">京鱼座智能</a></dd>
					</dl>
				</div>
				<div class="fr coverage">
					<h5>京东自营覆盖区县</h5>
					<p>京东已向全国2661个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</p>
					<a href="#">查看详情 > </a>
				</div>
			</div>
			<div class="w copyright">
				<p>
					<a href="#">关于我们</a>
					<span> | </span>
					<a href="#">联系我们</a>
					<span> | </span>
					<a href="#">联系客服</a>
					<span> | </span>
					<a href="#">合作招商</a>
					<span> | </span>
					<a href="#">商家帮助</a>
					<span> | </span>
					<a href="#">营销中心</a>
					<span> | </span>
					<a href="#">手机京东</a>
					<span> | </span>
					<a href="#">友情链接</a>
					<span> | </span>
					<a href="#">销售联盟</a>
					<span> | </span>
					<a href="#">京东社区</a>
					<span> | </span>
					<a href="#">风险监测</a>
					<span> | </span>
					<a href="#">隐私政策</a>
					<span> | </span>
					<a href="#">京东公益</a>
					<span> | </span>
					<a href="#">English Site</a>
					<span> | </span>
					<a href="#">Media & IR</a>
				</p>
				<div>
					<p>京公网安备 11000002000088号<span>|</span>京ICP证070359号<span>|</span>互联网药品信息服务资格证编号(京)-经营性-2014-0008<span>|</span>新出发京零 字第大120007号</p>
					<p>互联网出版许可证编号新出网证(京)字150号<span>|</span>出版物经营许可证<span>|</span>网络文化经营许可证京网文[2014]2148-348号<span>|</span>违法和不良信息举报电话：4006561155</p>
					<p>Copyright © 2004 - 2019  京东JD.com 版权所有<span>|</span>消费者维权热线：4006067733经营证照|(京)网械平台备字(2018)第00003号<span>|</span>营业执照</p>
					<p>Global Site<span>|</span>Сайт России<span>|</span>Situs Indonesia<span>|</span>Sitio de España<span>|</span>เว็บไซต์ประเทศไทย</p>
					<p>京东旗下网站：京东钱包<span>|</span>京东云</p>
				</div>
				<p class="foot-icon">
					<a href="#"></a>
					<a href="#"></a>
					<a href="#"></a>
					<a href="#"></a>
					<a href="#"></a>
					<a href="#"></a>
				</p>
				<p>--- 17计信2 赵家敏 17240045 ---</p>
			</div>
		</footer>
		<div class="m-copyright">
			<p>Copyright © 2004-2019 京东JD.com 版权所有</p>
		</div>
		<div class="commonNav">
			<ul>
				<li><a href="#"><img src="${PATH}/static/image/nav-5.png" width="100%" alt=""></a></li>
				<li><a href="#"><img src="${PATH}/static/image/nav-2.png" width="100%" alt=""></a></li>
				<li><a href="#"><img src="${PATH}/static/image/nav-3.png" width="100%" alt=""></a></li>
				<li><a href="#"><img src="${PATH}/static/image/nav-4.png" width="100%" alt=""></a></li>
			</ul>
		</div>
	</body>
<%--	拦截返回提示--%>
${InterceptorStatus}
 <script type="text/javascript">
	 $(function (){
	 	$.ajax({
			url: "${PATH}/check_login",
			type: "GET",
			success:function (result){
				if (result.code==100){
					//如果已经登录 则显示购物车数据
					$("#shopping_nums").text("");
					$.ajax({
						url:"${PATH}/select_shapping_nums",
						type:"GET",
						success:function (result){
							var shopping_cart_nums=result.model.nums;
							$("#shopping_nums").text(shopping_cart_nums)
						}
					});
				}
			}
		})
	 });

 </script>
</html>

