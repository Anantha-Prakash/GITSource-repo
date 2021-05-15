package com.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class reservationController {
	
	@RequestMapping("/reservation")
	public String bookingForm(Model model)
	{
		Reservation res=new Reservation();
		model.addAttribute("reservation", res);
		return "reservation-page";
	}
	@RequestMapping("/submitForm")
	public String submitForm(@ModelAttribute("reservation")Reservation res)
	{
		return "confirmation-page";
	}
}
