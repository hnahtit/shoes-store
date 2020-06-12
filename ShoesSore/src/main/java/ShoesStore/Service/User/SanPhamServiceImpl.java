package ShoesStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ShoesStore.Dao.SanPhamDao;
import ShoesStore.Entities.SanPham;

@Service
public class SanPhamServiceImpl implements ISanPhamService {

	@Autowired
	SanPhamDao productDao;

	@Override
	public List<SanPham> getProduct() {

		return productDao.getProduct();
	}

	@Override
	public List<SanPham> getProductByIdLoaiPaging(int id, int start, int end) {

		return productDao.getProductByIdLoaiPaging(id, start, end);
	}

	@Override
	public List<SanPham> getProductByIdLoai(int id) {

		return productDao.getProductByIdLoai(id);
	}

	@Override
	public SanPham getOneProduct(int id) {
		List<SanPham> list = productDao.getOneProduct(id);
	
		return list.get(0);
	}

}
