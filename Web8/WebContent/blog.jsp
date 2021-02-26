﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>HTML5 Basic Page</title>
    <!-- 초기화 -->
    <style>
        * { 
            margin: 0; padding: 0;
            font-family: '맑은 고딕', 'Malgun Gothic', Gothic, sans-serif;
        }
        a { text-decoration: none; }
        li { list-style: none; }
    </style>
    <!-- 기본 클래스 -->
    <style>
        .pull-left { float: left; }
        .pull-right { float:right; }
    </style>
    <!-- 페이지 -->
    <style>
        body {
            width: 960px; margin: 0 auto;
            background: #E6E6E6;
        }

        #page-wrapper {
            background: white;
            margin: 40px 0; padding: 10px 20px;
            border-radius: 5px;
            box-shadow: 0 2px 6px rgba(100, 100, 100, 0.3);
        }
    </style>
    <!-- 헤더 -->
    <style>
        #main-header { padding: 40px 50px; }
        .master-title { 
            font-size: 30px; 
            color: #181818;
        }
        .master-description {
            font-size: 15px; font-weight: 500;
            color: #383838;
        }
    </style>
    <!-- 네비게이션 -->
    <style>
        #main-navigation {
            border-top: 1px solid #C8C8C8;
            border-bottom: 1px solid #C8C8C8;
            margin-bottom: 20px;
            height: 40px;
        }
        
        .outer-menu-item {
            float: left;
            position: relative;
        }
        .outer-menu-item:hover {
            background: black;
            color: white
        }

        .menu-title {
            display: block;
            height: 30px; line-height: 30px;
            text-align: center;
            padding: 5px 20px;
        }

        .inner-menu {
            display: none;
            position: absolute;
            top: 40px; left: 0;
            width: 100%;

            background: white;
            box-shadow: 0 2px 6px rgba(5, 5, 5, 0.9);
            z-index: 1000;

            text-align: center
        }

        .inner-menu-item > a {
            display: block;
            padding: 5px 10px;
            color: black
        }

        .inner-menu-item > a:hover {
            background: black;
            color: white;
        }
    </style>
    <!-- 네비게이션 내부의 검색 -->
    <style>
        .search-bar {
            height: 26px;
            padding: 7px;
        }
        .input-search {
            display: block;
            float: left;

            background-color: #FFFFFF;
            border: 1px solid #CCCCCC;
            border-radius: 15px 0 0 15px;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);

            width: 120px; height: 24px;
            padding: 0 0 0 10px;
            font-size: 12px;
            color: #555555;
        }

        .input-search:focus {
            border-color: rgba(82, 168, 236, 0.8);
            outline: 0;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
        }

        .input-search-submit {
            display: block;
            float: left;

            width: 50px; height: 26px;
            border-radius: 0 15px 15px 0;
            border: 1px solid #CCCCCC;

            margin-left: -1px;

            vertical-align: top;
            display: inline-block;
        }
    </style>
    <!-- 중앙 내용 -->
    <style>
        /* body 태그의 너비: 960픽셀 */
        /* #page-wrapper 태그의 padding 속성으로 내용물 너비는 920픽셀 */
        #content { overflow: hidden; }
        #main-section {
            float: left;
            width: 710px;
        }
        #main-aside {
            float: right;
            width: 200px;
        }
    </style>
    <!-- 좌측 내용물 -->
    <style>
        article { 
            padding: 0 10px 20px 10px;
            border-bottom: 1px solid #C8C8C8;
        }

        .article-header { padding: 20px 0; }
        .article-title { 
            font-size: 25px;
            font-weight: 500; 
            padding-bottom: 10px;
        }
        .article-date { font-size: 13px; }
        .article-body {
            font-size: 14px;
        }
    </style>
    <!-- 우측 구성 -->
    <style>
        .aside-list { padding: 10px 0 30px 0; }
        .aside-list > h3 {
            font-size: 15px;
            font-weight: 600;
        }
        .aside-list li a {
            margin-left: 8px;
            font-size: 13px;
            color: #6C6C6C;
        }
    </style>
    <script></script>
    <script></script>
