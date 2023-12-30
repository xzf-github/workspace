/**
 * 3.设计一个函数，参数分别代表年、月、日，
 * 利用基姆拉尔森计算公式计算出日期的星期值(1至7之间1代表星期一，7代表星期天)
    公式Week = (d+2*m+3*(m+1)/5+y+y/4-y/100+y/400+1) mod 7；
*/

function calWeekday(year, month, day) {  
    // 基姆拉尔森计算公式  
    let Week = Math.floor((day + 2 * month + 3 * (month + 1) / 5 + year + year / 4 - year / 100 + year / 400 + 1) % 7);  
    // 对计算结果进行映射，使1代表星期一，7代表星期天  
    Week = Week === 0 ? 6 : Week - 1;  
    return Week;  
}
console.log("今天是星期"+calWeekday(2023,10,10));
