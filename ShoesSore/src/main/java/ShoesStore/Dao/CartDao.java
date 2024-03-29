package ShoesStore.Dao;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;

import ShoesStore.Dto.CartDto;
import ShoesStore.Entities.SanPham;

public class CartDao extends BaseDao {

	@Autowired
	SanPhamDao sanphamDao;

	public HashMap<Integer, CartDto> AddCart(int id, HashMap<Integer, CartDto> cart) {
		CartDto itemCart = new CartDto();
		SanPham sanpham = sanphamDao.findOneProduct(id);

		if (sanpham != null) {
			itemCart.setSanpham(sanpham);
			itemCart.setQuanty(1);

			itemCart.setTotalPrice(sanpham.getGia());
		}
		cart.put(id, itemCart);
		return cart;
	}

	public HashMap<Integer, CartDto> EditCart(int id, int quanty, HashMap<Integer, CartDto> cart) {
//		SanPham sanpham = sanphamDao.findOneProduct(id);
		CartDto itemCart = new CartDto();

		if (cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanty(quanty);
			itemCart.setTotalPrice(quanty * itemCart.getSanpham().getGia());
		}

		cart.put(id, itemCart);
		return cart;
	}

	public HashMap<Integer, CartDto> EditCart(int id, HashMap<Integer, CartDto> cart) {
		if(cart == null)
		{
			return cart;
		}
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}

}
