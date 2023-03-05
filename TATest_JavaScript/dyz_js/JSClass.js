console.log("JS 类");

// JS 类简介 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// ECMAScript 2015，也称为 ES6，引入了 JavaScript 类。
// JavaScript 类是 JavaScript 对象的模板。

// JavaScript 类的语法
// 请使用关键字 class 创建一个类。
// 请始终添加一个名为 constructor() 的方法：
// 语法
// class ClassName {
//     constructor() { ... }
// }
// 实例
// class Car {
//     constructor(name, year) {
//         this.name = name;
//         this.year = year;
//     }
// }
// 上面的例子创建了一个名为 "Car" 的类。
// 该类有两个初始属性："name" 和 "year"。
// JavaScript 类不是对象。
// 它是 JavaScript 对象的模板。

// 使用类
// 当您有了一个类时，可以使用该类来创建对象：
// class Car {
//     constructor(name, year) {
//         this.name = name;
//         this.year = year;
//     }
// }
// let myCar1 = new Car("Ford", 2014);
// let myCar2 = new Car("Audi", 2019);
// console.log(myCar1);
// console.log(myCar2);
// 上面的例子使用 Car 类来创建两个 Car 对象。
// 在创建新对象时会自动调用构造方法（constructor method）。

// 构造方法
// 构造方法是一种特殊的方法：
// 它必须有确切的名称的 “constructor”
// 创建新对象时自动执行
// 用于初始化对象属性
// 如果您没有定义构造方法，JavaScript 会添加一个空的构造方法。

// 类方法
// 创建类方法的语法与对象方法相同。
// 请使用关键字 class 创建一个类。
// 请始终添加 constructor() 方法。
// 然后添加任意数量的方法。
// 语法
// class ClassName {
//     constructor() { ... }
//     method_1() { ... }
//     method_2() { ... }
//     method_3() { ... }
// }
// 创建一个名为 "age" 的类方法，它返回车年：
// 实例
// class Car {
//     constructor(name, year) {
//         this.name = name;
//         this.year = year;
//     }

//     age() {
//         let date =new Date();
//         return date.getFullYear() - this.year;
//     }
//     // 您可以向类方法发送参数：
//     age1(x) {
//         return x - this.year;
//     } 
// }
// let myCar = new Car("Ford", 2014);
// console.log(myCar.age());
// console.log(myCar.age1(2015));

// "use strict"
// 类中的语法必须以“严格模式”编写。
// 如果您不遵循“严格模式”规则，将收到错误消息。
// class Car {
//     constructor(name, year) {
//         this.name = name;
//         this.year = year;
//     }
//     age() {
//         // let date = new Date(); // This will work
//         // date = new Date(); // This will not work // 报错 Uncaught ReferenceError: date is not defined
//         return date.getFullYear() - this.year;
//     }
// }
// let myCar = new Car("yazhou",1992);
// console.log(myCar.age());


// JS 类简介 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JS 类继承 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// 类继承
// 如需创建类继承，请使用 extends 关键字。
// 使用类继承创建的类继承了另一个类的所有方法：
// class Car {
//     constructor(brand) {
//         this.carname = brand;
//     }
//     present() {
//         return 'I have a ' + this.carname;
//     }
// }
// class Model extends Car {
//     constructor(brand, mod) {
//         super(brand);
//         this.model = mod;
//     }
//     show() {
//         return this.present() + ', it is a ' + this.model;
//     }
// }
// let myCar = new Model("Ford", "Mustang");
// console.log(myCar.show());
// super() 方法引用父类。
// 通过在 constructor 方法中调用 super() 方法，我们调用了父级的 constructor 方法，获得了父级的属性和方法的访问权限。
// 继承对于代码可重用性很有用：在创建新类时重用现有类的属性和方法。

// Getter 和 Setter
// 类还允许您使用 getter 和 setter。
// 为您的属性使用 getter 和 setter 很聪明，特别是如果您想在返回它们之前或在设置它们之前对值做一些特殊的事情。
// 如需在类中添加 getter 和 setter，请使用 get 和 set 关键字。
// 实例
// 为 "carname" 属性创建 getter 和 setter：
// class Car {
//     constructor(brand) {
//         this.carname = brand;
//     }
//     get cnam() {
//         return this.carname;
//     }
//     set cnam(x) {
//         this.carname = x;
//     }
// }
// let myCar = new Car("Ford");
// console.log(myCar.cnam);
// myCar.cnam = "呵呵";
// console.log("cnam:" + myCar.cnam + " carname:" + myCar.carname);
// 注释：即使 getter 是一个方法，当你想要获取属性值时也不要使用括号。
// getter/setter 方法的名称不能与属性名称相同，在本例中为 carname。
// 许多程序员在属性名称前使用下划线字符 _ 将 getter/setter 与实际属性分开：
// 实例
// class Car {
//     constructor(brand) {
//         this._carname = brand;
//     }
//     get carname() {
//         return this._carname;
//     }
//     set carname(x) {
//         this._carname = x;
//     }
// }
// let myCar = new Car("Ford");
// console.log("carname:" + myCar.carname + " _carname:" + myCar._carname);
// myCar.carname = "hehe"; // 如需使用 setter，请使用与设置属性值相同的语法，不带括号
// console.log("carname:" + myCar.carname + " _carname:" + myCar._carname);

// Hoisting
// 与函数和其他 JavaScript 声明不同，类声明不会被提升。
// 这意味着您必须先声明类，然后才能使用它：
// let myCar = new Car("Ford"); // 您还不能使用该类。 // This would raise an error. // Uncaught ReferenceError: Cannot access 'Car' before initialization
// class Car {
//     constructor(brand) {
//         this.carname = brand;
//     }
// }
// 现在您可以使用该类：
// let myCar = new Car("Ford");
// 注释：对于其他声明，如函数，在声明之前尝试使用它时不会出错，因为 JavaScript 声明的默认行为是提升（将声明移到顶部）。


// JS 类继承 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JS Static ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// static 类方法是在类本身上定义的。
// 您不能在对象上调用 static 方法，只能在对象类上调用。
// class Car {
//     constructor(name) {
//         this.name = name;
//     }
//     static hello() {
//         return "Hello!";
//     }
// }
// let myCar = new Car("Ford");
// var str = Car.hello();
// console.log(str);
// 但不能在 Car 对象上调用：
// var str1 = myCar.hello(); // 此举将引发错误。
// console.log(str1);

// 如果要在 static 方法中使用 myCar 对象，可以将其作为参数发送：
// class Car {
//     constructor(name) {
//         this.name = name;
//     }
//     static hello(x) {
//         return "Hello " + x.name;
//     }
// }
// let myCar = new Car("Ford");
// var str1 = Car.hello(myCar);
// console.log(str1);

// JS Static ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>