function Person(){

};
Person.prototype={
    constructor:Person,
    name:'金世遗',
    nickname:'毒手疯丐',
    weapons:'拐剑',
    say:function(){
        console.log('剑拐纵横来复去，昂头天外自高歌！');
    }
};
var Farmer={};
for(var key in Person.prototype){
    Farmer[key]=Person.prototype[key];
}
console.dir(Farmer);
Farmer.say();