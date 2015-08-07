package com.dailydate.web.dao.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.dailydate.web.dao.MemberDao;
import com.dailydate.web.vo.Member;

public class MyBatisMemberDao implements MemberDao {

	@Autowired
	private SqlSession session;

	@Override
	public List<Member> getMembers(int page, String field, String query) {
		MemberDao dao = session.getMapper(MemberDao.class);

		return dao.getMembers(1, "", "");
	}

	@Override
	public List<Member> getMembers(int page) {
		return getMembers(1, "", "");
	}

	@Override
	public List<Member> getMembers() {
		return getMembers(1, "", "");
	}

	@Override
	public Member getMember(String id) {
		MemberDao dao = session.getMapper(MemberDao.class);

		return dao.getMember(id);
	}

	@Override
	public int addMember(Member member) {
		int result = 0;

		MemberDao dao = session.getMapper(MemberDao.class);
		result = dao.addMember(member);
		/*
		 * try{ MemberDao dao = session.getMapper(MemberDao.class); result =
		 * dao.addMember(member); session.commit(); } finally{
		 * session.rollback(); session.close(); }
		 */
		return result;
	}

	@Override
	public int updateMember(String id) {
		int result = 0;
		try {
			MemberDao dao = session.getMapper(MemberDao.class);
			result = dao.updateMember(id);
			session.commit();
		} finally {
			session.rollback();
			session.close();
		}
		return result;
	}

	@Override
	public int removeMember(String id) {
		MemberDao dao = session.getMapper(MemberDao.class);

		return dao.removeMember(id);
	}
}
