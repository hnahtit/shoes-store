package ShoesStore.UserController;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import ShoesStore.Service.User.ILoaiSanPhamService;
import ShoesStore.Service.User.ISanPhamService;

@Controller
public class BaseController {

	@Autowired
	ISanPhamService _sanPhamService;

	@Autowired
	ILoaiSanPhamService _loaiSanPhamService;

	public ModelAndView _mavShare = new ModelAndView();

	@PostConstruct
	public ModelAndView Init() {
		_mavShare.addObject("sanphamModel", _sanPhamService.getProduct());
		_mavShare.addObject("loaisanphamModel", _loaiSanPhamService.getLoaiSanPham());
		return _mavShare;
	}
}
