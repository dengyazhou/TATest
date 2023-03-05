console.log("JS 对象");


// JS 对象 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// https://www.w3school.com.cn/js/js_object_definition.asp
// JavaScript 原始值
// 原始值指的是没有属性或方法的值。
// 原始数据类型指的是拥有原始值的数据。
// JavaScript 定义了 5 种原始数据类型：string、number、boolean、null、undefined
// 原始值是一成不变的（它们是硬编码的，因此不能改变）。
// 假设 x = 3.14，您能够改变 x 的值。但是您无法改变 3.14 的值。

// 对象是包含变量的变量
// JavaScript 变量能够包含单个的值：
// var person = "Bill Gates";

// 对象属性

// 对象方法

// 方法一 使用 JavaScript 关键词 new
// var person = new Object();
// person.firstName = "Bill"
// person.lastName = "Gates"
// person.age = 50;
// person.eyeColor = 'blue'
// console.log("firstName:"+person.firstName+" lastName:"+person.lastName+" age:"+person.age+" eyeColor:"+person.eyeColor);

// 方法二 使用对象字面量
// var person = {
//     firstName:"Bill",
//     lastName:"Gates",
//     age:62,
//     eyeColor:"blue"
// };
// console.log("firstName:"+person.firstName+" lastName:"+person.lastName+" age:"+person.age+" eyeColor:"+person.eyeColor);

// JavaScript 对象是易变的
// var person = {
//     firstName:"Bill",
//     lastName:"Gates",
//     age:62,
//     eyeColor:"blue"
// };
// var x = person;// 对象 x 并非 person 的副本。它就是 person。x 和 person 是同一个对象。对 x 的任何改变都将改变 person，因为 x 和 person 是相同的对象。
// x.age = 10
// console.log("person.age:"+person.age+" x.age:"+x.age);

// JS 对象 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JavaScript 对象属性 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var person = {
//     firstName:"Bill",
//     lastName:"Gates",
//     age:23,
//     eyeColor:"blue"
// }

// person.age; // objectName.property           // person.age
// person["age"]; // objectName["property"]       // person["age"] 或 person['age']
// x = "age";
// person[x]; // objectName[expression]       // x = "age"; person[x]
// console.log("person.age: " + person.age + " person[\"age\"]: " + person["age"] + " person['age']: " + person['age'] +" person[x]:" + person[x]);

// JavaScript for...in 循环
// var person = {
//     firstName:"Bill",
//     lastName:"Gates",
//     age:23,
//     eyeColor:"blue"
// }
// var key = "键";
// var value = "值";
// var x;
// for (x in person) {
//     key += (" " + x);
//     value += (" " + person[x])
// }
// console.log("txt: " + key);
// console.log("value: " + value);


// 添加新属性
// 您可以通过简单的赋值，向已存在的对象添加新属性。
// var person = {
//     firstName:"Bill",
//     lastName:"Gates",
//     age:23,
//     eyeColor:"blue"
// };
// person.secondName = "Box";

// var key = "键";
// var value = "值";
// for (const x in person) {
//     key += (" " + x);
//     value += (" " + person[x]);
// }
// console.log("key:" + key);
// console.log("value:" + value);


// 删除属性
// var person = {
//     firstName:"Bill",
//     lastName:"Gates",
//     age:23,
//     eyeColor:"blue"
// };
// console.log("age delete before: " + person.age);
// delete person.age;
// console.log("age delete after: " + person.age);

// JavaScript 对象属性 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JavaScript 对象方法 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var person = {
//     firstName: "Bill",
//     lastName: "Gates",
//     id: 678,
//     fullName: function() {
//         return this.firstName + " " + this.lastName;
//     }
// };
// // this 关键词
// // 在 JavaScript 中，被称为 this 的事物，指的是拥有该 JavaScript 代码的对象。
// // this 的值，在函数中使用时，是“拥有”该函数的对象。
// // 请注意 this 并非变量。它是关键词。您无法改变 this 的值。
// console.log("函数定义:" + person.fullName);
// console.log("函数结果:" + person.fullName());


