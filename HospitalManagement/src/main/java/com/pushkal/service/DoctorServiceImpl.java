package com.pushkal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pushkal.dao.DoctorDAO;
import com.pushkal.domain.AppointmentBooking;
import com.pushkal.domain.Doctor;
import com.pushkal.domain.Patient;

@Service
public class DoctorServiceImpl implements DoctorService {
	@Autowired
	private DoctorDAO dao;

	// For Admin

	public Doctor verifyUserDoctor(Doctor doctor) {
		return dao.verifyDoctor(doctor);
	}

	public void addDoctor(Doctor doctor) {
		dao.saveDoctor(doctor);
	}

	public List<Doctor> showAllDoctors() {
		return dao.findAllDoctor();
	}

	// For Doctor Page(Patient)
	public void addDocPatient(Patient patient) {
		dao.saveDocPatient(patient);
	}

	public List<Patient> findAllPatientsByDoctor(String email) {

		return dao.getAllPatientByDoctor(email);
	}

	// For Doctor Page(Appointment)
	public void addDocAppointment(AppointmentBooking appointmentBooking) {
		dao.saveDocAppointment(appointmentBooking);
	}

	public List<AppointmentBooking> findAllAppointmentsByDoctor(String email) {
		return dao.getAllAppointmentByDoctor(email);
	}

}