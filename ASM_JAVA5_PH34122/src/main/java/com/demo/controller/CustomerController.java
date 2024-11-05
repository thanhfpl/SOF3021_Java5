//package com.demo.controller;
//
//import com.demo.model.Account;
//import com.demo.model.Order;
//import com.demo.model.OrderDetail;
//import com.demo.model.Product;
//import com.demo.service.CartService;
//import com.demo.service.CategoryService;
//import com.demo.service.ProductService;
//import jakarta.servlet.http.HttpSession;
//import lombok.AllArgsConstructor;
//import lombok.Data;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.*;
//
//import java.util.Arrays;
//import java.util.List;
//
//@Controller
//public class CustomerController {
//	@Autowired
//	HttpSession session;
//
//	@Autowired
//	CategoryService categoryService;
//
//	@Autowired
//	ProductService productService;
//
//	@Autowired
//	CartService cartService;
//
//	@ModelAttribute("cart")
//	CartService getCartService(){
//		return cartService;
//	}
//
//	@Data @AllArgsConstructor
//	public static class PriceRange{
//		int id;
//		int minValue;
//		int maxValue;
//		String display;
//	}
//
//	List<PriceRange> priceRangeList = Arrays.asList(
//		new PriceRange(0,0, Integer.MAX_VALUE, "Tất cả"),
//		new PriceRange(1,0, 10000000, "Dưới 10 triệu"),
//		new PriceRange(2,10000000, 20000000, "Từ 10-20 triệu"),
//		new PriceRange(3,20000000, Integer.MAX_VALUE, "Trên 20 triệu")
//	);
//
//	@RequestMapping("/")
//	public String index(
//			@RequestParam(defaultValue="") String keyword,
//			@RequestParam(defaultValue="") String categoryId,
//			@RequestParam(defaultValue="0") int priceRangeId,
//			@RequestParam(defaultValue="0") int page,
//			Model model) {
//
//		model.addAttribute("priceRangeList", priceRangeList);
//		model.addAttribute("categoryList", categoryService.getAll());
//		model.addAttribute("productList", productService.getAll());
//
//		int minPrice = priceRangeList.get(priceRangeId).minValue;
//		int maxPrice = priceRangeList.get(priceRangeId).maxValue;
//
//		System.out.println("keyword=" + keyword);
//		System.out.println("categoryId=" + categoryId);
//		System.out.println("minPrice=" + minPrice);
//		System.out.println("maxPrice=" + maxPrice);
//		System.out.println("page=" + page);
//
//		// TODO: Search & paginate
//
//		return "customer/index";
//	}
//
//	@GetMapping("/detail/{id}")
//	public String viewProduct(@PathVariable int id, Model model) {
//		Product product = productService.findById(id);
//		model.addAttribute("product", product);
//		return "customer/detail";
//	}
//
//	@RequestMapping("/add-to-cart/{id}")
//	public String addToCart(@PathVariable int id){
//		cartService.add(id);
//		return "redirect:/cart";
//	}
//
//	@RequestMapping("/remove-cart/{id}")
//	public String removeCart(@PathVariable int id) {
//		cartService.remove(id);
//		if(cartService.getTotal() == 0){
//			return "redirect:/";
//		}
//		return "redirect:/cart";
//	}
//
//	@RequestMapping("/update-cart/{id}")
//	public String updateCart(@PathVariable int id, int quantity) {
//		cartService.update(id, quantity);
//		return "redirect:/cart";
//	}
//
//	@GetMapping("/cart")
//	public String cart(){
//		return "customer/cart";
//	}
//
//	@GetMapping("/checkout")
//	public String confirm(){
//		if(session.getAttribute("account") == null){
//			return  "redirect:/login";
//		}
//		return "customer/checkout";
//	}
//
//	@RequestMapping("/about")
//	public String about(Model model) {
//		return "customer/about";
//	}
//
//	@GetMapping("/login")
//	public String login(){
//		return "login";
//	}
//
//	@PostMapping("/login")
//	public String login(@RequestParam String username, @RequestParam String password, Model model) {
//		// TODO: Check if user/password exists in database
//
//		if("poly".equals(username) && password.equals(password)) {
//			Account acc = new Account();
//			acc.setUsername(username);
//			session.setAttribute("account", acc);
//			return "redirect:/";
//		}
//		model.addAttribute("message", "Tên đăng nhập/mật khẩu không đúng");
//		return "login";
//	}
//
//	@PostMapping("/purchase")
//	public String purchase(@RequestParam String address){
//		System.out.println("address=" + address);
//		System.out.println("items=" + cartService.getItems());
//		Account acc = (Account) session.getAttribute("account");
//		if(acc != null) {
//			Order order = new Order();
//			order.setAccount(acc);
//			order.setAddress(address);
//			//TODO: Save order
//
//			for(OrderDetail item : cartService.getItems()){
//				item.setOrder(order);
//				// TODO: Save order detail
//			}
//			// TODO :clear cart
//		}
//		cartService.clear();
//		return "redirect:/";
//	}
//
//	@GetMapping("/logout")
//	public String logout(){
//		session.removeAttribute("username");
//		return "redirect:/login";
//	}
//}
package com.demo.controller;

