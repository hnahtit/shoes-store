package ShoesStore.UserController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ShoesStore.Dto.PaginateDto;

@Controller
public class SingleController extends BaseController {
	@RequestMapping(value = "single/{id}")
	public ModelAndView Shop(@PathVariable int id) {

		_mavShare.setViewName("user/single");
		_mavShare.addObject("sanpham",_sanPhamService.getOneProduct(id));
		
		return _mavShare;
	}
}
