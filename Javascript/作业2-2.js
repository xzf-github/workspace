/*2.将一个整数数组中重复的数据删除
 */
var array=[1,2,3,4,1,3,5,6,2];
var uniqueArray= [...new Set(array)];
console.log(uniqueArray);