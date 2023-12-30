function Person(name, motto){
    this.name = name;
    this.motto = motto;
}
Person.prototype.eat = function(){
    console.log('毕竟，饭还是要吃的');
};
function Farmer(job){
    this.job = job;
}		
Farmer.prototype = new Person('陈胜', '王侯将相宁有种乎？');
Farmer.prototype.doWork = function(){
    console.log(this.name + '是个' + this.job + '，他揭竿而起，高呼：' + this.motto);
};
var far = new Farmer('农民');
far.doWork();
far.eat();
        
var far2 = new Farmer('农民');
far2.name = '李自成';
far2.motto = '吃闯王，喝闯王，闯王来了不纳粮!';
far2.doWork();
far2.eat();	