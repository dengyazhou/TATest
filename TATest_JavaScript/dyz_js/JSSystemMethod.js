
console.log("JS 系统方法");

// JS valueOf() ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// JavaScript 中的 valueOf() 方法用于返回指定对象的原始值，若对象没有原始值，则将返回对象本身。通常由JavaScript内部调用，而不是在代码中显式调用。
// 默认情况下，valueOf 方法由 Object 后面的每个对象继承。 每个内置的核心对象都会覆盖此方法以返回适当的值。
// JavaScript 的许多内置对象都重写了该函数，以实现更适合自身的功能需要。因此，不同类型对象的 valueOf() 方法的返回值和返回值类型均可能不同。

// 不同类型对象的 valueOf() 方法的返回值：
// Array：返回数组对象本身。
// Boolean： 返回布尔值
// Date：存储的时间是从 1970 年 1 月 1 日午夜开始计的毫秒数 UTC。
// Function： 返回函数本身。
// Number： 返回数字值。
// Object：返回对象本身。这是默认情况。
// String：返回字符串值。
// Math 和 Error 对象没有 valueOf 方法。


// Array：返回数组对象本身
// var array = ["ABC", true, 12, -5];
// console.log(array.valueOf() === array);   // true
// console.log(array);
// console.log(array.valueOf());

// Date：当前时间距1970年1月1日午夜的毫秒数
// Sun Aug 18 2013 23:11:59 GMT+0800 (中国标准时间)
// var date = new Date(2013, 7, 18, 23, 11, 59, 230); 
// console.log(date.valueOf() === date); // false
// console.log(date.valueOf());   // 1376838719230

// Number：返回数字值
// var num =  15.26540; // 15.2654
// console.log(num.valueOf()) // 15.2654
// console.log(num.valueOf() === num);   // true

// // 布尔：返回布尔值true或false
// var bool = true;
// console.log(bool.valueOf() === bool);   // true

// new一个Boolean对象
// var newBool = new Boolean(true); // Boolean {true}
// newBool.valueOf() // true
// valueOf()返回的是true，两者的值相等
// console.log(newBool.valueOf() == newBool);   // true
// 但是不全等，两者类型不相等，前者是boolean类型，后者是object类型
// console.log(newBool.valueOf() === newBool);   // false


// // Function：返回函数本身
// function foo(){}
// console.log( foo.valueOf() === foo );   // true

// var foo2 =  new Function("x", "y", "return x + y;");
// console.log( foo2.valueOf() === foo2); // true
// /*
// ƒ anonymous(x,y) {
// return x + y;
// }
// */

// // Object：返回对象本身
// var obj = {name: "张三", age: 18};
// console.log( obj.valueOf() === obj );   // true

// // String：返回字符串值
// var str = "http://www.xyz.com";
// console.log( str.valueOf() === str );   // true

// // new一个字符串对象
// // String {"http://www.xyz.com"}
// var str2 = new String("http://www.xyz.com"); 
// str2.valueOf() // "http://www.xyz.com"
// // 两者的值相等，但不全等，因为类型不同，前者为string类型，后者为object类型
// console.log( str2.valueOf() === str2 );   // false

// JS valueOf() ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JS Date() ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var d = new Date();
// console.log(d);
// var len = d.getTime();
// console.log(len);
// var offset = d.getTimezoneOffset() * 60000;
// console.log(offset);
// var utcTime = len + offset;
// console.log(utcTime);

// var utcD = new Date(utcTime + 3600000)





// JS Date() ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// JS toJSON() ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// var d=new Date();
// var n=d.toJSON();
// console.log(n);

// JS toJSON() ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JS arrayObj slice ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>、

