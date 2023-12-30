/**
 * 4.创建一个圆对象，具有半径、圆心坐标、边框颜色属性，具备能计算面积的方法。
 */
var circle={
    radius:10,
    centerPos:'0,0',
    edgeColor:'blue',
    calArea: function(){
        return 3.14*Math.pow(this.radius,2);
    }
}
console.log('圆的面积为:'+circle.calArea());