// 使用内建方法
// var message = "Hello world";
// console.log("message: " + message);
// var x = message.toUpperCase();
// console.log("x: " + x);


// 添加新的方法
// var person = {
//     firstName: "Bill",
//     lastName: "Gates",
//     id: 678
// };
// person.name = function() {
//     return this.firstName + " " + this.lastName
// }
// console.log("name: " + person.name());

// function person(firstName, lastName, age, eyeColor) {
//     this.firstName = firstName;
//     this.lastName = lastName;
//     this.age = age;
//     this.eyeColor = eyeColor;
//     this.changeName = function(name) {
//         this.lastName = name;
//     }
//     // return this;
// }

// var pObj = person("deng","亚洲",26,"white");//pObj 是一个方法的返回值, 如果方法没有返返回值, 调用pObj.eyeColor就报错了
// console.log("pObj:" + pObj);
// for (item in pObj) {
//     console.log("key:" + item + " value:" + pObj[item]);
// }
// console.log("eyeColor:"+pObj.eyeColor);

// Person 对象的构造器函数
// 用大写首字母对构造器函数命名是个好习惯。
// function Person(first, last, age, eye) {
//     this.firstName = first;
//     this.lastName = last;
//     this.age = age;
//     this.eyeColor = eye;
// }
// var myFriend = new Person("Bill", "Gates", 62, "blue");//加一个new之后 方法Person 就返回一个对象了。
// for (item in myFriend) {
//     console.log("key:" + item + " value:" + myFriend[item]);
// }
// console.log("eyeColor:"+myFriend.eyeColor);


// JavaScript 对象方法 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JavaScript 显示对象 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// 按名称显示对象属性   
// 循环显示对象属性
// 使用 Object.values() 显示对象
// 使用 JSON.stringify() 显示对象
// var person = {
//     name: "Bill",
//     age: 19,
//     city: "seattle"
// };
// console.log("person:" + person); //其实是转 字符串了，所以显示 [object Object]
// console.log(person); //显示 {name: 'Bill', age: 19, city: 'seattle'}

// 循环显示对象属性
// var person = {
//     name: "Bill",
//     age: 19,
//     city: "seattle"
// };
// let txt = "";
// for (let x in person) {
//     // txt += person[x] + " "
//     txt += (person[x] + " ");// 您必须在循环中使用 person[x]。person.x 将不起作用（因为 x 是一个变量）
// }
// console.log(txt);

// 使用 Object.values() 显示对象
// const person = {
//     name: "Bill",
//     age: 19,
//     city: "Seattle",
// };
// const keyArray = Object.keys(person);// 将对象转换为数组
// const valueArray = Object.values(person);// 将对象转换为数组
// console.log(keyArray);
// console.log(valueArray);

// 使用 JSON.stringify() 显示对象
// const person = {
//     name: "Bill",
//     age: 19,
//     city: "Seattle",
// };
// let myString = JSON.stringify(person);
// console.log(myString);

// 日期字符串化
// const person = {
//     name: "Bill",
//     today: new Date()
// };
// let myString = JSON.stringify(person);
// console.log(myString);

// 函数字符串化
// JSON.stringify 不会对函数进行字符串化：
// const person = {
//     name: "Bill",
//     age: function () {
//         return 19;
//     },
// };
// let myString = JSON.stringify(person);
// console.log(myString);

// 如果在字符串化之前将函数转换为字符串，这可以是“固定的”。
// const person = {
//     name: "Bill",
//     age: function () {
//         return 19;
//     },
// };
// let myString = JSON.stringify(person);
// console.log(myString);
// person.age = person.age.toString();
// let myString1 = JSON.stringify(person);
// console.log(myString1);

// 数组字符串化
// const arr = ["Bill", "Steve", "Elon", "David"];
// console.log(arr);
// let myString = JSON.stringify(arr);
// console.log(myString);