// slice()通过索引位置获取新的数组，该方法不会修改原数组，只是返回一个新的子数组。
// 用法：arrayObj.slice(start,end)
// arrayObj - 原始数组;
// start - 必填；设定新数组的起始位置；如果是负数，则表示从数组尾部开始算起（-1
// 指最后一个元素，-2 指倒数第二个元素，以此类推）。
// end - 可选；设定新数组的结束位置；如果不填写该参数，默认到数组结尾；如果是负数，则表示从数组尾部开始算起（-1 指最后一个元素，-2
// 指倒数第二个元素，以此类推）。
// 例1：获取仅包含最后一个元素的子数组
// var arr=[1,2,3,4,5];
// var arr0 = arr.slice(-1);//[5]
// console.log(arr0);
// 例2：获取不包含最后一个元素的子数组
// var arr=[1,2,3,4,5];
// var arr1 = arr.slice(0, -1);//[1,2,3,4]
// console.log(arr1);
// 例3：获取包含 从第二个元素开始的所有元素的子数组
// var arr=[1,2,3,4,5];
// var arr2 = arr.slice(1);//[2,3,4,5]
// console.log(arr2);

// JS arrayObj slice ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// JS string slice ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// slice(start?: number, end?: number): string;

// var str = '123456789ABCDEFG';
// var retStr = str.slice(1,4);//开始的下标，到结束的下标
// var retStr = str.slice(2);//没有结束的下标那就是 到最后
// console.log(retStr);

// JS string slice ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

//  Array.splice ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var arr = ["AA", "bb", "CC", "dd", "EE"];
// console.log(arr);
// arr.splice(3,1);//从第一个下标开始，删除几个元素
// arr.splice(3,1,"JJ","KK");//从第一个下标开始，删除几个元素
// console.log(arr);
//  Array.splice ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// JS Array join ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// join 把数组里面的内容拼接为字符串
// var arr = [1,2,3,4,5];
// console.log(arr);
// var str = arr.join("-");
// console.log(str);
// JS Array join ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// JS indexOf.call ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// function indexOfDyz(arr, target) {
//     var indexof = arr.indexOf;
//     console.log(indexof);
//     if (indexof) {
//         return indexof.call(arr, target);//有值的话就返回值的下标，没有的话就返回-1
//     }
// }

// var arr = ["aa","bb","CC","dd","EE"];//
// var arr = "AABBCC";//字符串 也可以用
// var index = indexOfDyz(arr, "CC");
// console.log(index);
// JS indexOf.call ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// JS 对象添加属性 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var person = {
//     "name": "dengyazhou",
//     "car": "XT5"
// };
// person['age'] = 26;//给对象添加age属性
// person["age1"] = 27;//给对象添加age1属性
// person.age2 = 28;//给对象添加age2属性
// for (const key in person) {
//     console.log("key:" + key + " value:" + person[key]);
// }
// JS 对象添加属性 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// toString.call ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var typeValue = {}; //[object Object]
// var typeValue = "上海SH"; //[object String]
// var typeValue = new String("abc"); //[object String]
// var typeValue = []; //[object Array]
// var typeValue = new Date(); /[object Date]
// var typeValue = true; //[object Boolean]
// var typeValue = new Boolean(true); //[object Boolean]
// var typeValue = 12; // [object Number]
// console.log(typeValue);
// var typeValueStr = Object.prototype.toString.call(typeValue);
// console.log("typeValueStr：" + typeValueStr);
// if (typeValueStr === '[object Object]') {
//     console.log("typeValueStr 是 [object Object]");
// } else if (typeValueStr === '[object String]') {
//     console.log("typeValueStr 是 [object String]");
// } else if (typeValueStr === '[object Array]') {
//     console.log("typeValueStr 是 [object Array]");
// } else if (typeValueStr === '[object Date]') {
//     console.log("typeValueStr 是 [object Date]");
// } else if (typeValueStr === '[object Boolean]') {
//     console.log("typeValueStr 是 [object Boolean]");
// } else if (typeValueStr === '[object Number]') {
//     console.log("typeValueStr 是 [object Number]");
// } else {
//     console.log("typeValueStr 是 Other");
// }
// toString.call ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// toString(X) Number类型转 X进制，返回字符串 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// console.log("toString");
// var num = 18;
// var str16 = num.toString(16);//Number类型转 16进制，返回字符串
// console.log(str16);
// var str8 = num.toString(8);//Number类型转 8进制，返回字符串
// console.log(str8);
// var str2 = num.toString(2);//Number类型转 2进制，返回字符串
// console.log(str2);
// toString(X) Number类型转 X进制，返回字符串 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// Math.random() 随机数 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var num = Math.random()
// console.log(num);// 例如 0.9103551301751367

