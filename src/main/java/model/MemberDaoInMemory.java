package model;

import java.util.Date;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class MemberDaoInMemory implements MemberDao {
	// In-Memory 模擬資料庫
	private static List<Member> Members;
	static { // 類別成員初始區段
		Members = new CopyOnWriteArrayList<Member>();
		// 預設 4 筆資料
		//Members.add(new Member("John", "111-222-333-444", new Date()));
		//Members.add(new Member( "Mary", "111-222-333-443", new Date()));
		//Members.add(new Member("Jack", "111-222-333-442", new Date() ));
		//Members.add(new Member( "Rose", "111-222-333-441", new Date()));
		
	}

	// 新增資料
	@Override
	public void create(Member guestbook) {
		Members.add(guestbook);
	}

	// 取得所有紀錄
	@Override
	public List<Member> readAll() {
		return Members;
	}

}
