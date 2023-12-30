function countWords(text) {
  var words = text.split(" ");
  return words.length;
}
var text = prompt("请输入一段英文文本: ");
var wordCount = countWords(text);
console.log('输入的文本为:'+text);88
console.log("单词个数：" + wordCount);