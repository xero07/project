package com.dailydate.web.dao;

import java.util.List;

import com.dailydate.web.vo.PlaceComment;

public interface PlaceCommentDao {
	public List<PlaceComment> getPlaceComments(String placeCode);
	public int addPlaceComment(PlaceComment placeComment);
}
