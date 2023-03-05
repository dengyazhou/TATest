console.log("JS 函数");


// JavaScript 函数定义 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// 函数声明
// 被声明的函数不会直接执行。它们被“保存供稍后使用”，将在稍后执行，当它们被调用时。
// 分号用于分隔可执行的 JavaScript 语句。
// 由于函数声明不是可执行的语句，以分号结尾并不常见。
// function myFunction(a, b) {
//     return a * b;
// };
// var x = myFunction(4, 3);
// console.log(x);

// 函数表达式
// JavaScript 函数也可以使用表达式来定义。
// 函数表达式可以在变量中存储：
// 上面的函数实际上是一个匿名函数（没有名称的函数）。
// 存放在变量中的函数不需要函数名。他们总是使用变量名调用。
// 上面的函数使用分号结尾，因为它是可执行语句的一部分。
// var x = function (a, b) { return a*b };
// var z = x(4, 5);
// console.log(z);

// Function() 构造器
// 正如您在之前的例子中看到的，JavaScript 函数是通过 function 关键词定义的。
// 函数也可以通过名为 Function() 的内建 JavaScript 函数构造器来定义。
// var myFunction = new Function("a", "b", "return a * b");
// var x = myFunction(3, 2);
// console.log(x);

// 函数提升
// 在本教程中稍早前，您已经学到了“提升”（hoisting）。
// Hoisting 是 JavaScript 将声明移动到当前作用域顶端的默认行为。
// Hoisting 应用于变量声明和函数声明。
// 正因如此，JavaScript 函数能够在声明之前被调用：
// var x = myFunction(5);
// console.log(x);
// function myFunction(y) {
//     return y * y;
// }
// 使用表达式定义的函数不会被提升。

// 自调用函数
// 函数表达式可以作为“自调用”。
// 自调用表达式是自动被调用（开始）的，在不进行调用的情况下。
// 函数表达式会自动执行，假如表达式后面跟着 ()。
// 您无法对函数声明进行自调用。
// 您需要在函数周围添加括号，以指示它是一个函数表达式：
// (function () {
//     var x = "Hello1!!";
//     console.log(x);
// })();
// (function () {
//     var x = "Hello2!!";
//     console.log(x);
// }()); // function 前面的大括号必须加
// 上面的函数实际上是一个匿名的自调用函数（没有名称的函数）。

// 函数可用作值
// JavaScript 函数可被用作值：
// function myFunction(a,b) {
//     return a * b;
// }
// var x = myFunction(4,3);
// JavaScript 函数可用在表达式中：
// function myFunction(a,b) {
//     return a * b;
// };
// var x = myFunction(4, 3) * 2;
// console.log(x);

// 函数是对象
// JavaScript 中的 typeof 运算符会为函数返回 "function"。
// 但是最好是把 JavaScript 函数描述为对象。
// JavaScript 函数都有属性和方法。
// arguments.length 会返回函数被调用时收到的参数数目：
// toString() 方法以字符串返回函数：
// function myFunction(a, b) {
//     return arguments.length;
// };
// var x = myFunction(99);
// console.log(x);
// var txt = myFunction.toString();
// console.log(txt);
// 定义为对象属性的函数，被称为对象的方法。
// 为创建新对象而设计的函数，被称为对象构造函数（对象构造器）。

// 箭头函数
// 箭头函数允许使用简短的语法来编写函数表达式。
// 您不需要 function 关键字、return 关键字和花括号。
// ES5
// var x5 = function(x, y) {
//     return x * y;
// }
// console.log(x5(3,5));
// ES6
// const x6 = (x, y) => x * y;
// console.log(x6(4,5));
// 箭头函数没有自己的 this。它们不适合定义对象方法。
// 箭头函数未被提升。它们必须在使用前进行定义。
// 使用 const 比使用 var 更安全，因为函数表达式始终是常量值。
// 如果函数是单个语句，则只能省略 return 关键字和大括号。因此，保留它们可能是一个好习惯：
// const x7 = (x,y) => { return x * y };
// console.log(x7(6,7));

