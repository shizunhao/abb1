//1:引入第三方模块
const express = require("express");
// 上传图片
const fs=require('fs');
const multer=require('multer')

const cors = require("cors");
const bodyParser=require("body-parser")
const session = require("express-session");
const detailsRouter=require("./routers/details.js");
const indexRouter=require("./routers/index.js");
const addRouter=require("./routers/add.js");
const searchRouter=require("./routers/search.js");
const searchdisRouter=require("./routers/searchdis.js");
const userRouter=require("./routers/user.js");
const storyRouter=require("./routers/story.js");
const useRouter=require("./routers/use.js");
//2:配置第三方模块
 //2.2:跨域
var server = express();
server.use(cors({
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
   credentials:true
}))
 //2.3:session
server.use(session({
  secret:"128位字符串",
  resave:true,
  saveUninitialized:true
}))
 //指定静态目录
server.use(express.static("public"))
 //指定图片目录
server.use(express.static("upload"))
 //创建body中间件
server.use(bodyParser.urlencoded({
 	extended:false
 }));
 
 //上传图片--创建目录  
 var createFolder = function(folder){
   try{
     fs.accessSync(folder); 
    }catch(e){
      fs.mkdirSync(folder);
    }  
  };
  // 指定目录
  var uploadFolder = './upload/';
  createFolder(uploadFolder);
  
  // 通过 filename 属性定制
  var storage = multer.diskStorage({
    //目标:目录
    destination: function (req, file, cb) {
      cb(null, uploadFolder);    // 保存的路径，备注：需要自己创建
    },
    filename: function (req, file, cb) {
      // 将保存文件名设置为 字段名 + 时间戳，比如 logo-1478521468943
      var idx = file.originalname.lastIndexOf('.');
      var suff = file.originalname.substring(idx);
      cb(null, file.fieldname + '-' + Date.now()+suff);  
    }
  });
  
  // 通过 storage 选项来对 上传行为 进行定制化
  var upload = multer({ storage: storage })
  
  // 单图上传
  server.post('/upload', upload.single('img_main'), function(req, res, next){
    var file = req.file;
    res.send({ret_code: '0',img_url:file.path});
  });
  
  server.get('/form', function(req, res, next){
    var form = fs.readFileSync('./form.html', {encoding: 'utf8'});
    res.send(form);
  });
  
  
  server.listen(3000);



 //测试一下服务器端


server.use("/details",detailsRouter);
server.use("/index",indexRouter);
server.use("/add",addRouter);
server.use("/search",searchRouter);
server.use("/searchdis",searchdisRouter);
server.use("/user",userRouter);
server.use("/story",storyRouter);
server.use("/use",useRouter);

