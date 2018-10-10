<html>
<head>
    <title>com.epam_lab.first_servlet</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" language="javascript" src="ajax.js"></script>

</head>
<body id = "body">
<div>
    <button id="get" type="button" onclick="makeRequest1()">Get</button>
    <button id="post" type="button" onclick="makeRequest2()">Post</button>
    <button id="put" type="button" onclick="makeRequest3()">Put</button>
    <button id="delete" type="button" onclick="makeRequest4()">Delete</button>
</div>
<div id = "output">
    <h3>
        State is: ${state} <br/>
        Views count is: ${counter}
    </h3>
</div>
</body>
</html>
