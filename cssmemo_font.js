/* = set style.fontFamily = */

function setFont(myID, myFont) {
var myID_p = myID + '_p';
var myIDs = [myID, myID_p];
for (var i=0;myIDs.length>i;i++) {
	if (document.getElementById(myIDs[i]) != null ) {
		document.getElementById(myIDs[i]).style.fontFamily = myFont;
		}
	}
}


/* = set style Property = */

function setColor(myID, myColor) {
var myIDs = document.getElementById(myID);
myIDs.style.color = myColor;
}

function setBGColor(myID, myBGColor) {
var myIDs = document.getElementById(myID);
myIDs.style.backgroundColor = myBGColor;
}

function setZoom(myID, myZoom) {
var myIDs = document.getElementById(myID);
myIDs.style.fontSize = myZoom;
}

function setLineHeight(myID, myHeight) {
var myID_tr = myID + '_fonts';
var myID_p = myID_tr + '_p';
var myIDs = [myID, myID_tr, myID_p];
for (var i=0;myIDs.length>i;i++) {
	if (document.getElementById(myIDs[i]) != null ) {
// 		IE8 ÇÕîÒëŒâû
//		document.getElementById(myIDs[i]).style.setProperty('line-height', myHeight, 'important');
 		document.getElementById(myIDs[i]).style.lineHeight = myHeight;
		}
	}
}

function setLetterSpacing(myID, myPx) {
var myID_tr = myID + '_fonts';
var myID_p = myID_tr + '_p';
var myIDs = [myID, myID_tr, myID_p];
for (var i=0;myIDs.length>i;i++) {
	if (document.getElementById(myIDs[i]) != null ) {
// 		IE8 ÇÕîÒëŒâû
//		document.getElementById(myIDs[i]).style.setProperty('letter-spacing', myPx, 'important');
 		document.getElementById(myIDs[i]).style.letterSpacing = myPx;
		}
	}
}

function setFontWeight(myID, myWeight) {
var myIDs = document.getElementById(myID);
myIDs.style.fontWeight = myWeight;
/*
var myID_p = myID + '_p';
var myIDs = [myID, myID_p];
for (var i=0;myIDs.length>i;i++) {
	if (document.getElementById(myIDs[i]) != null ) {
// IE8 ÇÕîÒëŒâû
//		document.getElementById(myIDs[i]).style.setProperty('letter-spacing', myPx, 'important');
		document.getElementById(myIDs[i]).style.fontWeight = myWeight;
		}
	}
*/
}

function setFontStyle(myID, myStyle) {
var myIDs = document.getElementById(myID);
myIDs.style.fontStyle = myStyle;
/*
var myID_p = myID + '_p';
var myIDs = [myID, myID_p];
for (var i=0;myIDs.length>i;i++) {
	if (document.getElementById(myIDs[i]) != null ) {
// IE8 ÇÕîÒëŒâû
		document.getElementById(myIDs[i]).style.setProperty('letter-spacing', myPx, 'important');
 		document.getElementById(myIDs[i]).style.fontStyle = myStyle;
		}
	}
*/
}

function setFontVariant(myID, myStyle) {
var myIDs = document.getElementById(myID);
myIDs.style.fontVariant = myStyle;
/*
var myID_p = myID + '_p';
var myIDs = [myID, myID_p];
for (var i=0;myIDs.length>i;i++) {
	if (document.getElementById(myIDs[i]) != null ) {
// 		IE8 ÇÕîÒëŒâû
		document.getElementById(myIDs[i]).style.setProperty('fontVariant', myStyle, 'important');
 		document.getElementById(myIDs[i]).style.fontVariant = myStyle;
		}
	}
*/
}


function setTextStroke(myID, myWidth) {
var myID_tr = myID + '_fonts';
var myID_p = myID_tr + '_p';
var myIDs = [myID, myID_tr, myID_p];
for (var i=0;myIDs.length>i;i++) {
	if (document.getElementById(myIDs[i]) != null ) {
// 		IE8 ÇÕîÒëŒâû
		document.getElementById(myIDs[i]).style.setProperty('-webkit-text-stroke-width', myWidth, 'important');
// 		document.getElementById(myIDs[i]).style.lineHeight = myHeight;
		}
	}
}

function setTextShadow(myID, myValue) {
var myID_tr = myID + '_fonts';
var myID_p = myID_tr + '_p';
var myIDs = [myID, myID_tr, myID_p];
for (var i=0;myIDs.length>i;i++) {
	if (document.getElementById(myIDs[i]) != null ) {
// 		IE8 ÇÕîÒëŒâû
		document.getElementById(myIDs[i]).style.setProperty('text-shadow', myValue, 'important');
// 		document.getElementById(myIDs[i]).style.lineHeight = myHeight;
		}
	}
}

function setTranceform(myID, myValue) {
// var myID_tr = myID + '_fonts';
// var myID_p = myID_tr + '_p';
// var myIDs = [myID, myID_tr, myID_p];
var myIDs =  myID + '_fonts_p';
// for (var i=0;myIDs.length>i;i++) {
// 	if (document.getElementById(myIDs[i]) != null ) {
// 		IE8 ÇÕîÒëŒâû
		document.getElementById(myIDs).style.setProperty('transform', myValue);
// 		document.getElementById(myIDs[i]).style.lineHeight = myHeight;
}


/* = remove style Property = IE8îÒëŒâû */

function rmProperty(myID, myProperty) {
var myID_tr = myID + '_fonts';
var myID_p = myID_tr + '_p';
var myID_p2 = myID + '_p';
var myIDs = [myID, myID_tr, myID_p, myID_p2];
for (var i=0;myIDs.length>i;i++) {
	if (document.getElementById(myIDs[i]) != null ) {
		document.getElementById(myIDs[i]).style.removeProperty(myProperty);
		}
	}
}


/* = remove Tag Attribute = */

function rmStyle(myID) {
var myID_tr = myID + '_fonts';
var myID_p = myID_tr + '_p';
var myID_p2 = myID + '_p';
var myIDs = [myID, myID_tr, myID_p, myID_p2];
for (var i=0;myIDs.length>i;i++) {
	if (document.getElementById(myIDs[i]) != null ) {
		document.getElementById(myIDs[i]).removeAttribute('style');
		}
	}
}

function rmStyleBody() {
var myTag = document.getElementsByTagName('body');
	myTag[0].removeAttribute('style');
}

function rmStylePre() {
var myTag = document.getElementsByTagName('pre');
for (var i=0;myTag.length>i;i++) {
	myTag[i].removeAttribute('style');
	}
}



/* = innerHTML = IE8îÒëŒâû */

/*
function setFont(myDiv, myFont) {
var style = document.createElement('style');
var head = document.getElementsByTagName('head');
style.setAttribute('type', 'text\/css');
style.innerHTML = myDiv + ' { font-family: ' + myFont + ' !important; }';
head[0].appendChild(style);
}

function setZoom(myDiv, myZoom) {
var style = document.createElement('style');
var head = document.getElementsByTagName('head');
style.setAttribute('type', 'text\/css');
style.innerHTML = myDiv + " { font-size: " + myZoom + " !important; }";
head[0].appendChild(style);
}

function rmHead_style() {
var head = document.getElementsByTagName('head');
var style = head[0].lastChild;
if (style.nodeName.toLowerCase() == 'style') {
	head[0].removeChild(style);
	} else { alert('style óvëfÇÕÇ»Ç¢Ç≈Ç∑YOÅI');
	}
}
*/