</head>
<body>
    <div id="page-wrapper">
        <header id="main-header">
            <hgroup>
                <h1 class="master-title">HTML5 Example Preview</h1>
                <h2 class="master-description">${id }님 welcome!</h2>
            </hgroup>
        </header>
        <nav id="main-navigation">
            <div class="pull-left">
                <ul class="outer-menu">
                    <li class="outer-menu-item">
                        <span class="menu-title">HTML5</span>
                        <ul class="inner-menu">
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                        </ul>
                    </li>
                    <li class="outer-menu-item">
                        <span class="menu-title">CSS3</span>
                        <ul class="inner-menu">
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                        </ul>
                    </li>
                    <li class="outer-menu-item">
                        <span class="menu-title">JavaScript</span>
                        <ul class="inner-menu">
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                            <li class="inner-menu-item"><a href="#">데이터</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="pull-right">
                <div class="search-bar">
                    <form>
                        <input type="text" class="input-search" />
                        <input type="submit" class="input-search-submit" value="검색" />
                    </form>
                </div>
            </div>
        </nav>
        <div id="content">
            <section id="main-section">
                <article>
                    <div class="article-header">
                        <h1 class="article-title">HTML5 개요와 활용</h1>
                        <p class="article-date">2013년 02월 14일</p>
                    </div>
                    <div class="article-body">
                        <img src="http://placehold.it/430x280" />
                        <br />
                        <br />
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo justo ac lorem pretium vitae rhoncus lectus ullamcorper. Aliquam facilisis euismod diam sollicitudin commodo. Nunc sagittis sapien venenatis lorem vestibulum cursus pellentesque mi sodales. Donec pellentesque hendrerit turpis, vitae tempor nibh ultricies at. Aliquam consequat rutrum erat, vel sodales tellus sagittis at. Proin sollicitudin augue eu augue vehicula vitae bibendum odio porta. Aliquam elit arcu, venenatis in imperdiet ut, scelerisque non dolor. Donec in vulputate tortor. Fusce egestas rutrum mi quis ultricies. Vivamus blandit augue ac felis ullamcorper consectetur. Curabitur pretium fringilla neque, vitae cursus massa auctor vitae. Integer non massa sit amet lacus accumsan blandit. Vivamus fermentum tellus at justo iaculis eu tempus lorem venenatis. Suspendisse quis eros consectetur tellus posuere commodo. In hac habitasse platea dictumst.</p>
                        <br />
                        <p>Praesent orci quam, ornare sed scelerisque ac, porta a justo. Pellentesque quis magna sed magna vehicula semper ac ut enim. Duis ut mattis ligula. Mauris at sem elit. Vestibulum justo tortor, malesuada non tincidunt quis, feugiat ut metus. Maecenas varius neque ut diam ultrices scelerisque. Praesent lectus massa, tincidunt vel adipiscing non, vehicula ut magna. Cras quis lacinia ipsum. Sed consequat consectetur volutpat. Integer sed tortor risus. Donec accumsan ante vel justo porttitor volutpat.</p>
                    </div>
                </article>
                <article>
                    <div class="article-header">
                        <h1 class="article-title">HTML5 응용과 실습</h1>
                        <p class="article-date">2013년 02월 17일</p>
                    </div>
                    <div class="article-body">
                        <img src="http://placehold.it/430x280" />
                        <br />
                        <br />
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo justo ac lorem pretium vitae rhoncus lectus ullamcorper. Aliquam facilisis euismod diam sollicitudin commodo. Nunc sagittis sapien venenatis lorem vestibulum cursus pellentesque mi sodales. Donec pellentesque hendrerit turpis, vitae tempor nibh ultricies at. Aliquam consequat rutrum erat, vel sodales tellus sagittis at. Proin sollicitudin augue eu augue vehicula vitae bibendum odio porta. Aliquam elit arcu, venenatis in imperdiet ut, scelerisque non dolor. Donec in vulputate tortor. Fusce egestas rutrum mi quis ultricies. Vivamus blandit augue ac felis ullamcorper consectetur. Curabitur pretium fringilla neque, vitae cursus massa auctor vitae. Integer non massa sit amet lacus accumsan blandit. Vivamus fermentum tellus at justo iaculis eu tempus lorem venenatis. Suspendisse quis eros consectetur tellus posuere commodo. In hac habitasse platea dictumst.</p>
                        <br />
                        <p>Proin ut fringilla sapien.</p>
                    </div>
                </article>
            </section>
            <aside id="main-aside">
                <div class="aside-list">
                    <h3>카테고리</h3>
                    <ul>
                        <li><a href="#">데이터</a></li>
                        <li><a href="#">데이터</a></li>
                        <li><a href="#">데이터</a></li>
                        <li><a href="#">데이터</a></li>
                        <li><a href="#">데이터</a></li>
                    </ul>
                </div>
                <div class="aside-list">
                    <h3>최근 글</h3>
                    <ul>
                        <li><a href="#">데이터</a></li>
                        <li><a href="#">데이터</a></li>
                        <li><a href="#">데이터</a></li>
                        <li><a href="#">데이터</a></li>
                    </ul>
                </div>
            </aside>
        </div>
        <footer id="main-footer">
            <a href="#">Created By Team-HeXagon</a>
        </footer>
    </div>
</body>
</html>
