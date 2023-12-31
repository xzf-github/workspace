function Element(option){
    this.id=option.id||'';
    this.nodeName=option.nodeName||'';
    this.nodeValue=option.nodeValue||'';
    this.nodeType=1;
    this.children=option.children||[];
}
var doc = new Element({
    nodeName: 'html'
});
var head = new Element({
    nodeName:'head'
});
var t=new Element({
    nodeName:'title',
    nodeValue:'文档树'
});
head.children.push(t);
var body=new Element({
    nodeName:'body'
});
doc.children.push(head);
doc.children.push(body);
var div =new Element({
    nodeName:'a',
    nodeValue:'Vue.js 2.x实践指南',
})
var p=new Element({
    nodeName:'p',
    nodeValue:'沧海一声笑'
});
body.children.push(div);
body.children.push(p);
function getChildren(ele){
    for(var i=0;i<ele.children.length;i++){
        var child=ele.children[i];
        console.log(child.nodeName);
        getChildren(child);
    }
}
getChildren(doc);
console.log('doc :>> ',doc);//左下控制台看结果