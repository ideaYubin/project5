package com.spring.pro29.ex02;

import java.util.ArrayList;
import java.util.logging.Logger;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.sun.tools.javac.util.List;

@RestController
@RequestMapping("/boards")
public class BoardController {
	static Logger logger = Logger.getLogger(BoardController.class);
	
	@RequestMapping(value="/all", method=RequestMethod.GET)
	public ResponseEntity<List<ArticleVO>> listArticles() {
		logger.info("listArticles 메서드 호출");
		List<ArticleVO> list = new ArrayList<ArticleVO>();
		for(int i=0; i<10; i++) {
			ArticleVO vo = new ArticleVO();
			vo.setArticleNO(i);
			vo.setWriter("이순신" + i);
			vo.setTitle("안녕하세요" + i);
			vo.setContent("새 상품을 소개합니다." + i);
			list.add(vo);
		}
		return new ResponseEntity(list, HttpStatus.OK);
	}
	
	@RequestMapping(value="/{articleNO}", method=RequestMethod.GET)
	public ResponseEntity<ArticleVO> findArticle(
			@PathVariable("articleNO") Integer articleNO) {
		logger.info("findArticle 메서드 호출");
		
	}
	

}
