package ShoesStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ShoesStore.Dao.LoaiSanPhamDao;
import ShoesStore.Entities.LoaiSanPham;

@Service
public class LoaiSanPhamServiceImpl implements ILoaiSanPhamService {

	@Autowired
	LoaiSanPhamDao loaiSanPhamDao;
	@Override
	public List<LoaiSanPham> getLoaiSanPham() {
		// TODO Auto-generated method stub
		return loaiSanPhamDao.getLoaiSanPham();
	}

}
