package com.yuan.boot.Controller;

import java.text.ParseException;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.yuan.boot.util.OSSManageUtil;
import com.yuan.boot.util.RandomUtil;
@RestController
@RequestMapping("/upload")
public class UploadController {
	
	@RequestMapping("/oos.do")
    public String UploadVideo(MultipartFile file,HttpSession sesssion) throws ParseException {

        boolean flag = true;
        RandomUtil util = new RandomUtil();
        if (file != null) {
                try {String type = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1);
                    //String filePath = Resource + util.getTimeString() + util.getRandom(4) + "." + type;
                    
                    // 转存文件
                    //file.transferTo(new File(FilePath.RESOURCE_PATH+filePath));
                    String filePath=   new OSSManageUtil().uploadFile(file,"other");
                    return  filePath;
                    //得到新的文件名
                   // list.add(new Msg(size, FilePath.URL_PATH+filePath));
                } catch (Exception e) {
                    e.printStackTrace();
                    return  "上传失败";
                }
            
        } else {
        }
        return  "上传成功";
    }
 

}
