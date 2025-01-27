package com.example.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.Cart;
import com.example.demo.model.Order;
import com.example.demo.model.Product;
import com.example.demo.model.User;
import com.example.demo.service.CartService;
import com.example.demo.service.CategoryService;
import com.example.demo.service.OrderService;
import com.example.demo.service.ProductService;
import com.example.demo.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import org.json.JSONObject;
import com.razorpay.*;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	ProductService productService;

	@Autowired
	CartService cartService;

	@Autowired
	OrderService orderService;

	/*------- Payment Gateway Start -------*/
	@RequestMapping("/payment")
	public void payment(HttpServletRequest request, HttpServletResponse response) {
		double amt = Double.parseDouble(request.getParameter("amt"));
		JSONObject orderRequest = new JSONObject();
		orderRequest.put("amount", amt * 100); // amount in the smallest currency unit
		orderRequest.put("currency", "INR");
		orderRequest.put("receipt", "order_rcptid_11");
		RazorpayClient razorpay;
		try {
			razorpay = new RazorpayClient("rzp_test_8jMQMnQuUWDUzy", "gxZyb7cFucHBtLZfd25H82d5");
			com.razorpay.Order order = razorpay.orders.create(orderRequest);
			PrintWriter pw = response.getWriter();

			pw.append(order.toString());

		} catch (RazorpayException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/*------- payment Gateway End -------*/

	/*------- Order Start -------*/

	@RequestMapping(value = "/adminorder", method = RequestMethod.POST)
	public void order(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		PrintWriter pw = null;

		try {

			String payid = request.getParameter("pid");
			Integer userid = (Integer) session.getAttribute("userid");

			List<Cart> allcart = cartService.cartbyuser(userid);

			String qty = "";
			String pid = "";
			String price = "";
			double sum = 0;

			User user = userService.userbyid(userid);
			for (Cart c : allcart) {
				qty += c.getQty() + ",";
				pid += c.getProduct().getId() + ",";
				price += c.getProduct().getPrice() + ",";
				double stotal = c.getProduct().getPrice() * c.getQty();
				sum = sum + stotal;
			}

			System.out.println(userid);
			System.out.println(payid);
			System.out.println(pid);
			System.out.println(price);
			System.out.println(qty);
			System.out.println(sum);

			com.example.demo.model.Order order = new Order();
			order.setPayid(payid);
			order.setPid(pid);
			order.setPrice(price);
			order.setQty(qty);
			order.setTotal(sum);
			order.setUser(user);

			orderService.addOrUpdateOrder(order);

			pw = response.getWriter();
			pw.append("Order Confirmed!!!!.....");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/*------- Order End -------*/

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/index")
	public String index1(Model model) {

		model.addAttribute("products", productService.viewallproduct());
		return "index";
	}

	/*------User Registration Start------*/
	@RequestMapping("/register")
	public String contact(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("users", userService.viewalluser());

		return "register";
	}

	@RequestMapping(value = "/reg", method = RequestMethod.POST)
	public String registration(String fname, String lname, String email, String pass, String phone, MultipartFile image,
			String gender, Model model, HttpSession session) throws IOException {

		String base64Image = Base64.getEncoder().encodeToString(image.getBytes());
		System.out.println(base64Image);

		User user = new User();

		user.setFname(fname);
		user.setLname(lname);
		user.setEmail(email);
		user.setPass(pass);
		user.setGender(gender);
		user.setPhone(phone);
		user.setImage(base64Image);

		String otp = userService.generateOtp();
		session.setAttribute("otp", otp);
		session.setAttribute("user", user);

		userService.sendOtpEmail(email, otp);
		model.addAttribute("msg", "An OTP has been sent to your email address");

		model.addAttribute("msg", "User saved successfully!");
		model.addAttribute("user", user);

		return "otp-verification";

	}

	@RequestMapping("/verify-otp")
	public String verifyOtp(@RequestParam("otp") String enteredOtp, HttpSession session, Model model) {

		String sessionOtp = (String) session.getAttribute("otp");
		User user = (User) session.getAttribute("user");

		if (sessionOtp != null && sessionOtp.equals(enteredOtp)) {
			userService.addorupdateuser(user);

			session.removeAttribute("otp");
			session.removeAttribute("user");

			return "redirect:/register";
		} else {

			model.addAttribute("error", "Invalid OTP. Please try again.");
			return "otp-verify";

		}
	}

	/*------- User Registration End -------*/

	/*-----------Cart Start-----------*/

	@RequestMapping("/shopping-cart")
	public String shoppingcart(HttpSession session, Model model) {

		Integer userid = (Integer) session.getAttribute("userid");

		if (userid == null) {
			model.addAttribute("user", new User());
			model.addAttribute("err", "Please Login first!!!");

			return "redirect:/login";
		}

		else {

			User user = userService.userbyid(userid);
			List<Cart> cartitems = cartService.cartbyuser(userid);

			double sum = 0;

			for (Cart c : cartService.cartbyuser(userid)) {
				double stotal = c.getProduct().getPrice() * c.getQty();
				sum = sum + stotal;
			}

			model.addAttribute("cartdata", cartitems);
			model.addAttribute("total", sum);

		}

		model.addAttribute("user", new User());

		return "shopping-cart";
	}

	@RequestMapping("/addcart")
	public String addorupdatecart(@RequestParam("pid") int pid, Model model, HttpSession session) {

		Integer userid = (Integer) session.getAttribute("userid");

		if (userid == null) {
			model.addAttribute("user", new User());
			model.addAttribute("err", "Please Login First !!!!");

			return "redirect:/login";
		}

		else {

			Cart c = new Cart();
			c.setProduct(productService.productbyid(pid));
			c.setUser(userService.userbyid(userid));
			c.setQty(1);
			cartService.addorupdatecart(c);

			System.out.println(pid);
			System.out.println(userid);
			return "redirect:/shopping-cart";
		}

	}

	@RequestMapping("/deletecart")
	public String cartDelete(@RequestParam("did") int id, Model model) {

		cartService.deletecart(id);

		return "redirect:/shopping-cart";
	}

	@RequestMapping("/clear")
	public String clearCart() {
		cartService.clearCart();
		return "redirect:/shopping-cart";
	}

	/*----------Cart End----------*/

	/*------Product-Page Start------*/
	@RequestMapping("/product-page")
	public String productpage(Model model) {

		model.addAttribute("products", productService.viewallproduct());
		return "product-page";
	}

	@RequestMapping("/products/men")
	public String productForMen(Model model) {
		;
		model.addAttribute("products", productService.viewProductByGenderType("men"));
		return "product-page";

	}

	@RequestMapping("/products/women")
	public String productForWomen(Model model) {
		model.addAttribute("products", productService.viewProductByGenderType("women"));
		return "product-page";
	}

	@RequestMapping("/products/kid")
	public String productForKid(Model model) {
		model.addAttribute("products", productService.viewProductByGenderType("kid"));
		return "product-page";
	}

	/*------Product-page End-------*/

	@RequestMapping("/check-out")
	public String checkout(HttpSession session, Model model) {

		Integer userid = (Integer) session.getAttribute("userid");

		if (userid == null) {

			model.addAttribute("err", "Please Login First !!");
			model.addAttribute("user", new User());

			return "redirect:/login";

		}

		return "check-out";
	}

	@RequestMapping("/categories")
	public String categories(Model model, @RequestParam(value = "categoryId", required = false) Integer categoryId) {

		model.addAttribute("categories", categoryService.viewallcategory());

		if (categoryId != null) {
			List<Product> products = productService.viewProductByCategory(categoryId);
			model.addAttribute("products", products);
		} else {
			model.addAttribute("products", productService.viewallproduct());
		}

		return "categories";
	}

	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("user", new User());

		return "login";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/log")
	public String loginuser(Model model, @ModelAttribute("user") User u, HttpSession session) {

		User user = userService.userlogin(u.getEmail(), u.getPass());
		model.addAttribute("user", new User());
		if (user == null) {
			model.addAttribute("err", "Invalid Email and Password");
			return "login";
		} else {
			session.setAttribute("userid", user.getId());
			return "redirect:/index";
		}

	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/index";
	}

	@RequestMapping("/userprofile")
	public String userprofile(Model model, HttpSession session) {

		Integer userid = (Integer) session.getAttribute("userid");

		if (userid != null) {

			User u = userService.userbyid(userid);

			if (u != null) {
				model.addAttribute("image", u.getImage());
				model.addAttribute("fname", u.getFname());
				model.addAttribute("lname", u.getLname());
				model.addAttribute("email", u.getEmail());
				model.addAttribute("phone", u.getPhone());
				model.addAttribute("gender", u.getGender());

				return "userprofile";

			}

		}
		return "redirect:/login";

	}

//	@RequestMapping("/updateuser")
//	public String viewuserprofile(Model model, @RequestParam("eid") int id) {
//
//		model.addAttribute("user", userService.userbyid(id));
//		model.addAttribute("users", userService.viewalluser());
//
//		return "register";
//
//	}

	/*------Product-detail Start------*/

	@RequestMapping("/product-detail")
	public String productdetail(Model model, @RequestParam("id") String id) {
		try {
			int productId = Integer.parseInt(id);
			Product product = productService.productbyid(productId);

			if (product == null) {
				model.addAttribute("error", "Product not found.");
				return "error";
			}

			model.addAttribute("product", product);
			return "product-detail";
		} catch (NumberFormatException e) {
			model.addAttribute("error", "Invalid product ID format.");
			return "error";
		}

	}

	/*-----Product-detail End-----*/

}
