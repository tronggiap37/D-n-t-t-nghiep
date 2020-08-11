package poly.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.model.SanPhamMoi;

@Transactional
@Controller
@RequestMapping("/page/")
public class SanPhamMoiController {
	@Autowired
	SessionFactory factory;
	
	
	 @RequestMapping("index") 
	 public String index(ModelMap model) { 
	 Session session = factory.getCurrentSession();
	 String hql = "FROM SanPhamMoi"; 
	 Query query = session.createQuery(hql); 
	 List<SanPhamMoi> list = query.list();
	 model.addAttribute("sanphammoi", list); 
	 return "page/index"; }
	 
	
}