// JavaScript 显示对象 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// JavaScript 对象访问器 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//  JavaScript Getter（get 关键词）
// var person = {
//     firstName: "Bill",
//     lastName: "Gates",
//     language: "en",
//     get lang() {
//         return this.language;
//     },
// };
// var str = person.lang;
// console.log(str);

// JavaScript Setter（set 关键词）
// var person = {
//     firstName: "Bill",
//     lastName: "Gates",
//     language: "begin",
//     set lang(value) {
//         this.language = value;
//     } 
// };
// console.log(person.language);
// person.lang = "en";
// console.log(person.language);

// 例子 1 以函数形式访问 fullName：person.fullName()。
// 例子 2 以属性形式访问 fullName：person.fullName。
// var person1 = {
//     firstName: "Bill",
//     lastName: "Gates",
//     fullName: function() {
//         return this.firstName + " " + this.lastName;
//     }
// }
// var person2 = {
//     firstName: "Bill",
//     lastName: "Gates",
//     get fullName() {
//         return this.firstName + " " + this.lastName;
//     }
// }
// var fullName1 = person1.fullName();// 使用方法来显示来自对象的数据：
// var fullName2 = person2.fullName;// 使用 getter 来显示来自对象的数据：
// console.log(fullName1);
// console.log(fullName2);

// 数据质量
// 使用 getter 和 setter 时，JavaScript 可以确保更好的数据质量。
// var person = {
//     firstName: "Bill",
//     lastName: "Gates",
//     language: "en",
//     get lang() {
//         return this.language.toUpperCase();//使用 lang 属性以大写形式返回 language 属性的值：
//     }
// };
// var str = person.lang;
// console.log(str);
// var str = JSON.stringify(person);
// console.log(str);

// var person = {
//     firstName: "Bill",
//     lastName: "Gates",
//     language: "",
//     set lang(value) {
//         this.language = value.toUpperCase();// 使用 setter 来设置对象属性：
//     },
// };
// person.lang = "en";
// var str = person.language;
// console.log(str);
// var str = JSON.stringify(person);
// console.log(str);

// 为什么使用 Getter 和 Setter？
// 它提供了更简洁的语法
// 它允许属性和方法的语法相同
// 它可以确保更好的数据质量
// 有利于后台工作

// 一个计数器实例
// var obj = {
//     counter: 0,
//     get reset() {
//         this.counter = 0;
//     },
//     get increment() {
//         this.counter++;
//     },
//     get decrement() {
//         this.counter--;
//     },
//     set add(value) {
//         this.counter += value;
//     },
//     set subtract(value) {
//         this.counter -= value;
//     }
// };
// // 操作计数器：
// obj.reset;
// obj.add = 5;
// obj.subtract = 1;
// obj.increment;
// obj.decrement;
// console.log(obj.counter);

// Object.defineProperty() 方法也可用于添加 Getter 和 Setter：
// 定义对象
// var obj = {
//     counter: 2,
// };
// 定义 setters
// Object.defineProperty(obj, "reset", {
//     get : function() {
//         this.counter = 10;
//     }
// });
// Object.defineProperty(obj, "increment", {
//     get : function() {
//         this.counter++;
//     }
// });
// Object.defineProperty(obj, "decrement", {
//     get : function() {
//         this.counter++;
//     }
// });
// Object.defineProperty(obj, "add", {
//     set : function(value) {
//         this.counter += value;
//     }
// });
// Object.defineProperty(obj, "subtract", {
//     set : function(value) {
//         this.counter -= value;
//     }
// });
// // 操作计数器：
// obj.reset;
// obj.add = 5;
// obj.subtract = 1;
// obj.increment;
// obj.decrement;
// console.log(obj.counter);

