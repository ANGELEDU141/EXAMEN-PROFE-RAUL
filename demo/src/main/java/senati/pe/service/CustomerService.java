package senati.pe.service;

import java.util.Collection;

import senati.pe.entity.Customer;

public interface CustomerService {
    public abstract void insert(Customer customer);
    public abstract void update(Customer customer);
    public abstract void delete(Integer customerId);
    public abstract void deleteAll();
    public abstract Customer findById(Integer customerId);
    public abstract Collection<Customer> findAll();
}
