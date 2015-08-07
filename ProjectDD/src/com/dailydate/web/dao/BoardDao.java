package com.dailydate.web.dao;

import java.util.List;

import com.dailydate.web.vo.Board;

public interface BoardDao {
   
   public List<Board> getBoards(
         int page,
         String field,
         String query); 
   
   public Board getBoard(String code);
   
   public int addBoard(Board board);
   
   public int removeBoard(String code);
   
   public int updateBoard(String code);
   
   public int hitsCount(Board board);
}