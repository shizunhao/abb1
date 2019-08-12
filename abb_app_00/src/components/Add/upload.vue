<template>
<div>
    <div class="upload-demo dropbox">
            <div class="upload upload--text">
                <div class="upload-dragger">
                    <div  v-show="files.length===0">
                        <!--<form action="http://127.0.0.1:3000/form" method="get" enctype="multipart/form-data">
                        <input class="_1sa65a7" type="file" id="photo_image" name="image" accept="image/jpg, image/jpeg, image/png, image/gif" multiple=""   @change="selectImg($event)">
                        </form>-->
                        <div class="icon-upload">
                            <svg t="1565342133356" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1163" width="128" height="128"><path d="M885.07 438.93a243.61 243.61 0 0 0-131.55-68.42 245.08 245.08 0 0 0-483 0 243.61 243.61 0 0 0-131.55 68.42C92.54 485.32 67 546.78 67 612s25.54 126.68 71.93 173.07S246.78 857 312 857h204.71a45 45 0 0 0 45-45V640.64L598 677a45 45 0 0 0 63.64-63.64L548.52 500.18l-0.09-0.09c-0.5-0.49-1-1-1.51-1.44l-0.84-0.73-0.83-0.71c-0.35-0.29-0.71-0.56-1.07-0.84l-0.65-0.5c-0.39-0.29-0.79-0.57-1.19-0.85l-0.59-0.41c-0.42-0.28-0.83-0.54-1.25-0.8-0.2-0.13-0.4-0.26-0.61-0.38-0.41-0.25-0.82-0.48-1.24-0.71l-0.68-0.39c-0.4-0.21-0.79-0.41-1.19-0.6l-0.8-0.4-1.1-0.5-1-0.41-1-0.38q-0.56-0.23-1.11-0.42c-0.29-0.11-0.57-0.2-0.86-0.29l-1.26-0.41-0.76-0.22-1.37-0.37-0.71-0.16-1.44-0.32-0.71-0.12c-0.48-0.09-1-0.18-1.45-0.25l-0.81-0.1c-0.45-0.06-0.9-0.12-1.35-0.16s-0.72-0.06-1.09-0.08-0.73-0.07-1.11-0.08c-0.68 0-1.36-0.05-2-0.06h-0.34c-0.68 0-1.36 0-2 0.06-0.38 0-0.75 0.05-1.12 0.08s-0.72 0-1.08 0.08-0.9 0.1-1.35 0.16l-0.81 0.1c-0.49 0.07-1 0.16-1.45 0.25l-0.71 0.12-1.45 0.32-0.69 0.16-1.39 0.38c-0.25 0.07-0.5 0.13-0.75 0.21l-1.27 0.41-0.84 0.28-1.13 0.43-1 0.38c-0.33 0.13-0.65 0.28-1 0.42l-1.08 0.49-0.82 0.4-1.17 0.6-0.7 0.39c-0.41 0.23-0.82 0.46-1.23 0.71-0.21 0.12-0.41 0.26-0.62 0.39-0.41 0.26-0.83 0.51-1.23 0.79-0.21 0.13-0.41 0.28-0.61 0.42-0.39 0.27-0.79 0.55-1.18 0.84l-0.66 0.51-1.06 0.83-0.85 0.73c-0.27 0.24-0.55 0.47-0.81 0.71-0.53 0.47-1 1-1.54 1.46l-0.08 0.07-0.09 0.1c-0.49 0.49-1 1-1.44 1.51l-0.72 0.84c-0.24 0.27-0.48 0.54-0.71 0.82l-0.37 0.46-109.75 109.81a45 45 0 0 0 63.64 63.64L471.71 641v126H312c-85.47 0-155-69.53-155-155s69.53-155 155-155h45v-45c0-85.47 69.53-155 155-155s155 69.53 155 155v45h45c85.47 0 155 69.53 155 155s-69.53 155-155 155a45 45 0 0 0 0 90c65.22 0 126.69-25.55 173.07-71.93S957 677.22 957 612s-25.54-126.68-71.93-173.07z" fill="#008489" p-id="1164"></path></svg>
                        </div>
                        <div class="upload__text p_font1">上传图片或者把它们拖进框内</div>
                    </div>
                    <div  v-show="files.length>0" class="div_img_upload">
                        <ul>
                            <li   v-for="(url,i) of img_url" :key="i" class="li_img_delete">
                                <img :src="`http://127.0.0.1:3000/${url}`" alt="">
                                <div class="img_delete" @click="delete_img(url,i)">
                                    <svg t="1565353535576" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3590" width="32" height="32"><path d="M512 0C230.4 0 0 230.4 0 512s230.4 512 512 512 512-230.4 512-512S793.6 0 512 0z m192 768L512 576 320 768 256 704l192-192-192-192 64-64 192 192 192-192 64 64-192 192 192 192-64 64z" fill="#008489" p-id="3591"></path></svg>
                                </div>
                            </li>
                            
                        </ul>
                        
                    </div>
                </div>
            </div>
    </div>
