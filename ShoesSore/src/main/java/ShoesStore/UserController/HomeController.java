package ShoesStore.UserController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ShoesStore.Service.User.ILoaiSanPhamService;
import ShoesStore.Service.User.ISanPhamService;

@Controller

public class HomeController extends BaseController{



	
	@RequestMapping(value = {"/","/trang-chu"})
	public ModelAndView Index() {
//		ModelAndView mav = new ModelAndView("user/index");
		_mavShare.setViewName("user/index");
		return _mavShare;
	}
	

	
	@RequestMapping(value = "/checkout")
	public ModelAndView Checkout() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/checkout");
		return mav;
	}
	
	@RequestMapping(value = "/login")
	public ModelAndView Login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/login");
		return mav;
	}
	
	@RequestMapping(value = "/register")
	public ModelAndView Register() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/register");
		return mav;
	}
//	
//	@RequestMapping(value = "/single")
//	public ModelAndView Single() {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("user/single");
//		return mav;
//	}
}
