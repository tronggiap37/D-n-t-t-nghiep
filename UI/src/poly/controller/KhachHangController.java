package poly.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import poly.model.KhachHang;


@Transactional
@Controller
@RequestMapping("/khachhang/")
public class KhachHangController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("load")  
	public String load(ModelMap model) {   
		Session session = factory.getCurrentSession();   
		String hql = "FROM KhachHang";   
		Query query = session.createQuery(hql);   
		List<KhachHang> list = query.list();   
		model.addAttribute("khachhangs", list);   
		return "page/khachhang/load";  
		}
	
	@RequestMapping(value="insert", method=RequestMethod.GET) 
	public String insert(ModelMap model) {
		model.addAttribute("khachhang", new KhachHang());  
		return "page/khachhang/insert"; 
		}
	
	@RequestMapping(value="insert", method=RequestMethod.POST) 
	public String insert(ModelMap model, @Validated@ModelAttribute("khachhang") KhachHang khachhang,BindingResult errors) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();  
		try {
			session.save(khachhang);   
			t.commit();   
			model.addAttribute("message", "Thêm mới thành công !"); 
			
		}   
		catch (Exception e) {
			t.rollback();   
			model.addAttribute("message", "Thêm mới thất bại !");  
		}  
		finally {   
			session.close();  
			}  
		return "redirect:/khachhang/login.htm";
	}
	
	
	@RequestMapping(value="update", method=RequestMethod.GET) 
	public String update(ModelMap model) {
		model.addAttribute("khachhang", new KhachHang());  
		return "page/khachhang/update"; 
		}
	@RequestMapping("update/{tendnkh}")
	public String edit(ModelMap model, @PathVariable("tendnkh") String tendnkh) {
		Session session = factory.getCurrentSession();
		KhachHang khachhang = (KhachHang) session.get(KhachHang.class, tendnkh);
		model.addAttribute("khachhang", khachhang);
		return "page/khachhang/update";
	}
	


	@RequestMapping(value="update", method=RequestMethod.POST) 
	public String update(ModelMap model, @ModelAttribute("khachhang") KhachHang khachhang) {
		Session session = factory.openSession();  
		Transaction t = session.beginTransaction();  
		try {
			session.update(khachhang);   
			t.commit();   
			model.addAttribute("message", "cập nhật Thành Công!"); 
		}   
		catch (Exception e) {
			t.rollback();   
			model.addAttribute("message", "cập nhật Thất Bại!");  
		}  
		finally {   
			session.close();  
			}  
		return "redirect:/khachhang/login.htm";
	}
	
	@RequestMapping("login")
	public String login() {
		return "page/khachhang/login";
	}
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(ModelMap model, 
			@RequestParam("tendnkh") String tendnkh,
			@RequestParam("matkhau") String matkhau,
			HttpSession httpSession) {
		Session session = factory.getCurrentSession();
		try {
			KhachHang khachhang = (KhachHang) session.get(KhachHang.class, tendnkh);
			if(!khachhang.getMatkhau().equals(matkhau)){
				model.addAttribute("message", "Sai mật khẩu !");
				return "page/khachhang/login";
			}
			else{
				httpSession.setAttribute("khachhang", khachhang);
				model.addAttribute("message", "Đăng nhập thành công !");
				//return "redirect:/user/index.htm";
				return "redirect:/page/index.htm";
				}
		} 
		catch (Exception e) {
			model.addAttribute("message", "Sai tên đăng nhập !");
		}
		
		return "page/khachhang/login";
	}
}