// JavaScript 对象访问器 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JavaScript 对象构造器 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Person 对象的构造器函数
// 用大写首字母对构造器函数命名是个好习惯。
// function Person(first, last, age, eye) {
//     this.firstName = first;
//     this.lastName = last;
//     this.age = age;
//     this.eyeColor = eye;
// };
// // 创建 Person 对象
// var myFriend = new Person("Bill", "Gates", 62, "blue");// 加new之后返回的就是一个对象，没有new就是调用一个方法，方法没有返回值所以后面没打印
// for (item in myFriend) {
//     console.log("key:" + item + " value:" + myFriend[item]);
// }


// Person 对象的构造器函数
// function Person(first, last, age, eye) {
//     this.firstName = first;
//     this.lastName = last;
//     this.age = age;
//     this.eyeColor = eye;
// };
// var myFriend = new Person("Bill", "Gates", 62, "blue");
// var myBrother = new Person("Steve", "Jobs", 52, "green");
// console.log(myFriend.age);
// console.log(myBrother.age);

// 为对象添加属性
// 为已有的对象添加新属性很简单：
// function Person(first, last, age, eye) {
//     this.firstName = first;
//     this.lastName = last;
//     this.age = age;
//     this.eyeColor = eye;
// };
// var myFriend = new Person("Bill", "Gates", 62, "blue");
// var myBrother = new Person("Steve", "Jobs", 52, "green");
// myFriend.nationalityDyz = "English";// 新属性被添加到 myFriend。不是 myBrother，也不是任何其他 person 对象。
// console.log(myFriend.nationalityDyz);
// console.log(myBrother.nationalityDyz);

// 为对象添加方法
// 为已有的对象添加新方法很简单：
// function Person(first, last, age, eye) {
//     this.firstName = first;
//     this.lastName = last;
//     this.age = age;
//     this.eyeColor = eye;
// };
// var myFriend = new Person("Bill", "Gates", 62, "blue");
// var myBrother = new Person("Steve", "Jobs", 52, "green");
// myFriend.name = function () {
//     return this.firstName + " " + this.lastName;
// };//新方法被添加到 myFriend。不是 myBrother，也不是任何其他 person 对象。
// for (const item in myFriend) {
//     console.log("key:" + item + ", value:" + myFriend[item]);
// }

// 为构造器添加属性
// function Person(first, last, age, eye) {
//     this.firstName = first;
//     this.lastName = last;
//     this.age = age;
//     this.eyeColor = eye;
// };
// Person.nationalityDyz = "English";//您不能将新属性添加到构造函数
// var myFriend = new Person("Bill", "Gates", 62, "blue");
// var myBrother = new Person("Steve", "Jobs", 52, "green");
// console.log(myFriend.nationalityDyz);
// console.log(Person.nationalityDyz);
// 如需向构造器添加一个新属性，您必须添加到构造器函数：
// function Person(first, last, age, eye) {
//     this.firstName = first;
//     this.lastName = last;
//     this.age = age;
//     this.eyeColor = eye;
//     this.nationalityDyz = "English";
// };
// var myFriend = new Person("Bill", "Gates", 62, "blue");
// var myBrother = new Person("Steve", "Jobs", 52, "green");
// console.log(myFriend.nationalityDyz);

// 为构造器添加方法
// function Person(first, last, age, eyeColor){
//     this.firstName = first;
//     this.lastName = last;
//     this.age = age;
//     this.eyeColor = eyeColor;
// };
// Person.name = function() {
//     return this.firstName + " " + this.last;
// }; //必须添加到构造函数中
// var myFriend = new Person("Bill", "Gates", 62, "blue");
// console.log(myFriend.name());
// 与向已有对象添加新方法不同，您无法为对象构造器添加新方法。
// 必须在构造器函数内部向一个对象添加方法：
// function Person(first, last, age, eyeColor){
//     this.firstName = first;
//     this.lastName = last;
//     this.age = age;
//     this.eyeColor = eyeColor;
//     this.name = function() {
//         return this.firstName + " " + this.lastName;
//     };
// };
// var myFriend = new Person("Bill", "Gates", 62, "blue");
// console.log(myFriend.name());

