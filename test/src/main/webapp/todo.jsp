<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!Doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Todo List</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script>
	function addItem() {
		let todo = document.getElementById("item");
		let list = document.getElementById("todolist");
		let listitem = document.createElement("li");
		listitem.className = "d-flex list-group-item list-group-item-action list-group-item-warining";
		
		let xbtn = document.createElement("button");
		
		xbtn.className = "btn-close ms-auto";

		xbtn.onclick = function(e) {
			let pnode = e.target.parentNode;
			list.removeChild(pnode);
		}
		listitem.innerText = todo.value;
		listitem.appendChild(xbtn);
		list.appendChild(listitem);

		todo.value = "";
		todo.focus();
	}
</script>
<title>My ToDo App</title>
</head>
<body>
	<div class="container bg-warning shadow mx-auto mt-5 p-5 w-75">
		<h2>My ToDo App</h2>
		<hr>
		<div class="input-group">
			<input id="item" class="form-control" type="text"
				placeholder="할 일을 입력하세요..">
			<button type="button" class="btn btn-primary" onclick="addItem()">할 일 추가</button>
		</div>
		<hr>
		<ul id="todolist" class="list-group"></ul>
	</div>
</body>
</html>
