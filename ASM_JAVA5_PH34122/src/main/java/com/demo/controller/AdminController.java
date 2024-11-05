package com.demo.controller;

import com.demo.model.Account;
import com.demo.model.Category;
import com.demo.model.Product;
import com.demo.repo.AccountRepo;
import com.demo.repo.CategoryRepo;
import com.demo.repo.ProductRepo;
import jakarta.servlet.ServletContext;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/quan-ly")
public class AdminController {
    @Autowired
    ProductRepo repoSP;
    @Autowired
    AccountRepo repoLG;
    @Autowired
    CategoryRepo repoCT;
    //  Category
    @ModelAttribute("listLoai")
    public List<Category> getAll(){
        return repoCT.findAll();
    }
    @GetMapping("/admin")
    public String listCategory(Model model){
        model.addAttribute("list", repoCT.findAll());
        model.addAttribute("caterori",new Category());
        return "admin/category/list";
    }

    @GetMapping("/admin/category/create")
    public String createCategory(Model model){
        model.addAttribute("caterori", new Category());
        return "admin/category/form";
    }
    @PostMapping("/admin/category/create")
    public String createCategory(@Valid @ModelAttribute("caterori") Category category, BindingResult rs) {
        if(rs.hasErrors()){
            return "admin/category/form";
        }else {

            repoCT.save(category);
        }
       return "redirect:/quan-ly/admin";

    }

    @GetMapping("/admin/category/update/{id}")
    public String editCategory(@PathVariable String id, Model model){
        Category category = repoCT.findById(id).orElse(null);
        model.addAttribute("caterori",category);
        return "admin/category/form";
    }
    @PostMapping("/admin/category/update/{id}")
    public String editCategory(@Valid @PathVariable String id, @ModelAttribute("caterori") Category category, BindingResult rs){
        if(rs.hasErrors()){
            return "admin/category/form";
        }else {
            category.setId(id);
            repoCT.save(category);
        }
        return "redirect:/quan-ly/admin";
    }
@GetMapping("/admin/category/delete/{id}")
public String delete(@PathVariable String id){
        repoCT.deleteById(id);
        return "redirect:/quan-ly/admin";
}
    //  Product
    @GetMapping("/admin/product")
    public String listProduct(Model model){
//        Page<Product> page = repoSP.search("%" + keyword + "%");
        Sort sort = Sort.by(Sort.Order.desc("price"));
//        Page<Product> page = repoSP.search(keyword, PageRequest.of(0, 10, Sort.by(Sort.Order.desc("price"))));
        model.addAttribute("listProduct",repoSP.findAll());
        model.addAttribute("sp", new Product());
        return "admin/product/list";
    }

    @GetMapping("/admin/product/create")
    public String createProduct(Model model){
        model.addAttribute("sp",new Product());
        return "admin/product/form";
    }
    @PostMapping("/admin/product/create")
    public String  createProduct(@Valid @ModelAttribute("sp") Product product, BindingResult rs){
        if(rs.hasErrors()){
            return "admin/product/form";
        }else {
            repoSP.save(product);

        }
        return "redirect:/quan-ly/admin/product";
    }
    @Autowired
    ServletContext app;
    @PostMapping("/upload")
    public String save(@RequestParam MultipartFile attach) throws IOException {
        if(!attach.isEmpty()){
            String filename = attach.getOriginalFilename();
            String saveTo = app.getRealPath("/image/" + filename);
            File file = new File(saveTo);
            attach.transferTo(file);
            return "redirect:/image/" + filename;
        }
        return "admin/product/form";
    }

    @GetMapping("/admin/product/update/{id}")
    public String editProduct(@PathVariable int id ,Model model ){
        Product product = repoSP.findById(id).orElse(null);
        model.addAttribute("sp",product);
        return "admin/product/form";
    }
    @PostMapping("/admin/product/update/{id}")
    public String editProduct(@Valid @PathVariable int id,@ModelAttribute("sp")Product product, BindingResult rs){
        if(rs.hasErrors()){
            return "admin/product/form";
        }else {
            product.setId(id);
            repoSP.save(product);

        }
        return "redirect:/quan-ly/admin/product";
    }
    @GetMapping("/product/delete/{id}")
    public String delete(@PathVariable int id){
        repoSP.deleteById(id);
        return "redirect:/quan-ly/admin/product";
    }

    //  Account
    @GetMapping("/admin/account")
    public String listAccount(Model model){
        model.addAttribute("listTK", repoLG.findAll());
        model.addAttribute("tk", new Account());
        return "admin/account/list";
    }

    @GetMapping("/admin/account/create")
    public String createAccount(Model model){
        model.addAttribute("tk",new Account());
        return "admin/account/form";
    }
    @PostMapping("/admin/account/create")
    public String createAccount(@Valid @ModelAttribute("tk")Account account, BindingResult rs){
        if(rs.hasErrors()){
            return "admin/account/form";
        }else {
            repoLG.save(account);
        }
        return "redirect:/quan-ly/admin/account";
    }

    @GetMapping("/admin/account/update/{username}")
    public String editAccount(@PathVariable String username, Model model){
        Account account = repoLG.findById(username).orElse(null);
        model.addAttribute("tk",account);
        return "admin/account/form";
    }
    @PostMapping("/admin/account/update/{username}")
    public String editAccount(@Valid @PathVariable String username, @ModelAttribute("tk") Account account,BindingResult rs){
        if(rs.hasErrors()){
            return "admin/account/form";
        }else {
            account.setUsername(username);
            repoLG.save(account);

        }
        return "redirect:/quan-ly/admin/account";
    }
    @GetMapping("/admin/account/delete/{username}")
    public String deleteAccout(@PathVariable String username){
        repoLG.deleteById(username);
        return "redirect:/quan-ly/admin/account";
    }
    @GetMapping("/page") // localhost:8080/product/page?p=0
    public String pagination(@RequestParam(defaultValue = "0") int p, Model model) {
        Sort sort = Sort.by(Sort.Order.desc("price"));
        Pageable pageable = PageRequest.of(p, 5, sort);
        Page<Product> page = repoSP.findAll(pageable);
        List<Product> list = page.getContent();

        model.addAttribute("listProduct", list);
        model.addAttribute("sp", new Product());
        model.addAttribute("page", page);

        return "admin/product/list";
    }
    @GetMapping("/gioithieu")
    public String viewGioiThieu(){
        return "admin/customer/about";
    }
}
