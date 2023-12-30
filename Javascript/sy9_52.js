function Person(name, motto){
    this.name = name;
    this.motto = motto;
}
Person.prototype.eat = function(){
    console.log('毕竟，饭还是要吃的');
};
function Farmer(job, name, motto){
    Person.call(this, name, motto);
    this.job = job;
}		
Farmer.prototype.doWork = function(){
    console.log(this.name + '是个' + this.job + '，他揭竿而起，高呼：' + this.motto);
};
var far = new Farmer('农民', '陈胜', '王侯将相宁有种乎?');
far.doWork();
//far.eat();
        
var far2 = new Farmer(
    '农民',
    '李自成',
    '吃闯王，喝闯王，闯王来了不纳粮!'
);
far2.doWork();
//far2.eat();	