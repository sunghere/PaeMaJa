package com.pae.maja.controller;

import java.io.File;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class CKUploadController {
	private static final Logger logger = LoggerFactory.getLogger(CKUploadController.class);

	@RequestMapping(value = "imageUpload.do", method = { RequestMethod.GET, RequestMethod.POST })
	public void communityImageUpload(HttpServletRequest request, HttpServletResponse response,
			@RequestParam MultipartFile upload) {

		FileOutputStream out = null;
		PrintWriter printWriter = null;
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		try {

			String fileName = upload.getOriginalFilename();
			byte[] bytes = upload.getBytes();

			String uploadPath = request.getSession().getServletContext().getRealPath("/upload/" + fileName);// 저장경로
			// String uploadPath = "C:/upload/"+fileName;

			out = new FileOutputStream(new File(uploadPath));
			out.write(bytes);
			String callback = request.getParameter("CKEditorFuncNum");
			logger.info("Welcome CKUploadController upload------------------------------------------" + fileName);

			printWriter = response.getWriter();
			// String fileUrl =
			// request.getHeader("Referer").substring(0,request.getHeader("Referer").lastIndexOf("/"))+"/upload/"
			// + fileName; // url경로
			String fileUrl = "upload/" + fileName; // url경로

			printWriter.println("<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction(" + callback
					+ ",'" + fileUrl + "','이미지를 업로드 하였습니다.'" + ")</script>");
			printWriter.flush();

		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (out != null) {
					out.close();
				}
				if (printWriter != null) {
					printWriter.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		return;
	}
}
