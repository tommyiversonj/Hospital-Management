package com.pushkal.controller;

import java.math.BigInteger;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.pushkal.domain.*;
import com.pushkal.service.AppointmentService;
import com.pushkal.service.DoctorService;
import com.pushkal.service.PatientService;

@Controller
public class BookingController {

	@Autowired
	private AppointmentService appointmentService;
	@Autowired
	private PatientService patientService;
	@Autowired
	private DoctorService doctorService;

	@RequestMapping("appointentry")
	public ModelAndView showAppointEntryForm() {
		ModelAndView mv = new ModelAndView("appointentry");
		mv.addObject("booking", new AppointmentBooking());
		List<BigInteger> ids = patientService.getAllPatientB();
		mv.addObject("ids", ids);
		return mv;
	}

	@RequestMapping("/saveappointment")
	public ModelAndView saveAppoint(@ModelAttribute("booking") AppointmentBooking booking) {
		ModelAndView mv = new ModelAndView("appointsave");
		appointmentService.addBooking(booking);
		return mv;
	}

	@RequestMapping("/alisthome")
	public String alistHomeP() {
		return "redirect:appointlist";
	}

	/*
	 * @RequestMapping("/saveappointment") public String
	 * saveAppoint(@RequestParam("aid")BigInteger aid,@RequestParam("date")String
	 * date ,@RequestParam("time")String time ,@RequestParam("fees")String fees
	 * ,@RequestParam("diagnosis")String diagnosis ,@RequestParam("treatment")String
	 * treatment) { SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy"); Date
	 * thedate=sdf.parse(date); AppointmentBooking booking=new AppointmentBooking();
	 * booking.setAid(aid); booking.setDate(date); booking.setTime(time);
	 * booking.setFees(fees); booking.setDiagnosis(diagnosis);
	 * booking.setTreatment(treatment); booking.setPatient(patient);
	 * appointmentService.addBooking(booking); return "appointsave"; }
	 */

	@RequestMapping("/adminhomeb")
	public String adminHomeB() {
		return "adminpage";
	}

	@RequestMapping("/appointlist")
	public ModelAndView showAllAppointments() {
		List<AppointmentBooking> bookings = appointmentService.findAllBookings();
		ModelAndView mv = new ModelAndView("appointlist");
		mv.addObject("alist", bookings);
		return mv;
	}

	@RequestMapping("/searchbyappid")
	public ModelAndView showSearchButtonAppointment(@RequestParam("appbox") BigInteger query) {
		ModelAndView mv = new ModelAndView("searchbyappid");
		AppointmentBooking booking = appointmentService.findAppointById(query);
		mv.addObject("booking", booking); // request-scope
		return mv;
	}

}
