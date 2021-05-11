package service;

import java.util.List;

import dao.CartDao;
import model.Cart;

public class CartService {
	CartDao cartDao = new CartDao();

	
	public List<Cart> search(String name) {
		return cartDao.search(name);
	}

	
	public void insert(Cart cart) {
		cartDao.insert(cart);

	}

	
	public List<Cart> getAll() {
		return cartDao.getAll();
	}

	
	public Cart get(int id) {
		return cartDao.get(id);
	}

	
	public void edit(Cart newCart) {
		Cart oldCart = cartDao.get(newCart.getId());

		oldCart.setBuyDate(newCart.getBuyDate());
		oldCart.setBuyer(newCart.getBuyer());
		
		
		cartDao.edit(oldCart);

	}

	
	public void delete(int id) {
		cartDao.delete(id);
	}
}
