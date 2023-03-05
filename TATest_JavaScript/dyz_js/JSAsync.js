console.log("JS Async");

// JS 回调 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// 函数序列
// JavaScript 函数按照它们被调用的顺序执行。而不是以它们被定义的顺序。

// 顺序控制

// JavaScript 回调


// JS 回调 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


// JS 异步 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// 异步 JavaScript

// 等待超时
// 在使用 JavaScript 函数 setTimeout() 时，可以指定超时时执行的回调函数：
// function myFunction() {
//     console.log("执行了1");
// }
// console.log("开始执行");
// // setTimeout(myFunction, 3000);
// setTimeout(function () {
//     console.log("执行了2");
// }, 3000);
// console.log("结束执行");

// 等待间隔
// 在使用 JavaScript 函数 setInterval() 时，可以指定每个间隔执行的回调函数：
// function myFunction() {
//     console.log("执行了1");
// }
// console.log("开始执行");
// // setInterval(myFunction, 3000);
// setInterval(function () {
//     console.log("执行了2");
// }, 3000);
// console.log("结束执行");

// 等待文件
// function myDisplayer(some) {
//     console.log("来了"+some);
// }
// function getFile(myCallback) {
//     let req = new XMLHttpRequest();
//     req.open('GET', "file:///Users/thinkingdata-yazhou/Desktop/td_yazhou/TATest/TATest_JavaScript/dyz_resource/mycar.html");
//     req.onload = function() {
//         if (req.status == 200) {
//             myCallback(this.responseText);
//         } else {
//             myCallback("Error:" + req.status);
//         }
//     }
//     req.send()
// }
// getFile(myDisplayer);// 有点问题，以后看

// JS 异步 ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



// JS Promise ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

// JavaScript Promise 对象
// JavaScript Promise 对象包含生产代码和对消费代码的调用：
// Promise 语法
// let myPromise = new Promise(function(myResolve, myReject) {
//     // "Producing Code"（可能需要一些时间）
//     console.log("Producing Code（可能需要一些时间）");

//     myResolve(); // 成功时
//     myReject(); // 出错时

// });
// // "Consuming Code" （必须等待一个兑现的承诺）
// console.log("Consuming Code （必须等待一个兑现的承诺）");
// myPromise.then(
//     function(value) {
//         /* 成功时的代码 */ 
//         console.log("成功时的代码");
//     },
//     function(error) {
//         /* 出错时的代码 */
//         console.log("出错时的代码");
//     }
// );



// JS Promise ==========================================>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>