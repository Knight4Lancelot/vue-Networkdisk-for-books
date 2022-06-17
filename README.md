# AppDesign3
### 初始化需要的命令
#### 1、安装Element-UI
```
npm i element-ui -S
```
#### 2、需要vue-router
#### 3、需要transition组件
#### 4、安装mysql
```
npm install mysql
```
#### 5、需要axios
```
npm install axios
```
### 6、需要express
```
npm install express
```

#### 进入server目录：1、初始化
 ```
 npm i
 ```
#### 进入server目录：2、运行后端服务器
```
node index
```


### 需要修改的部分：
#### 1、./server/utils目录下的db.js文件，修改自己的数据库连接配置
#### 2、将appdesign.sql文件转储到本地数据库后，pdf_list、doc_list、txt_list的url按照自己的需要进行修改本地存放文件的位置，并且在这个路径下的文件命名规则为"书名.文件类型"，例如数学书的txt文件就要改名为"数学.txt"
#### 3、与appdesign.sql匹配的书本文件都存放于PublishFiles文件夹中，只需放在与上一条说的三个list表中的url匹配的位置即可
测试数据：89本书，均无存储内容
![图片](https://user-images.githubusercontent.com/65166118/174237631-81be97d2-6d70-4d4d-a5dd-e8b1d4c523a3.png)
![图片](https://user-images.githubusercontent.com/65166118/174237671-c4cd0f36-887c-4b1b-9a76-f620e7b2d583.png)
![图片](https://user-images.githubusercontent.com/65166118/174237743-9d90dabc-1b53-4daf-9962-7b8e0d8b11ce.png)

