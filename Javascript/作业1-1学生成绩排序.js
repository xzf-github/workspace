var students = [];
for (var i = 0; i < 10; i++) {
  var student = {}; 
  student.id = prompt("请输入学生学号：");
  student.name = prompt("请输入学生姓名：");
  student.score = parseInt(prompt("请输入学生总成绩："));
  students.push(student);
}
students.sort(function(a, b) {
  return a.id.localeCompare(b.id);
});
students.sort(function(a, b) {
  return a.name.localeCompare(b.name);
});
students.sort(function(a, b) {
  return b.score - a.score;
});
for (var i = 0; i < students.length; i++) {
  console.log("学号：" + students[i].id + "，姓名：" + students[i].name + "，总成绩：" + students[i].score);
}