// var num2 = Math.random().toString(16).replace('.', '');
// console.log(num2);

// var num3 = (String(Math.random()) + String(Math.random()) + String(Math.random())).slice(2, 15);
// console.log(num3);
// Math.random() 随机数 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// String replace 替换 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var str = "1.222";
// var repla = str.replace(".","AAA");//用AAA 替换 点
// console.log(repla);
// String replace 替换 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// navigator.userAgent ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var ua = navigator.userAgent;
// console.log(ua);

// for (i = 0; i < ua.length; i++) {
//     var ch = ua.charCodeAt(i);
//     console.log(ch);
// }
// navigator.userAgent ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// screen.height screen.width ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// console.log(screen.height);
// console.log(screen.width);
// var se = String(screen.height * screen.width);
// console.log(se);
// screen.height screen.width ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// in 判断对象中 是否 有 该属性 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var person = {
//     "name": "dengyazhou",
//     "car": "XT5"
// };
// if ("car" in person) {
//     console.log("person 中有 car 属性")
// } else {
//     console.log("person 中没有 car 属性")
// }
// in 判断对象中 是否 有 该属性 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// JSON.stringify 对象转json ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var person = {
//     name : 'dnegyazhou',
//     age : 23,
//     car : "XT5"
// };
// console.log(person);
// console.log("===>>> " + person);// 转成字符串了
// var str = JSON.stringify(person);
// // var str = JSON.stringify(person, null, 8);//8空格数
// console.log("JSON string: " + str);

// JSON.stringify 对象转json ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// JSON.parse json转对象 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// function safeJSONParse(str) {
//     var val = null;
//     try {
//         val = JSON.parse(str);
//     } catch (e) {
//         return "错误";
//     }
//     return val;
// }

// var str = "[\"aaa\",\"bbbb\"]";//字符串 转 数组
// var str = "{\"name\":\"邓亚洲\", \"age\":23}";//字符串 转 对象
// var str = "{name:\"邓亚洲\", age:23}";//这个结构不对，key也需要带引号
// console.log(str);
// var obj = safeJSONParse(str);
// console.log(obj);

// JSON.parse json转对象 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// console ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// console.log(console);
// console.debug("==>>: debug");
// console.error("==>>: error");
// console.info("==>>: info");
// console.log("==>>: log");
// console.warn("==>>: warn");

// console ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// window.location.toString() ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// var path = window.location.toString();
// console.log(path);

// window.location.toString() ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// substring 字符串截取 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// 下标从零开始，
// var str = "1234567";
// // var strSub = str.substring(1,3);
// var strSub = str.substring(1);//没有结束下标的，直接到最后
// console.log(strSub);
// substring 字符串截取 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// toLowerCase 大写变小写 、toUpperCase 小写变大写==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var str = "AbcDe";
// var strRet = str.toLowerCase();
// var strRet = str.toUpperCase();
// console.log(strRet);

// toLowerCase 大写变小写 、toUpperCase 小写变大写==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// 定时器 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// batchInterval 多少毫秒后执行
// self.timer = setTimeout(function() {
//     console.log("定时器执行");
// }, 3000);//6秒

// clearTimeout 停止 没有执行的延迟调用
// clearTimeout(self.timer);

// 定时器，延迟调用自己调用自己，就成定时器了
// function batchInterval() {
//     self.timer = setTimeout(function () {
//         console.log("定时器执行");

//         // clearTimeout(self.timer);

//         batchInterval();
//     },1000);
// }

// batchInterval();

// 定时器 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// indexOf ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// indexOf 更具内容找下标，找不到则为-1
// var str = "ABCDEF";
// var index = str.indexOf("E");
// console.log(index);

// indexOf ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// push 数组 添加元素 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// var array = [];
// console.log(array);
// array.push("AAA");
// array.push("BBB");
// console.log(array);
// push 数组 添加元素 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>