// JavaScript 函数定义 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// JavaScript 函数参数 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// JavaScript 函数不会对参数值进行任何检查。

// 函数参数
// 函数参数（parameter）指的是在函数定义中列出的名称。
// 函数参数（argument）指的是传递到函数或由函数接收到的真实值。

// 参数规则
// JavaScript 函数定义不会为参数（parameter）规定数据类型。
// JavaScript 函数不会对所传递的参数（argument）实行类型检查。
// JavaScript 函数不会检查所接收参数（argument）的数量。

// 参数默认
// 如果调用参数时省略了参数（少于被声明的数量），则丢失的值被设置为：undefined。
// 有时这是可以接受的，但是有时最好给参数指定默认值：
// function myFunction(x, y) {
//     if (y === undefined) {
//         y = 222;
//     }
//     console.log(x);
//     console.log(y);
// }
// myFunction(11);

// arguments 对象
// JavaScript 函数有一个名为 arguments 对象的内置对象。
// arguments 对象包含函数调用时使用的参数数组。
// 这样，您就可以简单地使用函数来查找（例如）数字列表中的最高值：
// function findMax() {
//     var i;
//     var max = -Infinity;
//     for (i = 0; i < arguments.length; i++) {
//         console.log("key:" + i + " value:" + arguments[i]);
//         if (arguments[i] > max) {
//             max = arguments[i];
//         }
//     }
//     return max;
// }
// x = findMax(1, 123, 500, 115, 44, 87);
// findMax(4,5,6);
// console.log(x);

// 参数通过值传递
// 函数调用中的参数（parameter）是函数的参数（argument）。
// JavaScript 参数通过值传递：函数只知道值，而不是参数的位置。
// 如果函数改变了参数的值，它不会改变参数的原始值。
// 参数的改变在函数之外是不可见的。

// 对象是由引用传递的
// 在 JavaScript 中，对象引用是值。
// 正因如此，对象的行为就像它们通过引用来传递：
// 如果函数改变了对象属性，它也改变了原始值。
// 对象属性的改变在函数之外是可见的。

// JavaScript 函数参数 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JavaScript 函数调用 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// 调用 JavaScript 函数
// 在函数被定义时，函数内部的代码不会执行。
// 在函数被调用时，函数内部的代码会被执行。
// 调用函数通常也可以说“启动函数”或“执行函数”。
// 在本教程中，我们使用“调用”。

// 以函数形式调用函数
// function myFunction(a, b) {
//     return a * b;
// }
// console.log(myFunction(10, 2));
// // 以上函数不属于任何对象。但是在 JavaScript 中，始终存在一种默认的全局对象。
// // 在 HTML 中，默认全局对象是 HTML 页面本身，所有上面的函数“属于”HTML 页面。
// // 在浏览器中，这个页面对象就是浏览器窗口。上面的函数自动成为一个窗口函数。
// // myFunction() 和 window.myFunction() 是同一个函数：
// var num1 = myFunction(10, 2);
// // 这是调用函数的常见方法，但并不是一个好习惯。
// // 全局变量、方法或函数很容易在全局对象中产生命名冲突和漏洞。
// var num2 = window.myFunction(11, 2);
// console.log(num1);
// console.log(num2);

// this 关键词
// 在 JavaScript 中，被称为 this 的事物，指的是“拥有”当前代码的对象。
// this 的值，在函数中使用时，是“拥有”该函数的对象。
// 请注意 this 并不是变量。它属于关键词。您无法改变 this 的值。

// 全局对象
// 当不带拥有者对象调用对象时，this 的值成为全局对象。
// 在 web 浏览器中，全局对象就是浏览器对象。
// 本例以 this 的值返回这个 window 对象：
// var x = myFunction();
// function myFunction() {
//     return this;
// }
// console.log(x);
// var y = window.myFunction();
// console.log(y);
// 调用一个函数作为一个全局函数，会导致 this 的值成为全局对象。
// 作为变量来使用 window 对象很容易使程序崩溃。