// 内建 JavaScript 构造器
// var x1 = new Object(); //一个新的 Object 对象
// var x2 = new String(); //一个新的 String 对象
// var x3 = new Number(); //一个新的 Number 对象
// var x4 = new Boolean(); //一个新的 Boolean 对象
// var x5 = new Array(); //一个新的 Array 对象
// var x6 = new RegExp(); //一个新的 RegExp 对象
// var x7 = new Function(); //一个新的 Function 对象
// var x8 = new Date(); // 一个新的 Date 对象
// console.log(typeof x1);
// console.log(typeof x2);
// console.log(typeof x3);
// console.log(typeof x4);
// console.log(typeof x5);
// console.log(typeof x6);
// console.log(typeof x7);
// console.log(typeof x8);

// 请使用对象字面量 {} 代替 new Object()。
// 请使用字符串字面量 "" 代替 new String()。
// 请使用数值字面量代替 Number()。
// 请使用布尔字面量代替 new Boolean()。
// 请使用数组字面量 [] 代替 new Array()。
// 请使用模式字面量代替 new RexExp()。
// 请使用函数表达式 () {} 代替 new Function()。
// var x1 = {}; // 新对象
// var x2 =  ""; // 字符串
// var x3 = 0; // 数字
// var x4 = false; // 布尔
// var x5 = []; // 对象（非数组）
// var x6 = /()/; // 对象
// var x7 = function(){}; // 函数
// console.log(typeof x1);
// console.log(typeof x2);
// console.log(typeof x3);
// console.log(typeof x4);
// console.log(typeof x5);
// console.log(typeof x6);
// console.log(typeof x7);

// 字符串对象
// 通常，字符串被创建为原始值：var firstName = "Bill"
// 但是也可以使用 new 关键词创建字符串对象：var firstName = new String("Bill")
// 请在 JS 字符串这一章中学习为何不应该把字符串创建为对象。
// var firsName = "Bill";
// var firsName1 = new String("Bill");
// console.log(typeof firsName);
// console.log(typeof firsName1);

// 数字对象
// 通常，数值被创建为原始值：var x = 456
// 但是也可以使用 new 关键词创建数字对象：var x = new Number(456)
// 请在 JS 数字这一章中学习为何不应该把数值创建为对象。

// 布尔对象
// 通常，逻辑值被创建为原始值：var x = false
// 但是也可以使用 new 关键词创建逻辑对象：var x = new Boolean(false)
// 请在 JS 逻辑这一章中学习为何不应该把逻辑值创建为对象。

// JavaScript 对象构造器 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// JavaScript 对象原型 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// 原型继承
// 所有 JavaScript 对象都从原型继承属性和方法。
// 日期对象继承自 Date.prototype。数组对象继承自 Array.prototype。Person 对象继承自 Person.prototype。
// Object.prototype 位于原型继承链的顶端：
// 日期对象、数组对象和 Person 对象都继承自 Object.prototype。
// 使用 prototype 属性
// JavaScript prototype 属性允许您为对象构造器添加新属性：
// JavaScript prototype 属性也允许您为对象构造器添加新方法：
// function Person(first, last, age, eye) {
//     this.firstName = first;
//     this.lastName = last;
//     this.age = age;
//     this.eyeColor = eye;
// }
// Person.prototype.nationalityDyz = "English";
// Person.prototype.name = function () {
//     return this.firstName + " " + this.lastName;
// };
// var myFriend = new Person("Bill", "Gates", 62, "blue");
// for (item in myFriend) {
//     console.log("key:" + item + " value:" + myFriend[item]);
// }
// console.log(myFriend.name());

// JavaScript 对象原型 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// JavaScript ES5 对象方法 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// 管理对象
// 以现有对象为原型创建对象
// Object.create()
// 添加或更改对象属性
// Object.defineProperty(object, property, descriptor)
// 添加或更改对象属性
// Object.defineProperties(object, descriptors)
// 访问属性
// Object.getOwnPropertyDescriptor(object, property)
// 以数组返回所有属性
// Object.getOwnPropertyNames(object)
// 访问原型
// Object.getPrototypeOf(object)
// 以数组返回可枚举属性
// Object.keys(object)

