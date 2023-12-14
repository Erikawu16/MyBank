package mvc.dao.spform;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import mvc.bean.Member;


@Repository("memberDaoImplMySQL") // 自行定義名稱
public class MemberDaoImplMySQL implements MemberDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	

	
	@Override
	public int addMember(Member Member) {
		// TODO Auto-generated method stub
		return 0;
	}

	

	@Override
	public Optional<Member> getMemberById(Integer id) {
		// TODO Auto-generated method stub
		return Optional.empty();
	}
	

	@Override
	public int updateMemberStatusTopassById(Integer memberId) {
		String sql = "update unapproval_member set status = true where memberId = ?";
		int rowcount = jdbcTemplate.update(sql,memberId);
		return rowcount;
	}


	@Override
	public int updateMemberStatusToFalseById(Integer memberId) {
		String sql = "update unapproval_member set status = false where memberId = ?";
		int rowcount = jdbcTemplate.update(sql,memberId);
		return rowcount;

	}


	@Override
	public List<Member> findAllUnapprovalMembers() {
		String sql = "SELECT memberId,name ,account,createdate,status  FROM web.unapproval_member;";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Member.class));
	}


	@Override
	public List<Member> findAllApprovaledMembers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> findAllPassMembers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Member> findAllFalseMembers() {
		// TODO Auto-generated method stub
		return null;
	}


	
}