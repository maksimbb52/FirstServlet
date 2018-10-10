<html>
<head>
    <title>com.epam_lab.first_servlet</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../../style.css"/>
</head>
<body>
<h1>com.epam_lab.first_servlet maksim_baranov@epam.com</h1>
<div>Post = 1; Get = 2; Put = 3; Delete 4</div>
<div>
    <div id="get"><button type="button" onclick="makeRequest()">Get</button></div>
    <div id="post"><button  type="button" onclick="tryPostInfo()">Post</button></div>
    <div id="put"><button type="button" onclick="tryPutInfo()">Put</button></div>
    <div id="delete"><button type="button" onclick="tryDeleteInfo()">Delete</button></div>

</div>
<div id = "output">
    <h4>

    </h4>
</div>
</body>

<script>
    /*

 * creates a new XMLHttpRequest object which is the backbone of AJAX,
 * or returns false if the browser doesn't support it
 */
    function getXMLHttpRequest() {
        var xmlHttpReq = false;
        // to create XMLHttpRequest object in non-Microsoft browsers
        if (window.XMLHttpRequest) {
            xmlHttpReq = new XMLHttpRequest();
        } else if (window.ActiveXObject) {
            try {
                // to create XMLHttpRequest object in later versions
                // of Internet Explorer
                xmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (exp1) {
                try {
                    // to create XMLHttpRequest object in older versions
                    // of Internet Explorer
                    xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (exp2) {
                    xmlHttpReq = false;
                }
            }
        }
        return xmlHttpReq;
    }
    /*
     * AJAX call starts with this function
     */
    function makeRequest() {
        var xmlHttpRequest = getXMLHttpRequest();
        xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
        xmlHttpRequest.open("GET", "/main", true);
        xmlHttpRequest.send(null);
    }

    function tryPostInfo() {
        var xmlHttpRequest = getXMLHttpRequest();
        xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
        xmlHttpRequest.open("POST", "/main", false);
        xmlHttpRequest.setRequestHeader("Content-Type",
            "application/x-www-form-urlencoded");
        xmlHttpRequest.send(null);
    }

    function tryPutInfo() {
        var xmlHttpRequest = getXMLHttpRequest();
        xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
        xmlHttpRequest.open("PUT", "/main ", false);
        xmlHttpRequest.setRequestHeader("Content-Type",
            "application/x-www-form-urlencoded");
        xmlHttpRequest.send(null);
    }

    function tryDeleteInfo() {
        var xmlHttpRequest = getXMLHttpRequest();
        xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
        xmlHttpRequest.open("DELETE", "/main", false);
        xmlHttpRequest.setRequestHeader("Content-Type",
            "application/x-www-form-urlencoded");
        xmlHttpRequest.send(null);
    }


    function getReadyStateHandler(xmlHttpRequest) {

        return function() {
            if (xmlHttpRequest.readyState == 4) {
                if (xmlHttpRequest.status == 200) {
                    document.getElementById("output").innerHTML = xmlHttpRequest.responseText;
                } else {
                    alert("HTTP error " + xmlHttpRequest.status + ": " + xmlHttpRequest.statusText);
                }
            }
        };
    }

</script>

</html>