package senati.pe.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import senati.pe.entity.Customer;
import senati.pe.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerRepository springData;

    public CustomerServiceImpl() {}

    @Override
    @Transactional
    public void insert(Customer customer) {
        springData.save(customer);
    }

    @Override
    @Transactional
    public void update(Customer customer) {
        springData.save(customer);
    }

    @Override
    @Transactional
    public void delete(Integer customerId) {
        springData.deleteById(customerId);
    }

    @Override
    @Transactional
    public void deleteAll() {
        springData.deleteAll();
    }



    @Override
    @Transactional(readOnly = true)
    public Customer findById(Integer customerId) {
        return springData.findById(customerId).orElse(null);
    }

    @Override
    @Transactional(readOnly = true)
    public Collection<Customer> findAll() {
        return springData.findAll();
    }
}
