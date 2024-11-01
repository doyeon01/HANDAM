package com.ssafy.handam.plan.infrastructure.repository;

import com.ssafy.handam.plan.domain.entity.DayPlan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DayPlanJpaRepository extends JpaRepository<DayPlan, Long> {
    List<DayPlan> findAllByTotalPlanId(Long totalPlanId);
}
