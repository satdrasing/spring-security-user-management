package com.satendra.permission.dao;

import com.satendra.permission.entity.RoleEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<RoleEntity, Integer> {

    RoleEntity findByRole(String role);
}