// 保护对象
// 防止向对象添加属性
// Object.preventExtensions(object)
// 如果属性可以添加到对象，则返回 true
// Object.isExtensible(object)
// 防止更改对象属性（不是值）
// Object.seal(object)
// 如果对象被密封，则返回 true
// Object.isSealed(object)
// 防止对对象进行任何更改
// Object.freeze(object)
// 如果对象被冻结，则返回 true
// Object.isFrozen(object)

// 更改属性值
// Object.defineProperty(object, property, {value : value})
// var person = {
//     firstName:"Bill",
//     lastName:"Gates",
//     language:"EN",
// };
// console.log(person.language);
// Object.defineProperty(person, "language", {value:"CH"});//修改属性
// console.log(person.language);
// Object.defineProperty(person, "language1", {value:"NO"});//添加属性
// console.log(person.language1);

// 更改元数据
// ES5 允许更改以下属性元数据：
// writable : true      // 属性值可更改
// enumerable : true    // 属性可枚举
// configurable : true  // 属性可重新配置
// writable : false     // 属性值不可更改
// enumerable : false   // 属性不可枚举
// configurable : false // 属性不可重新配置
// ES5 允许更改 getter 和 setter：
// 定义 getter
// get: function() { return language }
// 定义 setter
// set: function(value) { language = value }
// var person = {
//     firstName:"Bill",
//     lastName:"Gates",
//     language:"EN",
// };
// console.log(person.language);
// person.language = "CH";
// console.log(person.language);
// Object.defineProperty(person,"language",{writable:false});//此例设置 language 为只读：
// person.language = "中文";
// console.log(person.language);

// 列出所有属性
// const person = {
//     firstName: "Bill",
//     lastName: "Gates",
//     language: "EN"
// };
// const arrKey0 = Object.getOwnPropertyNames(person);
// console.log(arrKey0);
// Object.defineProperty(person, "language", {enumerable:false});
// const arrKey1 = Object.getOwnPropertyNames(person);
// console.log(arrKey1);

// 列出可枚举的属性
// const person = {
//     firstName: "Bill",
//     lastName: "Gates",
//     language: "EN"
// };
// const arrKey0 = Object.keys(person);
// console.log(arrKey0);
// Object.defineProperty(person, "language", {enumerable:false});
// const arrKey1 = Object.keys(person);
// console.log(arrKey1);

// 添加属性
// const person = {
//     firstName: "Bill",
//     lastName: "Gates",
//     language: "EN"
// };
// Object.defineProperty(person, "year", {value:"2008"});
// person.age = 34;
// for (const item in person) {
//     console.log("key: " + item + " value:" + person[item]);
// }
// console.log(person.year);
// console.log(person.age);

// 添加 Getter 和 Setter
// const person = {
//     firstName: "Bill",
//     lastName: "Gates",
// };
// Object.defineProperty(person, "fullName", {
//     get: function() {
//         return this.firstName + " " + this.lastName;
//     }
// });
// for (const item in person) {
//     console.log("key: " + item + " value:" + person[item]);
// }
// var fullName = person.fullName;
// console.log(fullName);

// JavaScript ES5 对象方法 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// JavaScript Map 对象 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Map 对象存有键值对，其中的键可以是任何数据类型。
// Map 对象记得键的原始插入顺序。
// Map 对象具有表示映射大小的属性。

// 基本的 Map() 方法
// new Map()    创建新的 Map 对象。
// set()    为 Map 对象中的键设置值。
// get()    获取 Map 对象中键的值。
// entries()    返回 Map 对象中键/值对的数组。
// keys()   返回 Map 对象中键的数组。
// values()     返回 Map 对象中值的数组。

// Map() 属性
// size     获取 Map 对象中某键的值。

