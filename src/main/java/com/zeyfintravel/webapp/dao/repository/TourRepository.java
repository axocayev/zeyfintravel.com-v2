package com.zeyfintravel.webapp.dao.repository;

import com.zeyfintravel.webapp.dao.entity.Tour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TourRepository extends JpaRepository<Tour,Long> {
}
