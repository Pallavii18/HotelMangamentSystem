package com.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.Model.Room;
import com.project.Model.RoomBooking;
import com.project.Model.User;
import com.project.Repository.RoomBookingRepo;
import com.project.Repository.RoomRepo;
import com.project.Repository.UserRepo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

@Controller
public class UserController {

    @Autowired
    private RoomBookingRepo roombookRepo;

    @Autowired
    private RoomRepo roomRepo;

    @Autowired
    private UserRepo userRepo;

    // Homepage Mapping
    @RequestMapping("/")
    public String home() {
        return "Homapage.jsp";
    }
    

    @RequestMapping("/signup")
    public String processUserRegistration(@ModelAttribute User user, RedirectAttributes redirectAttributes) {
        if (userRepo.findByEmail(user.getEmail()) != null)
        {
            redirectAttributes.addFlashAttribute("error", "Email already registered!");
            return "redirect:/userLogin";
        }
        userRepo.save(user);
        return "redirect:/userLogin";
    }

    @RequestMapping("/userlogin")
    public String Login()
    {
    	return "userLogin.jsp";
    }
   

    @RequestMapping("/userloginfrom")
    public String processUserLogin(@RequestParam String email, @RequestParam String password, RedirectAttributes redirectAttributes,Model m) 
    {
        User user = userRepo.findByEmail(email);
        if (user != null && user.getPassword().equals(password))
        {
        	m.addAttribute("user", user);
        	int id=user.getUserId();
        	System.out.println(id);
        	 redirectAttributes.addFlashAttribute("error", "Invalid credentials!");
        	 return "redirect:/success?id="+id;
        }
        else
        {
        	return "redirect:/userlogin";
        }
    }
    @RequestMapping("/success")
    public String LoginSuccess(@RequestParam("id") int id,Model m)
    {
    	User usr=userRepo.findById(id).orElse(null);
    	System.out.println(id);
    	m.addAttribute("userid", id);
    	if(usr!=null)
    	{
    		m.addAttribute("user", usr);
    		return "UserHomepage.jsp";
    	}
    	else
    	{
    		return "redirect:/userLogin";
    	}
    }
    // Admin Login
    @RequestMapping("/adminLogin")
    public String showAdminLoginForm() {
        return "adminLogin.jsp";
    }

    @PostMapping("/adminLogin")
    public String AdminLogin(@RequestParam String email, @RequestParam String password, RedirectAttributes redirectAttributes) {
        String adminEmail = "pallaviwalke2004@gmail.com";
        String adminPass = "8767";

        if (email.equals(adminEmail) && password.equals(adminPass)) {
            return "redirect:/adminHomepage.jsp";
        }
        redirectAttributes.addFlashAttribute("error", "Invalid admin credentials!");
        return "redirect:/adminLogin";
    }
    
   
    
    @RequestMapping("/Insertinfo")
    public String Addinformation(@ModelAttribute Room room,RedirectAttributes redirectattributes)
    {
    	System.out.println("Recived add info"+room);
    	
    	roomRepo.save(room);
    	redirectattributes.addFlashAttribute("message", "Room info added successfully");
    	return "AddRoom.jsp";
    	
    }
   
    
    @RequestMapping("/RoomReport")
    public String AddRoom(Model m)
    {
    	List<Room> al=roomRepo.findAll();
    	System.out.println("List Of info :  "+al);
    	m.addAttribute("data", al);
    	return "AllRooms.jsp";
    }
    
    @RequestMapping("/delete/{id}")
    public String Delete(@PathVariable int id)
    {
    	roomRepo.deleteById(id);
    	return "redirect:/RoomReport";
    	
    }
    
    @RequestMapping("{id}")
    public String Edit(@PathVariable int id,Model m)
    {
    	Room ab=roomRepo.findById(id).orElse(null);
    	m.addAttribute("sdata", ab);
    	return "RoomUpdate.jsp";
    }
   