// 作为方法来调用函数
// var myObject = {
//     firstName:"Bill",
//     lastName:"Gates",
//     fullName: function () {
//         return this.firstName + " " + this.lastName;
//     }
// }
// str = myObject.fullName();
// console.log(str);
// fullName 方法是一个函数。该函数属于对象。myObject 是函数的拥有者。
// 被称为 this 的事物，是“拥有”这段 JavaScript 代码的对象。在此例中，this 的值是 myObject。
// 测试一下！修改这个 fullName 方法来返回 this 的值：
// var myObject = {
//     firstName:"Bill",
//     lastName:"Gates",
//     fullName: function () {
//         return this;
//     }
// }
// obj = myObject.fullName();
// console.log(obj);
// 以对象方法来调用函数，会导致 this 的值成为对象本身。

// 通过函数构造器来调用函数
// 如果函数调用的前面是 new 关键字，那么这是一个构造函数调用。
// 它看起来像你创建一个新的函数，但由于 JavaScript 函数是对象，你实际上创建一个新对象：
// // 这是函数构造器：
// function myFunction(arg1, arg2) {
//     this.firstName = arg1;
//     this.lastName = arg2;
// }
// // 创建了一个新对象：
// var x = new myFunction("Bill", "Gates");
// console.log(x.firstName);
// 构造器调用会创建新对象。新对象会从其构造器继承属性和方法。
// 构造器内的 this 关键词没有值。
// this 的值会成为调用函数时创建的新对象。

// JavaScript 函数调用 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JavaScript 函数 Call ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// 方法重用
// 使用 call() 方法，您可以编写能够在不同对象上使用的方法。

// 函数是对象方法
// 在 JavaScript 中，函数是对象的方法。
// 如果一个函数不是 JavaScript 对象的方法，那么它就是全局对象的函数（参见前一章）。
// 下面的例子创建了带有三个属性的对象（firstName、lastName、fullName）。
// var person = {
//     firstName:"Bill",
//     lastName:"Gates",
//     fullName: function () {
//         return this.firstName + " " + this.lastName;
//     }
// }
// var x = person.fullName();
// console.log(x);
// fullName 属性是一个方法。person 对象是该方法的拥有者。
// fullName 属性属于 person 对象的方法。

// JavaScript call() 方法
// call() 方法是预定义的 JavaScript 方法。
// 它可以用来调用所有者对象作为参数的方法。
// 通过 call()，您能够使用属于另一个对象的方法。
// 本例调用 person 的 fullName 方法，并用于 person1：
// var person = {
//     fullName: function () {
//         return this.firstName + " " + this.lastName;
//     }
// }
// var person1 = {
//     firstName: "Bill",
//     lastName: "Gates",
// }
// var person2 = {
//     firstName: "Steve",
//     lastName: "Jobs",
// }
// console.log("fullName: " + person.fullName.call(person1));
// console.log("fullName: " + person.fullName.call(person2));
// person.firstName = "aa";
// person.lastName  = "bb";
// console.log(person.fullName());

// 带参数的 call() 方法
// call() 方法可接受参数：
// var person = {
//     fullName: function(city, coutry) {
//         return this.firstName + " " + this.lastName + "," + city + "," + coutry;
//     }
// }
// var person1 = {
//     firstName: "Bill",
//     lastName: "Gates"
// }
// console.log(person.fullName.call(person1,"Seattle","USA"));

// JavaScript 函数 Call ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JavaScript 函数 Apply ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// 方法重用
// 通过 apply() 方法，您能够编写用于不同对象的方法。

// JavaScript apply() 方法
// apply() 方法与 call() 方法非常相似：
// 在本例中，person 的 fullName 方法被应用到 person1：
// var person = {
//     fullName: function() {
//         return this.firstName + " " + this.lastName;
//     }
// }
// var person1 = {
//     firstName: "Bill",
//     lastName: "Gates",
// }
// console.log("fullName: " + person.fullName.apply(person1));

// call() 和 apply() 之间的区别
// 不同之处是：
// call() 方法分别接受参数。
// apply() 方法接受数组形式的参数。
// 如果要使用数组而不是参数列表，则 apply() 方法非常方便。

