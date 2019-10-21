/**
 * 读取文件
 * @param {file or Blob} file 上传文件
 * @param {object} config 压缩配置 可配置压缩长宽、质量等
 * @param {function} callback
 */
function imageCompress(file, config, callback){
    var ready = new FileReader();
    ready.readAsDataURL(file);

    ready.onload=function(){
        canvasDataURL(this.result, config, callback)
    }
}

/**
 *
 * @param {string} path
 * @param {object} config  -- {width: '', height: '', quality: 0.7}
 * @param {function} callback
 */
function canvasDataURL(path, config, callback){
    var img = new Image();
    img.src = path;

    img.onload = function(){
        var that = this, quality = 0.7;
        var w = that.width, h = that.height, scale = w / h;
        w = config.width || w;
        h = config.height || (w / scale);

        //生成canvas
        var canvas = document.createElement('canvas');
        var ctx = canvas.getContext('2d');
        var anw = document.createAttribute("width");
        anw.nodeValue = w;
        var anh = document.createAttribute("height");
        anh.nodeValue = h;
        canvas.setAttributeNode(anw);
        canvas.setAttributeNode(anh);
        ctx.drawImage(that, 0, 0, w, h);

        if(config.quality && config.quality <= 1 && config.quality > 0){
            quality = config.quality;
        }
        callback(canvas.toDataURL('image/jpeg', quality));
    }
}

/**
 * 将图片 base64 转为 File 对象或者 Blob
 * @param {*} urlData 图片 base64
 * @param {*} filename 图片名 没有图片名将转为 Blob
 */
function convertBase64UrlTo(urlData, filename = null){
    var base64Arr = urlData.split(','), mime = base64Arr[0].match(/:(.*?);/)[1],
        bstr = atob(base64Arr[1]), n = bstr.length, u8arr = new Uint8Array(n);
    while(n--){
        u8arr[n] = bstr.charCodeAt(n);
    }

    return filename ? new File([u8arr], filename, {type:mime}) : new Blob([u8arr], {type:mime});
}