package com.example.demo.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.Category;
import com.example.demo.model.Order;
import com.example.demo.model.Product;
import com.example.demo.service.CategoryService;
import com.example.demo.service.OrderService;
import com.example.demo.service.ProductService;
import com.example.demo.service.UserService;

import jakarta.servlet.annotation.MultipartConfig;

@Controller
@MultipartConfig
public class AdminController {

	@Autowired
	UserService userService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	ProductService productService;

	@Autowired
	OrderService orderService;

	@RequestMapping("/button")
	public String button() {
		return "button";
	}

	@RequestMapping("/chart")
	public String chart() {
		return "chart";
	}

	@RequestMapping("/element")
	public String element() {
		return "element";
	}

	@RequestMapping("/form")
	public String form() {
		return "form";
	}

	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}

	@RequestMapping("/signin")
	public String signin() {
		return "signin";
	}

	@RequestMapping("/signup")
	public String signup() {
		return "signup";
	}

	@RequestMapping("/table")
	public String table() {
		return "table";
	}

	@RequestMapping("/typography")
	public String typography() {
		return "typography";
	}

	@RequestMapping("/widget")
	public String widget() {
		return "widget";
	}

	@RequestMapping("/viewuser")
	public String viewuser(Model model) {

		model.addAttribute("users", userService.viewalluser());

		return "viewuser";
	}

	@RequestMapping("/deleteuser")
	public String deleteUser(@RequestParam("did") int id, Model model) {
		userService.deleteUserById(id);
		return "redirect:/viewuser";
	}

	/*--------Category Start----------*/
	@RequestMapping("/admincategory")
	public String admincategory(Model model) {

		model.addAttribute("category", new Category());
		model.addAttribute("categories", categoryService.viewallcategory());

		return "admincategory";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/addcat")
	public String addcategory(@ModelAttribute("category") Category c, Model model) {

		categoryService.addcategory(c);
		return "redirect:/admincategory";

	}

	@RequestMapping("/catdelete")
	public String deletecategory(@RequestParam("did") int id) {
		categoryService.deletecategory(id);
		return "redirect:/admincategory";
	}

	@RequestMapping("/catupdate")
	public String updatecategory(@RequestParam("eid") int id, Model model) {

		model.addAttribute("category", categoryService.editcategory(id));
		model.addAttribute("categories", categoryService.viewallcategory());

		return "admincategory";

	}

	/*--------Category End--------*/

	/*--------Product Start--------*/

	// private static String UPLOAD_DIRECTORY = System.getProperty("user.dir") +
	// "/src/main/resources/static/image";

	@RequestMapping("/adminproduct")
	public String product(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("categories", categoryService.viewallcategory());
		model.addAttribute("products", productService.viewallproduct());

		return "adminproduct";
	}

	@RequestMapping(method = RequestMethod.POST, value = ("/addproduct"))
	public String addproduct(@RequestParam("catid") int id, String pname, long price, int qty, String brandName,
			MultipartFile productImage, Model model, String productDetail, String genderType) {

		try {
			String base64Image = Base64.getEncoder().encodeToString(productImage.getBytes());

			Product product = new Product();
			product.setPname(pname);
			product.setPrice(price);
			product.setQty(qty);
			product.setBrandName(brandName);
			product.setProductImage(base64Image);
			product.setProductDetail(productDetail);
			product.setGenderType(genderType);
			Category category = categoryService.editcategory(id);
			product.setCategory(category);

			productService.addproduct(product);

			model.addAttribute("msg", "product saved successfully!");
			model.addAttribute("product", product);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			model.addAttribute("msg", "Error saving employee: " + e.getMessage());
		}

		return "redirect:/adminproduct";

	}

	@RequestMapping("/productdelete")
	public String deleteproduct(@RequestParam("did") int id) {

		productService.deleteproduct(id);
		return "redirect:/adminproduct";

	}

	@RequestMapping("/productupdate")
	public String updateproduct(@RequestParam("eid") int id, Model model) {
		model.addAttribute("product", productService.productbyid(id));
		model.addAttribute("products", productService.viewallproduct());

		return "adminproduct";
	}

	@RequestMapping("/adminorder")
	public String order() {
		List<Order> order = orderService.viewAllOrder();
		for (Order orderList : order) {
			String products[] = orderList.getPid().split(",");
			String price[] = orderList.getPrice().split(",");
			String qty[] = orderList.getQty().split(",");

			for (int i = 0; i < products.length; i++) {
				System.out.println(productService.productbyid(Integer.parseInt(products[i])).getPname() + " " + price[i]
						+ " " + qty[i]);
			}
		}

		return "adminorder";
	}

}
