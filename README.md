# Empty Wat Project

####Аргументы(param) Отдельно
```wasm
func $add (param $lhs i32) (param $rhs i32) 
```

####OPCODE - сложить параметры
```wasm
i32.add
```

####Вызов через JS в браузере
```js
fetch('../out/main.wasm').then(response =>
    //response.arrayBuffer() promise
response.arrayBuffer()
    //WebAssembly.instantiate(bytes) - инциализировать WebAssembly
).then(bytes => WebAssembly.instantiate(bytes)).then(results => {
instance = results.instance;
//Вызов самой функции из WebAssembly
document.getElementById("container").textContent = instance.exports.add(1,1);
}).catch(console.error);
```