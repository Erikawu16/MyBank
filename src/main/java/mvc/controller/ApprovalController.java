package mvc.controller;

import java.awt.Window;
import java.io.StringBufferInputStream;
import java.text.ParseException;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

import org.apache.jasper.tagplugins.jstl.core.Remove;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Member;

/**
 * 會議室預訂系統 假設您正在為一家公司開發一個會議室預訂系統。您需要實現一個控制器， 該控制器可以處理會議室的預訂請求、取消請求以及查詢當前預訂狀態。
 * 
 * 功能要求：
 * -----------------------------------------------------------------------------------------------
 * 1.審核會員資料 透過按下按鈕通過或不通過更改會員狀態 返回：審核結果
 * 
 * 範例：http://localhost:8080/SpringMVC/mvc/mybank/appproval/1
 * -----------------------------------------------------------------------------------------------
 * 
 * 2.修改會員狀態 返回：是否變動成功與新審核狀態 路徑：/booking/cancelBooking/{bookingId} 參數：預訂ID
 * (bookingId) 範例： http://localhost:8080/SpringMVC/mvc/booking/cancelBooking/1
 * -----------------------------------------------------------------------------------------------
 * 
 * 3.查看所有會員： 路徑：/booking/viewBookings 返回：當前所有預訂的列表
 * 範例：http://localhost:8080/MyBank/mvc/approval/viewMenbers
 *
 */

@Controller
@RequestMapping("/approval")
public class ApprovalController {

	private static List<Map<String, Object>> Members = new CopyOnWriteArrayList<>();
	private static List<Map<String, Object>> Memberpass = new CopyOnWriteArrayList<>();

// 預約號碼: 每次可用 bookingIdCount.incrementAndGet() 來取得
	private AtomicInteger memberIdCount = new AtomicInteger(0);

//=====================================================================
	// http://localhost:8080/MyBank/mvc/approval/viewMembers
	// 查看未審核會員
	@RequestMapping(value = "/viewMembers", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "text/plain;charset=utf-8")
	
	public ModelAndView viewMembers() {

		ModelAndView mv = new ModelAndView();
		// jsp+model資料配置好
		mv.addObject("Members", Members);
		mv.setViewName("/bank/manager/unapproval.jsp");
		return mv;
	}

	
	
	 //http://localhost:8080/MyBank/mvc/approval/viewpassMembers
	 //查看通過會員
	@RequestMapping(value = "/viewpassMembers", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "text/plain;charset=utf-8")
	
	
	
	public ModelAndView viewpassMembers() {

		ModelAndView mv = new ModelAndView();
		// jsp+model資料配置好
		mv.addObject("Memberpass", Memberpass);
		mv.setViewName("/bank/manager/approval.jsp");
		return mv;
	}
	
//=====================================================================
	// 增加會員

	@RequestMapping(value = "/register", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "text/plain;charset=utf-8")
	@ResponseBody

	public String register(@RequestParam(name = "name") String name, @RequestParam(name = "account") String account,
			@RequestParam(name = "date") String date, @RequestParam(name = "status") String status)
			throws ParseException {

		// 會員號碼
		int memberId = memberIdCount.incrementAndGet();
		// 預約資訊
		Map<String, Object> MemberList = new LinkedHashMap<>();
		MemberList.put("memberId", memberId);
		MemberList.put("name", name);
		MemberList.put("account", account);
		MemberList.put("date", date);
		MemberList.put("status", status);
		Members.add(MemberList);
		return "新增成功" + MemberList;

	}
//	3.審核會員 路徑：/booking/{bookId}/updateName 返回:是否變動成功

	// http://localhost:8080/MyBank/mvc/approval/1/updatestatus?status=true

	@RequestMapping(value = "/{memberId}/updatestatus", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "text/plain;charset=utf-8")
	//@ResponseBody
	public String updateName(@PathVariable("memberId") Integer memberId, 
			@RequestParam("status") String newstatus) {
		Optional<Map<String, Object>> mapOpt = Members.stream()
				.filter(member -> member.get("memberId").equals(memberId)).findFirst();
	
		
		
		if (mapOpt != null) {
			Map<String, Object> member = mapOpt.get();
			member.put("status", newstatus);

			Memberpass.add(member);
			Members.remove(member);

			return "redirect:/mvc/approval/viewMembers";
			
			
		}
		return "修改失敗";
	}
	

	
}
