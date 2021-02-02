package com.zeyfintravel.webapp.controller;



import com.zeyfintravel.webapp.utils.CommonUtil;
import com.zeyfintravel.webapp.utils.MediaTypeUtils;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

@RestController
@RequestMapping("/file")
@AllArgsConstructor
public class FileController {


    private ServletContext servletContext;


    //@GetMapping("/show/{imgname:.+}")
    @RequestMapping(value = "/cert/{imgname:.+}", method = RequestMethod.GET)
    public void downloadFile3(HttpServletResponse resonse, @PathVariable(value = "imgname") String fileName) throws IOException {

        MediaType mediaType = MediaTypeUtils.getMediaTypeForFileName(this.servletContext, fileName);


        File file = new File(CommonUtil.getFileDir(), fileName);

        // Content-Type
        // application/pdf
        resonse.setContentType(mediaType.getType());

        // Content-Disposition
        resonse.setHeader(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=" + file.getName());

        // Content-Length
        resonse.setContentLength((int) file.length());

        BufferedInputStream inStream = new BufferedInputStream(new FileInputStream(file));
        BufferedOutputStream outStream = new BufferedOutputStream(resonse.getOutputStream());

        byte[] buffer = new byte[1024];
        int bytesRead = 0;
        while ((bytesRead = inStream.read(buffer)) != -1) {
            outStream.write(buffer, 0, bytesRead);
        }
        outStream.flush();
        inStream.close();
    }


    /**public ResponseEntity<byte[]> getCert(@PathVariable(value = "imgname") String imagename) throws IOException {
        File img = new File(CommonUtil.getFileDir()+File.separator +imagename);
        return ResponseEntity.ok().
                contentType(MediaType.valueOf(FileTypeMap.getDefaultFileTypeMap().
                        getContentType(img))).
                body(Files.readAllBytes(img.toPath()));
    }*/



}
