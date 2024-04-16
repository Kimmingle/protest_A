package org.pung.ctrl.notice;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.pung.dao.NoticeDAO;
import org.pung.dto.Notice;

// 공지사항 목록 띄울거임
@WebServlet("/NotiList.do")
public class NoticeListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
    
    public NoticeListCtrl() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); //인코딩부터
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		// 다오 객체 생성하고 
		NoticeDAO dao = new NoticeDAO();
		// 어레이 리스트 만들어서 담을 준비 (notice로 담아야함)
		List<Notice> notiList = new ArrayList<>();
		//다오에서 받고 리스트에 담음
		notiList = dao.getNoticeList();  //내가 생성한 dao객체에 메소드 호출해서 다오로 넘어감
		request.setAttribute("notiList", notiList);  //이거 왜 해줌?-다오에서 리스트 받아온거를 보낼려고 다시 이름 지정하는건가
		RequestDispatcher view = request.getRequestDispatcher("/notice/noticeList.jsp");  //RequestDispatcher를 굳이 써야하는 이유
		view.forward(request, response);  //뷰를 넘겨줌
		
	}
}
