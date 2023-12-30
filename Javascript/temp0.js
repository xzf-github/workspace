//原代码块
//var nums = [];
// while (nums.length < 54) {
//   var num = Math.floor(Math.random() * 54 + 1);
//   if (nums.indexOf(num) == -1) {
// 	nums.push(num);
//   }
// }
// function fn() {
//   for (var i = 0; i < nums.length; i++) {
// 	return nums[i];
// 	nums.splice(i, 1);
//   }
// }

//整合改动后的代码块
var nums=new Array(54);
for(var i=0;i<54;i++)nums[i]=i+1;//初始化数组,1-54

//从nums数组中获得随机数(random),并将该数从nums数组中删除(splice)
function getRand(nums){//从传参数组中获取其随机数
	//随机获取nums数组的下标
	var i=Math.floor(Math.random()*nums.length);//random为0-1(左闭右开), 初始nums.length为54  则random*num.length可获得的随机值为0-54(左闭右开)
	var temp=nums[i];//用一个临时变量存放随机获取数nums[i]
	//然后用splice将原本的nums[i]上的元素删除
	nums.splice(i,1);//参数i为起始位置,1为删除一个元素,后面的元素会自动向前挪
	return temp;//最后通过临时变量temp返回这个nums[i]
}
//console.log(fn());
var one = [];
var two = [];
var three = [];
for (var i = 0; i < 17; i++) {
  	//one.push(fn());
	one[i]=getRand(nums);
}
for (var i = 0; i < 17; i++) {
  	//two.push(fn());
	two[i]=getRand(nums);
}
for (var i = 0; i < 17; i++) {
  	//three.push(fn());
	three[i]=getRand(nums);
}
console.log(one);
console.log(two);
console.log(three);
console.log(nums);