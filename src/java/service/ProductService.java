package service;

import java.io.File;
import java.util.List;
import dao.ProductDao;
import model.Product;

public class ProductService {
	ProductDao productDao = new ProductDao();

	
	public void insert(Product product) {
		productDao.insert(product);

	}

	
	public void edit(Product newProduct) {
		Product oldProduct = productDao.get(newProduct.getId());

		oldProduct.setName(newProduct.getName());
		oldProduct.setPrice(newProduct.getPrice());
		oldProduct.setCategory(newProduct.getCategory());
		if (newProduct.getImage() != null) {
			// Delete old image
			String fileName = oldProduct.getImage();
			final String dir = "F:\\upload";
			File file = new File(dir + "/" + fileName);
			if (file.exists()) {
				file.delete();
			}

			oldProduct.setImage(newProduct.getImage());
		}

		productDao.edit(oldProduct);

	}

	
	public void delete(int id) {
		productDao.delete(id);

	}

	
	public Product get(int id) {
		return productDao.get(id);
	}

	
	public List<Product> getAll() {
		return productDao.getAll();
	}

	
	public List<Product> search(String product) {
		return productDao.search(product);
	}

	
	public List<Product> seachByCategory(int cate_id) {
		return productDao.seachByCategory(cate_id);
	}

	
	public List<Product> seachByName(String productName) {
		return productDao.seachByName(productName);
	}

}