</div>
</template>
<script>
export default {//组件默认导出对象 
     data(){
       return {
           files: [],
           img_url:[]
       }  //组件操作数据 
     },
        methods: {
            delete_img(url,i){
                // console.log(url)
                url=`./upload/${url}`
                // console.log(url)
                //发请求让服务器删文件
                this.axios.get("http://127.0.0.1:3000/add/deleteImg",{params:{'img':url}}).then(result=>{
                    // console.log(result.data)
                    if(result.data.code==1){
                        this.img_url.splice(i,1)
                        this.files.splice(i,1)  
                        let imgs=this.img_url.join(',')
                         this.$emit('img',imgs)
                    }
                })
                
                
            },
            uploadFile: function (file) {
                var item = {
                    name: file.name,
                    uploadPercentage: 0
                };
                this.files.push(item);
                var fd = new FormData();
                fd.append('img_main', file);

                var xhr = new XMLHttpRequest();
                xhr.open('POST', 'http://127.0.0.1:3000/upload', true);
                xhr.upload.addEventListener('progress', function (e) {
                    item.uploadPercentage = Math.round((e.loaded * 100) / e.total);
                }, false);
                xhr.send(fd);
                xhr.onreadystatechange=()=>{
				if(xhr.readyState==4 && xhr.status==200){
					var result=xhr.responseText;
                    var arr=JSON.parse(result);
                    var url=arr.img_url.slice(7)
                    this.img_url.push(url) 
					// console.log(this.img_url);
				}
                let imgs=this.img_url.join(',')
                this.$emit('img',imgs)
			}

            },
            onDrag: function (e) {
                e.stopPropagation();
                e.preventDefault();
            },
            onDrop: function (e) {
                e.stopPropagation();
                e.preventDefault();
		//在进行拖放操作时，DataTransfer 对象用来保存，通过拖放动作，拖动到浏览器的数据
                var dt = e.dataTransfer;
                for (var i = 0; i !== dt.files.length; i++) {
		   //循环上传多个文件
                    this.uploadFile(dt.files[i]);
                }
            }
        },
        mounted: function () {
	    //获取父元素 为拖动目录元素绑定事件
            var dropbox = document.querySelector('.dropbox');
	    //拖动进入 拖动 悬停 阻止事件默认行为
            dropbox.addEventListener('dragenter', this.onDrag, false);
            dropbox.addEventListener('dragover', this.onDrag, false);
            dropbox.addEventListener('drop', this.onDrop, false);
        }
  }
</script>
<style  scoped>
    .icon-upload{
        margin: 81px 0 16px !important;
        text-align:center;
    }
    .upload-demo>.upload {
        width: 100%;
        height: 350px;
    }

    .upload-demo>.upload>.upload-dragger {
        width: 100%;
        height: 350px;
        border-radius: 6px;
        border: 2px dashed #008489;

    }


    .p_font1 {
        font-size: 19px !important;
        font-weight: bold;
        text-align: center;
        line-height: 1.43;
        color: #484848 !important;
        position:
    }
    .div_img_upload{
        overflow:auto;
        height:350px;
    }
    .div_img_upload li{
        float:left;
        margin:5px;
    }
    .div_img_upload li p{
        text-align:center;
        font-size:24px;
    }
    .div_img_upload img{
        height:309px;
        width:auto;
    }
    .li_img_delete{
        position:relative;
    }
    .img_delete{
        position:absolute;
        top:0px;
        right:0px;
        cursor:pointer;
    }
</style>