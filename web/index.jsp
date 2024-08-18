<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="board.Article" %>
<%!
  // html 에서 키워드로 사용되는 문자를 escape 처리하는 유틸리티 메소드
  private String escapeHtml(String src) {
    return src.replace("&", "&amp;").replace("<", "&lt;")
            .replace(">", "&gt;").replace("\"", "&quot;").replace("'", "&#39;");
  }
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>테스트용 게시판</title>
</head>
<body>
<h1>테스트용 게시판</h1>
<form action="/board/PostArticle" method="post">
  제목 : <input type="text" name="title" size="60"> <br>
  작성자 : <input type="text" name="handle"> <br>
  <textarea name="message" rows="4" cols="60"></textarea> <br>
  <input type="submit">
</form>
<hr>
<%
  for (Article article : Article.articleList) {
%>
<p>
  [<%= escapeHtml(article.title) %>] &nbsp;&nbsp;
  <%= escapeHtml(article.handle) %> 님 &nbsp;&nbsp;
  <%= escapeHtml(article.date.toString()) %>
</p>
<p>
  <%= escapeHtml(article.message).replace("\r\n", "<br>") %>
</p>
<hr>
<%
  }
%>
</body>
</html>