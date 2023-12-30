/*1.从1-54这54个整数中依次随机取一个数，构成三组数，每组17个数，
将各组数升序排列，同时将剩余的数升序排列，
显示这三组数和剩余的三个数。 */

var nums = Array.from({length: 54}, (_,i) => i + 1);//箭头函数yyds
  
function getRandN(array) {  // 随机选择一个数并移除
    var index = Math.floor(Math.random() * array.length);  
    var number = array[index];  
    array.splice(index, 1);//splice回对当前数组进行修改,单独使用会删除当前数组从指定起始位置的n个元素(n为spilice的第二位参数)
    return number;  
}  

function mysort(array) {//sort排序规则函数,mysort,myrules
    return array.sort((a, b) => a - b);  
}  
  
var group1 = Array(17).fill().map(() => getRandN(nums));
var group2 = Array(17).fill().map(() => getRandN(nums));  
var group3 = Array(17).fill().map(() => getRandN(nums));  

var remains = mysort(nums);

group1 = mysort(group1);  
group2 = mysort(group2);  
group3 = mysort(group3);
  
console.log("第一组数: ", group1);  
console.log("第二组数: ", group2);  
console.log("第三组数: ", group3);  
console.log("剩余的数为: ", remains);