// 创建 Map 对象
// 能够使用对象作为键是 Map 的一个重要特性。
// 创建对象
// const apples = {name: "Apples"}; 
// const bananas = {name: "Bananas"};
// const oranges = {name: "Oranges"};
// // 创建新的 Map
// const fruits = new Map();
// // Add new Elements to the Map
// fruits.set(apples, 500);
// fruits.set(bananas, 300);
// fruits.set(oranges, 200);
// console.log(fruits);

// 您可以将 Array 传递给 new Map() 构造函数：
// const apples = {name: "Apples"}; 
// const bananas = {name: "Bananas"};
// const oranges = {name: "Oranges"};
// // 创建新的 Map
// const fruits = new Map([
//     [apples, 500],
//     [bananas, 300],
//     [oranges, 200]
// ]);

// 获取键的值
// const str = fruits.get(apples);
// console.log(str);
// Remember: The key is an object (apples), not a string ("apples"):
// const str1 = fruits.get("apples");
// console.log(str1);

// 其他 Map() 方法
// clear()      删除 Map 中的所有元素。
// delete()     删除由键指定的元素。
// has()        如果键存在，则返回 true。
// forEach()    为每个键/值对调用回调

// Map.size
// Map.delete()
// Map.clear()
// Map.has()
// const apples = {name: "Apples"}; 
// const bananas = {name: "Bananas"};
// const oranges = {name: "Oranges"};
// const fruits = new Map();
// fruits.set(apples, 500);
// fruits.set(bananas, 300);
// fruits.set(oranges, 200);
// fruits.set("age", 23);
// console.log(fruits.size);
// fruits.delete(apples)
// fruits.clear();
// console.log(fruits.has(apples));
// for (const itme in fruits) { 
//     console.log("key:" + itme + " values:" + fruits[itme]);
// } 
// fruits.forEach(element => {
//     console.log(element);//打印value
// });
// console.log(fruits.get("age"));
// console.log(fruits.entries());
// console.log(fruits.values());
// console.log(fruits.keys());

// JavaScript 对象 vs Map
// JavaScript 对象和 Map 之间的差异：
// 对象	                                    Map
// Size	对象没有 size 属性	                 Maps 有 size 属性
// 键类型	对象键必须是字符串（或符号）         Map 键可以是任何数据类型
// 键顺序	对象键没有很好地排序                Map 键按插入排序
// 默认	    对象有默认键                      Map 没有默认键

// JavaScript Map 对象 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// JavaScript Set 对象 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Set 是唯一值的集合。
// 每个值在 Set 中只能出现一次。
// 一个 Set 可以容纳任何数据类型的任何值。

// 如何创建 Set
// 创建一个 Set 并添加现有变量：
// 创建新的变量
// const a = "a";
// const b = "b";
// const c = "c";
// 创建 Set
// const letters = new Set();
// Add the values to the Set
// letters.add(a);
// letters.add(b);
// letters.add(c);
// console.log(letters);

// 创建 Set 并添加文字值：
// const letters = new Set();
// letters.add("a");
// letters.add("b");
// letters.add("c");

// 将 Array 传递给 new Set() 构造函数：
// 创建新的 Set
// const letters = new Set(["a","b","c"]);
// const type = typeof letters; // 返回 object
// console.log(type);
// const instance = letters instanceof Set; // 返回 true
// console.log(instance);
// 如果您添加相等的元素，则只会保存第一个元素：
// letters.add("d");
// letters.add("e");
// letters.add("e");
// const arr = letters.entries();
// console.log(arr);
// console.log(letters.keys());
// console.log(letters.values());

// Set 对象的方法和属性
// new Set()	创建新的 Set 对象。
// add()	向 Set 添加新元素。
// clear()	从 Set 中删除所有元素。
// delete()	删除由其值指定的元素。
// entries()	返回 Set 对象中值的数组。
// has()	如果值存在则返回 true。
// forEach()	为每个元素调用回调。
// keys()	返回 Set 对象中值的数组。
// values()	与 keys() 相同。
// size	返回元素计数。


// JavaScript Set 对象 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>