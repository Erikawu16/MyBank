package model;

import java.util.List;

/**
 * 定義訪客留言版
 * 新增與查詢
 * */
public interface MemberDao {
	void create(Member member);
	List<Member> readAll();
	
}