    @RequestMapping("/update")
    public String UpdateRoom(@RequestParam int id,@ModelAttribute Room ad)
    {
    	Room ab=roomRepo.findById(id).orElse(null);
    	if(ab!=null)
    	{
    		ab.setRoomNumber(ad.getRoomNumber());
    		ab.setRoomType(ad.getRoomType());
    		ab.setCharges(ad.getCharges());
    		ab.setAvailability(ad.isAvailability());
    		ab.setImage(ad.getImage());
    		
    		roomRepo.save(ab);
    	}
    	return "redirect:/RoomReport";
   
    	
    }
    
    @RequestMapping("/AvailableRoom")
    public String AvailableRoom(@RequestParam("userid") int id)
    {
    	System.out.println("Available room is"+ id);
    	return "redirect:/byid?id="+id;
    }
    @RequestMapping("/byid")
    public String AvailableBusGet(Model m,@RequestParam("id") int id)
    {
    	List<Room> al=roomRepo.findAll();
    	System.out.println(al);
    	m.addAttribute("Bdata", al);
    	m.addAttribute("id", id);
    	return "AvailableRoom.jsp";	
    }
    
    @RequestMapping("/BookRoomBar")
    public String BookRoom(@RequestParam("userid") int id,@RequestParam ("roomid") int roomid)
    {
    	System.out.println("BookRoom id"+id);
    	return "redirect:/BookRoomByid?userid="+id+"&roomid="+roomid;
    }
    
    @RequestMapping("/BookRoomByid")
    public String  BookRoom(@RequestParam("userid")int userid,@RequestParam("roomid")int roomid,Model m)
    {
    	System.out.println("userid"+userid);
    	User usr=userRepo.getById(userid);
    	Room roo=roomRepo.getById(roomid);
    	m.addAttribute("user", usr);
    	m.addAttribute("addroom", roo);
    	return "Roombook.jsp";
    	
    }
    @RequestMapping("/Payment")
    public String PaymentSucess(@RequestParam("userid")int userid,@RequestParam("roomid")int roomid,Model m,@RequestParam("checkInDate") Date checkIn,@RequestParam("checkOutDate")Date checkOut,@RequestParam("totalChargeHidden")int totalCharge)
    {
    	System.out.println("userid"+userid);
    	User usr=userRepo.getById(userid);
    	Room roo=roomRepo.getById(roomid);
    	System.out.println("totalCharge :"+totalCharge);
    	m.addAttribute("user", usr);
    	m.addAttribute("addroom", roo);
    	m.addAttribute("checkIn",checkIn );
    	m.addAttribute("checkOut", checkOut);
    	m.addAttribute("totalCharge", totalCharge);
    	return "Payment.jsp";
    }
    @PostMapping("/paymentSuccess")
    public void handlePayment(HttpServletResponse response, 
                              String customerName, 
                              String email, 
                              String roomType, 
                              String roomNumber, 
                              String checkInDate, 
                              String checkOutDate, 
                              String totalCharges) throws IOException {

        // Set the response headers to indicate a file download
        response.setContentType("text/plain");
        response.setHeader("Content-Disposition", "attachment; filename=PaymentDetails.txt");

        // Write the form data to the response output stream (the text file)
        PrintWriter writer = response.getWriter();
        writer.println("     Recipt     ");
        writer.println("============================");
        writer.println("Customer Name: " + customerName);
        writer.println("Email: " + email);
        writer.println("Room Type: " + roomType);
        writer.println("Room Number: " + roomNumber);
        writer.println("Check-In Date: " + checkInDate);
        writer.println("Check-Out Date: " + checkOutDate);
        writer.println("Total Charges: " + totalCharges);
        writer.println("============================");

        writer.close();
    }

    // Handle Contact Form Submission
    @RequestMapping("/sendContact")
    public String handleContactForm(@RequestParam String name, @RequestParam String email, @RequestParam String message, RedirectAttributes redirectAttributes)
    {
       
        System.out.println("Contact Form Submitted:");
        System.out.println("Name: " + name);
        System.out.println("Email: " + email);
        System.out.println("Message: " + message);

        redirectAttributes.addFlashAttribute("success", "Message sent successfully!");
        return "redirect:/Homapage.jsp";
    }
    
    
}