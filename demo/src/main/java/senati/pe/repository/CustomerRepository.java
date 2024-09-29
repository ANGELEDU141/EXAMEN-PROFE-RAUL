package senati.pe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import senati.pe.entity.Customer;


@Repository
public interface CustomerRepository  extends JpaRepository<Customer, Integer> {


}

   
     
