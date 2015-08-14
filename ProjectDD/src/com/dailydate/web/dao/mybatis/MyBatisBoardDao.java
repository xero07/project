package com.dailydate.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.BoardDao;
import com.dailydate.web.vo.Board;


public class MyBatisBoardDao implements BoardDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public List<Board> getBoards(int page, String field, String query) {
	    BoardDao dao = session.getMapper(BoardDao.class);
	      
	    return dao.getBoards(1, "Title", "");
	}

	@Override
	public Board getBoard(String code) {
	    BoardDao dao = session.getMapper(BoardDao.class);
	    
		return dao.getBoard(code);
	}

	@Override
	public int addBoard(Board board) {
		 
	      int result = 0;
	      BoardDao dao = session.getMapper(BoardDao.class);
	      
	      result = dao.addBoard(board);
	      /*   try{
	            session.commit();
	         }
	         finally{
	            session.rollback();
	            session.close();
	         }*/
	         return result;
	}

	@Override
	public int removeBoard(String code) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBoard(String code) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int hitsCount(Board board) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

}
