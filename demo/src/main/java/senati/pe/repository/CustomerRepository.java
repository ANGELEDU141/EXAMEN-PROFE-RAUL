package senati.pe.repository;

import java.util.Collection;

import senati.pe.entity.Customer;

public interface CustomerRepository {
    public abstract void insert(Customer customer);
    public abstract void update(Customer customer);
    public abstract void delete(Integer customerId);
    public abstract void deleteAll();
    public abstract Customer findById(Integer customerId);
    public abstract Collection<Customer> findAll();
}
