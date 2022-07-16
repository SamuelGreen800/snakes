package com.snakes.controllers;

import java.io.IOException;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.snakes.models.Snake;
import com.snakes.repositories.SnakeRepository;
import com.snakes.services.SnakeService;
import com.snakes.services.UserService;




@Controller

public class SnakeController {
	@Autowired
	private SnakeService snakeService;
	@Autowired 
	UserService userService;
	@Autowired
	private SnakeRepository repo;
//	public static String uploadDirectory = System.getProperty("snake.dir") + "/uploads";

	//===============================================All Guest Routes ==================================================================
	
	@GetMapping("/")
	public String landing() {
		return "landing1.jsp";
	}


	@GetMapping("/sales")
	public String sales(@ModelAttribute("snake") Snake snake, HttpSession session, Model model) {
		model.addAttribute("snakes", snakeService.allSnakes());
		
		return "forSale.jsp";
	}
	
	@GetMapping("/species")
	public String species() {
		return "species.jsp";
	}
	
	@GetMapping("/contact")
	public String contact() {
		return "contactUs.jsp";
	}
	
	@GetMapping("/care")
	public String care() {
		return "care.jsp";
	}
	
	
	
	
	
	
	
	//=============================================== All Admin Routes==============================================================
	@GetMapping("/admin")
	public String dashboard(@ModelAttribute("snake") Snake snake, HttpSession session, Model model) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/logout";
		}
		
		Long userId = (Long) session.getAttribute("userId");
		model.addAttribute("user", userService.findById(userId));
		model.addAttribute("snakes", snakeService.allSnakes());
		
		return "dashboard2.jsp";
	}
	
	@GetMapping("/admin/new")
	public String newSnake(@ModelAttribute("snake") Snake snake, Model model, HttpSession session) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/logout";
		}
		Snake newSnake = new Snake();
		model.addAttribute("snake", newSnake);
		return "newSnake.jsp";
	}
	
	
	
	@PostMapping("/admin/new")
	public String addNewSnake(@Valid @ModelAttribute("snake") Snake newSnake, BindingResult result, HttpSession session, @RequestParam("photos") MultipartFile multipartFile) throws IOException
	{
		
		if(session.getAttribute("userId") == null) {
			return "redirect:/logout";
		}
		
		if(result.hasErrors()) {
			return "newSnake.jsp";
		}
		
		else {
			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
			String uploadDir = "user-photos/" + newSnake.getId();
			System.out.println(fileName);
			System.out.println(uploadDir);
			
			newSnake.setPhotos(fileName);
			snakeService.addSnake(newSnake);
			
			FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			
			
			return "redirect:/admin";
		}
	}
	
	
	
	
	
//	@PostMapping("/admin/new")
//	public String addNewSnake(@Valid @ModelAttribute("snake") Snake snake, BindingResult result, HttpSession session) {
//		
//		if(session.getAttribute("userId") == null) {
//			return "redirect:/logout";
//		}
//		
//		if(result.hasErrors()) {
//			return "newSnake.jsp";
//		}else {
//			Snake newSnake = new Snake(snake.getName(), snake.getSpecies(), snake.getBirthdate(), snake.getSex(), snake.getDescription());
//			snakeService.addSnake(newSnake);
//			return "redirect:/admin";
//		}
//	}
	

	
	@RequestMapping("/admin/delete/{id}")
	public String deleteShow(@PathVariable("id") Long id, HttpSession session, Model model) {
		
		if(session.getAttribute("userId") == null) {
			return "redirect:/logout";
		}
		
		
		Snake snake = snakeService.findById(id);
		snakeService.deleteSnake(snake);
		return "redirect:/admin";
	} 
	
	
	
	
	
	@GetMapping("/admin/{id}")
	public String editSnake(@PathVariable("id") Long id, HttpSession session, Model model) {
		
		if(session.getAttribute("userId") == null) {
			return "redirect:/logout";
		}
		
		Snake snake = snakeService.findById(id);
		model.addAttribute("snake", snake);
		return "editSnake.jsp";
	}
	
	@GetMapping("/admin/view/{id}")
	public String viewSnake(@PathVariable("id") Long id, HttpSession session, Model model, @ModelAttribute("snake") Snake snake ) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/logout";
		}
		Snake oneSnake = snakeService.findById(id);
		model.addAttribute("oneSnake", oneSnake);
		return "viewOneSnake.jsp";
	}
	
	
	@PostMapping("/admin/img/{id}")
    public String saveUser(@PathVariable("id") Long id, Snake oneSnake,
            @RequestParam("image") MultipartFile multipartFile) throws IOException {
         
        String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
        oneSnake.setPhotos(fileName);
         
        Snake savedSnake = repo.save(oneSnake);
 
        String uploadDir = "snake-photos/" + savedSnake.getId();
 
        FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
         
        return "redirect:/admin";
    }

	
	
	
	
	
	@PostMapping("/admin/{id}")
	public String updateSnake(
			@PathVariable("id") Long id, 
			@Valid @ModelAttribute("snake") Snake snake, 
			BindingResult result, 
			HttpSession session) {
		
		if(session.getAttribute("userId") == null) {
			return "redirect:/logout";
		}
		
		if(result.hasErrors()) {
			return "editSnake.jsp";
		}else {
			
			snakeService.updateSnake(snake);
			return "redirect:/admin";
		}
		}
	

//	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
//	public String submit(@RequestParam("pics") MultipartFile pics, ModelMap modelMap, @Valid @ModelAttribute("snake") Snake snake, BindingResult result, HttpSession session) {
//		
//		if(session.getAttribute("userId") == null) {
//			return "redirect:/logout";
//		}
//		if(result.hasErrors()) {
//			return "viewOneSnake.jsp";
//		}
//		
//		modelMap.addAttribute("pics", pics);
//		snakeService.updateSnake(snake);
//		
//		return "redirect:/admin";
//                                     
//	}



}






