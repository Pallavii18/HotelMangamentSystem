package com.project.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.Model.RoomBooking;

@Repository
public interface RoomBookingRepo extends JpaRepository<RoomBooking, Long> {

}
