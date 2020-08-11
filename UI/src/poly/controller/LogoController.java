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

import poly.model.Logo;

@Transactional
@Controller
@RequestMapping("/page/")
public class LogoController {
		
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("logo")  
	public String logo(ModelMap model) {   
		Session session = factory.getCurrentSession();   
		String hql = "FROM Logo";   
		Query query = session.createQuery(hql);   
		List<Logo> list = query.list();   
		model.addAttribute("logos", list);   
		return "page/logo";  
		}
	
}