import com.demo.model.Account;
import com.demo.model.Order;
import com.demo.model.OrderDetail;
import com.demo.model.Product;
import com.demo.repo.AccountRepo;
import com.demo.repo.OrderDetailRepo;
import com.demo.repo.OrderRepo;
import com.demo.repo.ProductRepo;
import com.demo.service.CartService;
import com.demo.service.CategoryService;
import com.demo.service.ProductService;

import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@Controller
public class CustomerController {
	@Autowired
	HttpSession session;

	@Autowired
	CategoryService categoryService;

	@Autowired
	ProductService productService;

	@Autowired
	CartService cartService;

	@Autowired
	AccountRepo accountRepository;

	@Autowired
	OrderRepo orderRepository;

	@Autowired
	OrderDetailRepo orderDetailRepository;

	@Autowired
	ProductRepo productRepository;

	@ModelAttribute("cart")
	CartService getCartService(){
		return cartService;
	}

	@Data @AllArgsConstructor
	public static class PriceRange {
		int id;
		int minValue;
		int maxValue;
		String display;
	}

	List<PriceRange> priceRangeList = Arrays.asList(
			new PriceRange(0, 0, Integer.MAX_VALUE, "Tất cả"),
			new PriceRange(1, 0, 10000000, "Dưới 10 triệu"),
			new PriceRange(2, 10000000, 20000000, "Từ 10-20 triệu"),
			new PriceRange(3, 20000000, Integer.MAX_VALUE, "Trên 20 triệu")
	);

	@RequestMapping("/")
	public String index(
			@RequestParam(defaultValue="") String keyword,
			@RequestParam(defaultValue="") String categoryId,
			@RequestParam(defaultValue="0") int priceRangeId,
			@RequestParam(defaultValue="0") int page,
			Model model) {

		model.addAttribute("priceRangeList", priceRangeList);
		model.addAttribute("categoryList", categoryService.getAll());

		int minPrice = priceRangeList.get(priceRangeId).minValue;
		int maxPrice = priceRangeList.get(priceRangeId).maxValue;

		List<Product> productList;
		if (!categoryId.isEmpty()) {
			productList = productRepository.findByCategoryIdAndPriceBetween(categoryId, minPrice, maxPrice);
		} else {
			productList = productRepository.findByNameContainingAndPriceBetween(keyword, minPrice, maxPrice);
		}
		model.addAttribute("productList", productList);

		return "customer/index";
	}

	@GetMapping("/detail/{id}")
	public String viewProduct(@PathVariable int id, Model model) {
		Product product = productRepository.findById(id).orElse(null);
		if (product == null) {
			return "redirect:/";
		}
		model.addAttribute("product", product);
		return "customer/detail";
	}

	@RequestMapping("/add-to-cart/{id}")
	public String addToCart(@PathVariable int id){
		cartService.add(id);
		return "redirect:/cart";
	}

	@RequestMapping("/remove-cart/{id}")
	public String removeCart(@PathVariable int id) {
		cartService.remove(id);
		if(cartService.getTotal() == 0){
			return "redirect:/";
		}
		return "redirect:/cart";
	}

	@RequestMapping("/update-cart/{id}")
	public String updateCart(@PathVariable int id, int quantity) {
		cartService.update(id, quantity);
		return "redirect:/cart";
	}

	@GetMapping("/cart")
	public String cart(){
		return "customer/cart";
	}

	@GetMapping("/checkout")
	public String confirm(){
		if(session.getAttribute("account") == null){
			return  "redirect:/login";
		}
		return "customer/checkout";
	}

	@RequestMapping("/about")
	public String about(Model model) {
		return "customer/about";
	}

	@GetMapping("/login")
	public String login(){
		return "login";
	}

	@PostMapping("/login")
	public String login(@RequestParam String username, @RequestParam String password, Model model) {
		Account account = accountRepository.findByUsernameAndPassword(username, password);
		if (account != null) {
			session.setAttribute("account", account);
			return "redirect:/";
		}
		model.addAttribute("message", "Tên đăng nhập/mật khẩu không đúng");
		return "login";
	}

	@PostMapping("/purchase")
	public String purchase(@RequestParam String address){
		Account acc = (Account) session.getAttribute("account");
		if (acc != null) {
			Order order = new Order();
			order.setAccount(acc);
			order.setAddress(address);
			orderRepository.save(order);

			for (OrderDetail item : cartService.getItems()) {
				item.setOrder(order);
				orderDetailRepository.save(item);
			}
			cartService.clear();
		}
		return "redirect:/";
	}

	@GetMapping("/logout")
	public String logout(){
		session.removeAttribute("account");
		return "redirect:/login";
	}
}