// 带参数的 apply() 方法
// var person = {
//     fullName: function(city, coutry) {
//         return this.firstName + " " + this.lastName + "," + city + "," + coutry;
//     }
// }
// var person1 = {
//     firstName: "Bill",
//     lastName: "Gates"
// }
// console.log("apply:" + person.fullName.apply(person1,["Seattle","USA"]));
// console.log("call:" + person.fullName.call(person1,"Seattle","USA"));

// 在数组上模拟 max 方法
// 您可以使用 Math.max() 方法找到（数字列表中的）最大数字：
// x = Math.max(1,2,3);
// console.log(x);
// 由于 JavaScript 数组没有 max() 方法，因此您可以应用 Math.max() 方法。
// x = Math.max.apply(null,[1,2,3]); // 也会返回 3
// 第一个参数（null）无关紧要。在本例中未使用它。
// x = Math.max.apply(Math, [1,2,3]); // 也会返回 3
// x = Math.max.apply(" ", [1,2,3]); // 也会返回 3
// x = Math.max.apply(0, [1,2,3]); // 也会返回 3
// console.log(x);

// JavaScript 严格模式
// 在 JavaScript 严格模式下，如果 apply() 方法的第一个参数不是对象，则它将成为被调用函数的所有者（对象）。在“非严格”模式下，它成为全局对象。

// JavaScript 函数 Apply ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JavaScript 闭包 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// JavaScript 变量属于本地或全局作用域。
// 全局变量能够通过闭包实现局部（私有）。

// 全局变量
// 函数能够访问函数内部定义的所有变量，比如：
// function myFunction() {
//     var a = 4;
//     return a * a;
// }
// var x = myFunction();
// console.log(x);
// 但是函数也能访问函数外部定义的变量，比如：
// var a = 4;
// function myFunction() {
//     return a * a;
// }
// var x = myFunction();
// console.log(x);
// 在最后这个例子中，a 是全局变量。
// 在网页中，全局变量属于 window 对象。
// 全局变量能够被页面中（以及窗口中）的所有脚本使用和修改。
// 在第一个例子中，a 是局部变量。
// 局部变量只能用于其被定义的函数内部。对于其他函数和脚本代码来说它是不可见的。
// 拥有相同名称的全局变量和局部变量是不同的变量。修改一个，不会改变其他。
// function myFunction() {
//     aa = 100;
// }
// myFunction();
// console.log(aa);
// 不通过关键词 var 创建的变量总是全局的，即使它们在函数中创建。

// 变量的生命周期
// 全局变量活得和您的应用程序（窗口、网页）一样久。
// 局部变量活得不长。它们在函数调用时创建，在函数完成后被删除。

// JavaScript 嵌套函数
// 所有函数都有权访问全局作用域。
// 事实上，在 JavaScript 中，所有函数都有权访问它们“上面”的作用域。
// JavaScript 支持嵌套函数。嵌套函数可以访问其上的作用域。
// 在本例中，内部函数 plus() 可以访问父函数中的 counter 计数器变量：
// function add() {
//     var counter = 0;
//     function plus() {
//         counter += 1;
//     }
//     plus();
//     return counter;
// }
// add();
// add();
// console.log(add());

// JavaScript 闭包
// var add = (function(){
//     var counter = 0;
//     return function () { return counter += 1; }
// })()
// console.log(add);//add是一个内部返回函数，add()执行内部返回的函数
// console.log(add());
// console.log(add());
// add();
// add();
// console.log(add());
// 变量 add 的赋值是自调用函数的返回值。
// 这个自调用函数只运行一次。它设置计数器为零（0），并返回函数表达式。
// 这样 add 成为了函数。最“精彩的”部分是它能够访问父作用域中的计数器。
// 这被称为 JavaScript 闭包。它使函数拥有“私有”变量成为可能。
// 计数器被这个匿名函数的作用域保护，并且只能使用 add 函数来修改。
// 闭包指的是有权访问父作用域的函数，即使在父函数关闭之后。



// JavaScript 闭包 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
