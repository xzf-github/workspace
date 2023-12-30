function getBrowserType(){
    var userAgent=navigator.userAgent;
    var isOpera=userAgent.indexOf("Opera")>-1;
    var isIE=userAgent.indexOf("compatible")>-1&&userAgent.indexOf("MSIE")>-1&&!isOpera;
    var isEdge=userAgent.indexOf("Winodws NT 6.1; Trident/7.0;")>-1&&!isIE;
    var isFF=userAgent.indexOf("Firefox")>-1;
    var isSafari=userAgent.indexOf("Safari")>-1&&userAgent.indexOf("Chrome")==-1;
    var isChrome=userAgent.indexOf("Chrome")>-1&&userAgent.indexOf("Safari")>-1;
    if(isIE){
        var reIE=new RegExp("MSIE(\\d+\\.\\d+);")
        reIE.test(userAgent);
        var fIEVersion=parseFloat(RegExp["$1"]);
        if(fIEVersion==7){return "IE7"}
        else if(fIEVersion==8){return "IE8"}
        else if(fIEVersion==9){return "IE9"}
        else if(fIEVersion==10){return "IE10"}
        else if(fIEVersion==11){return "IE11"}
        else return "0";
    }
    if(isFF)return "FF";
    if(isOpera)return "Opera";
    if(isSafari)return "Safari";
    if(isChrome)return "Chrome";
    if(isEdge)return "Edge";
}
document.write("当前的浏览器是:"+getBrowserType());
getBrowserType();
