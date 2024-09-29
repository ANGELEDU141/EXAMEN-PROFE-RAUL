package senati.pe.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import senati.pe.entity.Customer;
import senati.pe.repository.CustomerRepository;

@Component
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    @Qualifier("customerRepositoryImpl")
    private CustomerRepository repository;

    public CustomerServiceImpl() {}

    @Override
    public void insert(Customer customer) {
        repository.insert(customer);
    }

    @Override
    public void update(Customer customer) {
        repository.update(customer);
    }

    @Override
    public void delete(Integer customerId) {
        repository.delete(customerId);
    }

    @Override
    public void deleteAll() {
        repository.deleteAll();
    }

    @Override
    public Customer findById(Integer customerId) {
        return repository.findById(customerId);
    }

    @Override
    public Collection<Customer> findAll() {
        return repository.findAll();
    }
}
