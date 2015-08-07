package com.dailydate.web.dao;

import java.util.List;

import com.dailydate.web.vo.Member;

public interface MemberDao {

	public List<Member> getMembers(
			int page,
			String field,
			String query);
	
	public List<Member> getMembers(int page);
	public List<Member> getMembers();
	
	public Member getMember(String id);

	public int addMember(Member member);

	public int updateMember(String id);
	
	public int removeMember(String id);
	

}
