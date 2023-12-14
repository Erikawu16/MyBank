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
 * 會員註冊後資料審核系統
 * 功能要求：
 * -------------------------
 * 1. 會員註冊
 * 2.查看未審核會員
 * 3.查看已審核會員
 * 4.1.會員審核功能(pass)
 * 4.2.會員審核功能(false)
 * 5.查看通過會員
 * 6.查看未通過會員
 * -------------------------
 * 
 */

@Controller
@RequestMapping("/approval")
public class ApprovalController {

 private static List<Map<String, Object>> UnapprovalMember = new CopyOnWriteArrayList<>();
 private static List<Map<String, Object>> ApprovaledMember = new CopyOnWriteArrayList<>();
 private static List<Map<String, Object>> PassMember = new CopyOnWriteArrayList<>();
 private static List<Map<String, Object>> FalseMember = new CopyOnWriteArrayList<>();
 
// 註冊編號: 每次可用 memberIdCount.incrementAndGet() 來取得
 private AtomicInteger memberIdCount = new AtomicInteger(0);
 
 
//1.會員註冊
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
		UnapprovalMember.add(MemberList);
		return "新增成功" + MemberList;
	}
	
	
//2. 查看未審核會員
// http://localhost:8080/MyBank/mvc/approval/viewUnapprovalMember
@RequestMapping(value = "/viewUnapprovalMember", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "text/plain;charset=utf-8")
	
	public ModelAndView viewUnapprovalMember() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("UnapprovalMember",UnapprovalMember);
		mv.setViewName("/bank/manager/unapproval.jsp");
		return mv;
	}

//3.查看已審核會員
//http://localhost:8080/MyBank/mvc/approval/viewApprovaledMember
	@RequestMapping(value = "/viewApprovaledMember", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "text/plain;charset=utf-8")
	
	public ModelAndView viewApprovaledMember() {
		ModelAndView mv = new ModelAndView();
		//mv.addObject("UnapprovalMember",UnapprovalMember);
		mv.addObject("ApprovaledMember", ApprovaledMember);
		mv.setViewName("/bank/manager/approvaled.jsp");
		return mv;
	}
	
	
//	4.1.會員審核功能(pass) 
// http://localhost:8080/MyBank/mvc/approval/1/updatestatustotrue?status=true

	@RequestMapping(value = "/{memberId}/updatestatustotrue", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "text/plain;charset=utf-8")
	//@ResponseBody
	public String  updateStatusToTrue(
			@PathVariable("memberId") Integer memberId, 
			@RequestParam("status") String newstatus) {
		Optional<Map<String, Object>> mapOpt = UnapprovalMember.stream()
				.filter(member -> member.get("memberId").equals(memberId)).findFirst();
		
		if (mapOpt.isPresent()) {
			Map<String, Object> member = mapOpt.get();
			member.put("status", newstatus);
			PassMember.add(member);
			ApprovaledMember.add(member);
			UnapprovalMember.remove(member);
			return "redirect:/mvc/approval/viewUnapprovalMember";
		}
		return "修改失敗";
	}
	
//4.2.會員審核功能(false)
 //http://localhost:8080/MyBank/mvc/approval/1/updatestatustofalse?status=false
	@RequestMapping(value = "/{memberId}/updatestatustofalse", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "text/plain;charset=utf-8")
	//@ResponseBody
	public String updateStatusToFalse(@PathVariable("memberId") Integer memberId, 
			@RequestParam("status") String newstatus) {
		Optional<Map<String, Object>> mapOpt = UnapprovalMember.stream()
				.filter(member -> member.get("memberId").equals(memberId)).findFirst();
		
		if (mapOpt.isPresent()) {
			Map<String, Object> member = mapOpt.get();
			member.put("status", newstatus);
			FalseMember.add(member);
			 ApprovaledMember.add(member);
			 UnapprovalMember.remove(member);
			return "redirect:/mvc/approval/viewUnapprovalMember";
		}
		return "修改失敗";
	}
	
	
	
//5.查看通過會員
	//http://localhost:8080/MyBank/mvc/approval/viewPassMember
		@RequestMapping(value = "/viewPassMember", method = { RequestMethod.GET,
				RequestMethod.POST }, produces = "text/plain;charset=utf-8")
		
		public ModelAndView viewPassMember() {
			ModelAndView mv = new ModelAndView();
			mv.addObject("PassMember", PassMember);
			mv.setViewName("/bank/manager/passmember.jsp");
			return mv;
		}
	
	
	
// 6.查看未通過會員
		//http://localhost:8080/MyBank/mvc/approval/viewFalseMember
		@RequestMapping(value = "/viewFalseMember", method = { RequestMethod.GET,
				RequestMethod.POST }, produces = "text/plain;charset=utf-8")
		
		public ModelAndView viewFalseMember() {
			ModelAndView mv = new ModelAndView();
			mv.addObject("FalseMember", FalseMember);
			mv.setViewName("/bank/manager/falsemember.jsp");
			return mv;
		}
		
// 6.查看數據報表
	//http://localhost:8080/MyBank/mvc/approval/viewreport
	@RequestMapping(value = "/viewreport", method = { RequestMethod.GET,
						RequestMethod.POST }, produces = "text/plain;charset=utf-8")
				public ModelAndView viewreport() {
					ModelAndView mv = new ModelAndView();
					mv.setViewName("/bank/manager/report.jsp");
					return mv;
				}

}
