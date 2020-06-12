package ShoesStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ShoesStore.Entities.SanPham;
@Service
public interface ISanPhamService {
	@Autowired
	public List<SanPham> getProduct() ;
	@Autowired
	public List<SanPham> getProductByIdLoaiPaging(int id,int start, int end);
	@Autowired
	public List<SanPham> getProductByIdLoai(int id);
	@Autowired
	public SanPham getOneProduct(int id);
}
