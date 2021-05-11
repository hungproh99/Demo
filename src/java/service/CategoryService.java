package service;

import java.util.List;

import dao.CategoryDao;
import model.Category;

public class CategoryService {
	CategoryDao categoryDao = new CategoryDao();

	
	public void insert(Category category) {
		categoryDao.insert(category);

	}

	
	public void edit(Category newCategory) {
		Category oldCate = categoryDao.get(newCategory.getId());
		oldCate.setName(newCategory.getName());
		categoryDao.edit(oldCate);

	}

	
	public void delete(int id) {
		categoryDao.delete(id);

	}

	
	public Category get(int id) {
		return categoryDao.get(id);
	}

	
	public Category get(String name) {
		return categoryDao.get(name);
	}

	
	public List<Category> getAll() {
		return categoryDao.getAll();
	}

	
	public List<Category> search(String username) {
		return categoryDao.search(username);
	}
}