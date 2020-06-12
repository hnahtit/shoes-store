package ShoesStore.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ShoesStore.Entities.LoaiSanPham;
@Service
public interface ILoaiSanPhamService {
	@Autowired
	public List<LoaiSanPham> getLoaiSanPham() ;
	
	
}
