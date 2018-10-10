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
function makeRequest(reqType) {
    var xmlHttpRequest = getXMLHttpRequest();
    xmlHttpRequest.onreadystatechange = getReadyStateHandler1(xmlHttpRequest);
    xmlHttpRequest.open(reqType, "?again=true", true); //проверить синтаксис
    xmlHttpRequest.setRequestHeader("Content-Type",
        "application/x-www-form-urlencoded");
    xmlHttpRequest.send(["?again"]);
}

function tryPostInfo() {
    var xmlHttpRequest = getXMLHttpRequest();
    xmlHttpRequest.onreadystatechange = getReadyStateHandler2(xmlHttpRequest);
    xmlHttpRequest.open("POST", "", false);
    xmlHttpRequest.setRequestHeader("Content-Type",
        "application/x-www-form-urlencoded");
    xmlHttpRequest.send(null);
}

function tryPutInfo() {
    var xmlHttpRequest = getXMLHttpRequest();
    xmlHttpRequest.onreadystatechange = getReadyStateHandler3(xmlHttpRequest);
    xmlHttpRequest.open("PUT", "", false);
    xmlHttpRequest.setRequestHeader("Content-Type",
        "application/x-www-form-urlencoded");
    xmlHttpRequest.send(null);
}

function tryDeleteInfo() {
    var xmlHttpRequest = getXMLHttpRequest();
    xmlHttpRequest.onreadystatechange = getReadyStateHandler4(xmlHttpRequest);
    xmlHttpRequest.open("DELETE", "", false);
    xmlHttpRequest.setRequestHeader("Content-Type",
        "application/x-www-form-urlencoded");
    xmlHttpRequest.send(null);
}


function getReadyStateHandler1(xmlHttpRequest) {

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

function getReadyStateHandler2(xmlHttpRequest) {


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

function getReadyStateHandler3(xmlHttpRequest) {

    // an anonymous function returned
    // it listens to the XMLHttpRequest instance
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

function getReadyStateHandler4(xmlHttpRequest) {

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