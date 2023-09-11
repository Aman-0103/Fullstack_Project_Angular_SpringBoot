package com.Spring;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;


@RestController
@RequestMapping("api")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class HomeController 
{
	@Autowired
	categoryService catserv;

	@Autowired
	servicesServ serviceserv;

	@Autowired
	collegeService colserv;

	@Autowired
	collegebycategoryServ colcatserv;

	@Autowired
	contactService contserv;

	@Autowired
	courseService courserv;

	@Autowired
	coursebycategoryServ courcatserv;
	
	@Autowired
	usersService userserv;
	
	@Autowired
	EmailService emserv;

	@Autowired
	private orderServices orderservices;

	
	
	/*****************************  Category Details *********************************/
	
	
	@GetMapping("allcat")
	@CrossOrigin(origins = "http://localhost:4200/")
	public List<category> getAllCat()
	{
		return catserv.getAllCategory();
	}
	
	
	@GetMapping("catbyid/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public category getById(@PathVariable int id)
	{
		return catserv.getById(id);
	}
	
	
	@PostMapping("addcat")  // insert the new records
	@CrossOrigin(origins = "http://localhost:4200/")
	public void addCategory(@RequestBody category c)
	{
		catserv.addCategory(c);		
	}
	
	@PutMapping("updatecat/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public void updateCategory(@RequestBody category c,@PathVariable int id)
	{
		catserv.updateCatgory(c, id);
	}
	
		
	
	@DeleteMapping("deletecat/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public void deleteCategory(@PathVariable int id)
	{
		catserv.delById(id);
	}
		
	// Pagination 
	
	
	@GetMapping("allcatbypage")	
	public Page<category> allCatByPage(@RequestParam(name="page",defaultValue="0") int page,
			@RequestParam(name="size",defaultValue="5") int size)
	{
		return catserv.allcatbypage(page, size);
	}



	/*****************************  Service Details *********************************/


	@GetMapping("allserv")
	@CrossOrigin(origins = "http://localhost:4200/")
	public List<services> getAllServ()
	{
		return serviceserv.getAllServices();
	}


	@GetMapping("servbyid/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public services getServById(@PathVariable int id)
	{
		return serviceserv.getServById(id);
	}


	@PostMapping("addserv")  // insert the new records
	@CrossOrigin(origins = "http://localhost:4200/")
	public void addService(@RequestBody services s)
	{
		serviceserv.addService(s);
	}

	@PutMapping("updateserv/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public void updateService(@RequestBody services s,@PathVariable int id)
	{
		serviceserv.updateService(s, id);
	}



	@DeleteMapping("deleteserv/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public void deleteService(@PathVariable int id)
	{
		serviceserv.delById(id);
	}

	// Pagination


	@GetMapping("allservbypage")
	public Page<services> allServByPage(@RequestParam(name="page",defaultValue="0") int page,
									   @RequestParam(name="size",defaultValue="5") int size)
	{
		return serviceserv.allservbypage(page, size);
	}
	



	/***************************************  College Details *************************************/




	@PostMapping("addcollege")  // insert the new records
	@CrossOrigin(origins = "http://localhost:4200/")
	public void addCollege(@RequestParam("pic")MultipartFile file,
						   @RequestParam("clnm")String nm,
						   @RequestParam("seats")int sts,
						   @RequestParam("descrip")String de,
						   @RequestParam("location")String lc,
						   @RequestParam("ct_catid")int ct) throws IOException
	{
		college cl = new college();
		category c = catserv.getById(ct);

		cl.setClnm(nm);
		cl.setSeats(sts);
		cl.setDescrip(de);
		cl.setLocation(lc);
		cl.setCt(c);
		cl.setPic(file.getBytes());

		colserv.addcollege(cl);
	}


	@GetMapping("allcollege")
	@CrossOrigin(origins = "http://localhost:4200/")
	public List<college> getAllcollege()
	{
		return colserv.getAllcollege();
	}


	@GetMapping("colbyid/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public Optional<college> getColById(@PathVariable int id)
	{
		return colserv.getById(id);
	}


	@PutMapping("updatecol/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public void updateCollege(@RequestBody college c,@PathVariable int id)
	{
		colserv.updateCollege(c, id);
	}



	@DeleteMapping("deletecol/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public void deleteCollege(@PathVariable int id)
	{
		colserv.delById(id);
	}

	// Pagination


	@GetMapping("allcolbypage")
	public Page<college> allColByPage(@RequestParam(name="page",defaultValue="0") int page,
										@RequestParam(name="size",defaultValue="5") int size)
	{
		return colserv.allcolbypage(page, size);
	}




	/***************************************  Contact Details *************************************/




	@PostMapping("addContact")  // insert the new records
	@CrossOrigin(origins = "http://localhost:4200/")
	public void addContact(@RequestParam("contactname")String nm,
						   @RequestParam("email")String eml,
						   @RequestParam("phone")String ph,
						   @RequestParam("message")String mg,
						   @RequestParam("sr_serviceid")int sr,
						   @RequestParam("ct_catid")int ct) throws IOException
	{
		contact cnt = new contact();
		category c = catserv.getById(ct);
		services s = serviceserv.getServById(sr);

		cnt.setContactname(nm);
		cnt.setEmail(eml);
		cnt.setPhone(ph);
		cnt.setMessage(mg);
		cnt.setCt(c);
		cnt.setSr(s);

		contserv.addContact(cnt);

	}


	@GetMapping("allContact")
	@CrossOrigin(origins = "http://localhost:4200/")
	public List<contact> getAllContact()
	{
		return contserv.getAllContact();
	}


	@GetMapping("contbyid/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public Optional<contact> getContById(@PathVariable int id)
	{
		return contserv.getContById(id);
	}


	@PutMapping("updatecont/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public void updateContact(@RequestBody contact c,@PathVariable int id)
	{
		contserv.updateContact(c, id);
	}



	@DeleteMapping("deletecont/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public void deleteContact(@PathVariable int id)
	{
		contserv.delById(id);
	}

	// Pagination


	@GetMapping("allcontbypage")
	public Page<contact> allContByPage(@RequestParam(name="page",defaultValue="0") int page,
									  @RequestParam(name="size",defaultValue="5") int size)
	{
		return contserv.allcontbypage(page, size);
	}



	/***************************************  Course Details *************************************/




	@PostMapping("addCourse")  // insert the new records
	@CrossOrigin(origins = "http://localhost:4200/")
	public void addCourse(@RequestParam("pic")MultipartFile file,
						   @RequestParam("crnm")String nm,
						   @RequestParam("seats")int sts,
						   @RequestParam("descrip")String de,
						   @RequestParam("ct_catid")int ct) throws IOException
	{
		courses cr = new courses();
		category c = catserv.getById(ct);

		cr.setCrnm(nm);
		cr.setSeats(sts);
		cr.setDescrip(de);
		cr.setCt(c);
		cr.setPic(file.getBytes());

		courserv.addCourse(cr);
	}


	@GetMapping("allCourses")
	@CrossOrigin(origins = "http://localhost:4200/")
	public List<courses> getAllCourses()
	{
		return courserv.getAllCourses();
	}


	@GetMapping("courbyid/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public Optional<courses> getCourById(@PathVariable int id)
	{
		return courserv.getCourById(id);
	}


	@PutMapping("updatecour/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public void updateCourse(@RequestBody courses c,@PathVariable int id)
	{
		courserv.updateCourse(c, id);
	}



	@DeleteMapping("deletecour/{id}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public void deleteCourse(@PathVariable int id)
	{
		courserv.delCourById(id);
	}

	// Pagination


	@GetMapping("allcourbypage")
	public Page<courses> allCourByPage(@RequestParam(name="page",defaultValue="0") int page,
									   @RequestParam(name="size",defaultValue="5") int size)
	{
		return courserv.allcourbypage(page, size);
	}


	
	
	/************************ store procedure call **********************/


	@GetMapping("allcolcat/{catid}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public List<collegebycategory> getAllColCat(@PathVariable("catid")int catid)
	{
		return colcatserv.collegebycategory(catid);
	}


	@GetMapping("allcourcat/{catid}")
	@CrossOrigin(origins = "http://localhost:4200/")
	public List<coursebycategory> getAllCourCat(@PathVariable("catid")int catid)
	{
		return courcatserv.coursebycategory(catid);
	}
	
	
	/***************************  User Authentication *******************************/
	
	@PostMapping("adduser")
	@CrossOrigin(origins = "http://localhost:4200/")
	public boolean addusers(@RequestBody users u)
	{
		return userserv.addUser(u);
	}


	@PostMapping("checkuser")
	@CrossOrigin(origins = "http://localhost:4200/")
	public boolean checkuser(@RequestBody users u) throws UserNotFoundException
	{
		users u1 =userserv.findUsrnm(u.getUsername());
		if(!u1.getUsername().isEmpty())
				return true;
		else
				return false;


	}
	
	/********************************  Spring Boot Email Service *******************************************/
	
	@RequestMapping("/sendmail")
	@CrossOrigin(origins = "http://localhost:4200/")
	public ResponseEntity<String> checkEmail(@RequestBody String em)
	{
	emserv.sendEmail(em, "Check", "Checking Email");
	return new ResponseEntity<>("Message Send",HttpStatus.CREATED);
	}

	/*****************************  RazorPay EndPoint ********************/
	
	@GetMapping("/getTransaction/{amount}")
	@CrossOrigin(origins = "*")
	public orderTransactionDetails getTransaction(@PathVariable("amount") 
	double amount)
	{
	return orderservices.orderCreateTransaction(amount);
	}
	
}



