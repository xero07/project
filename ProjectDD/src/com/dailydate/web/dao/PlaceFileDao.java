package com.dailydate.web.dao;

import com.dailydate.web.vo.PlaceFile;

public interface PlaceFileDao {
	public PlaceFile getPlaceFile(String placeCode);
	public int addPlaceFile(PlaceFile placeFile);

}
