package service;

import java.util.List;

import dao.CartItemDao;
import model.CartItem;

public class CartItemService {
	CartItemDao cartItemDao = new CartItemDao();

	
	public void insert(CartItem cartItem) {
		cartItemDao.insert(cartItem);
		
	}

	
	public void edit(CartItem newCartItem) {
		CartItem oldCartItem = cartItemDao.get(newCartItem.getId());
		oldCartItem.setCart(newCartItem.getCart());
		oldCartItem.setProduct(newCartItem.getProduct());
		oldCartItem.setQuantity(newCartItem.getQuantity());
		oldCartItem.setUnitPrice(newCartItem.getUnitPrice());
		
		cartItemDao.edit(oldCartItem);
	}

	
	public void delete(String id) {
		cartItemDao.delete(id);
	}

	
	public CartItem get(int id) {
		return cartItemDao.get(id);
	}

	
	public List<CartItem> getAll() {
		return cartItemDao.getAll();
	}

	
	public List<CartItem> search(String keyword) {
		return cartItemDao.search(keyword);
	}

	
}
