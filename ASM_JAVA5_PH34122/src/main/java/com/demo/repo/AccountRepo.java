package com.demo.repo;

import com.demo.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepo extends JpaRepository<Account, String> {
    Account findByUsernameAndPassword(String username, String password);
}
