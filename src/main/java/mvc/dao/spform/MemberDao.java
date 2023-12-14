package mvc.dao.spform;

import java.util.List;
import java.util.Optional;

import mvc.bean.Member;

public interface MemberDao {
	
	//新增會員
	int addMember(Member Member);
	
	//更新會員狀態(pass)
	int updateMemberStatusTopassById(Integer memberId);
	//更新會員狀態(false)
	int updateMemberStatusToFalseById(Integer memberId);
	
	
	//查看會員
	Optional<Member> getMemberById(Integer id);
	
	
	
	List<Member> findAllUnapprovalMembers();
	List<Member> findAllApprovaledMembers();
	List<Member> findAllPassMembers();
	List<Member> findAllFalseMembers();

}