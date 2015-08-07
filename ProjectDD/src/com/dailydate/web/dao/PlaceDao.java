package com.dailydate.web.dao;

import java.util.List;

import com.dailydate.web.vo.Place;

public interface PlaceDao {
	
	public List<Place> getPlaces();
	/*public List<Place> getPlaces(String page);*/
	public Place getPlace(String code);
	public int addPlace(Place place);
	public int deletePlace(String code);
	public int editPlace(Place place);
	public String getLastCode();
	public List<Place> getPlaceSearched(String value);
}
