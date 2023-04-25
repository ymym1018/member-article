package com.spring.pro03.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.pro03.member.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List selectAllMemberList() throws DataAccessException{
		List<MemberVO> membersList = null;
		membersList = sqlSession.selectList("mapper.member.selectAllMemberList");
		return membersList;
	}
	
	@Override
	public int insertMember(MemberVO memberVO) throws DataAccessException{
		int result = sqlSession.insert("mapper.member.insertMember" , memberVO);
		return result;
	}
	
	@Override
	public int updateMember(MemberVO memberVO) throws DataAccessException{
		System.out.println("call updateMember Of DAO");
		System.out.println(memberVO.getName());
		int result = sqlSession.update("mapper.member.updateMember" , memberVO);
		return result;
	}
	
	@Override
	public int deleteMember(String id) throws DataAccessException{
		int result = sqlSession.delete("mapper.member.deleteMember",id);
		return result;
	}
	@Override
	public MemberVO selectById(String id) throws DataAccessException{
		MemberVO memberVO = null;
		memberVO = (MemberVO)sqlSession.selectOne("mapper.member.selectMemberById",id);
		return memberVO;
	}

	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException {
		MemberVO vo = sqlSession.selectOne("mapper.member.loginById",memberVO);
		return vo;
	}
	
	
}
