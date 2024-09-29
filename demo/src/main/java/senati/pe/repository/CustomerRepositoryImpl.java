package senati.pe.repository;


import java.time.LocalDate;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import senati.pe.entity.Customer;

@Component
public class CustomerRepositoryImpl implements CustomerRepository {
    private static final Map<Integer, Customer> customers = new HashMap<>();
    static {
        Customer customer1 = new Customer(1, "John", "Doe", "Company A", "123 Street", "City A", "State A", "Country A", "123456789", "john.doe@example.com", LocalDate.of(2023, 1, 1));
        Customer customer2 = new Customer(2, "Jane", "Smith", "Company B", "456 Avenue", "City B", "State B", "Country B", "987654321", "jane.smith@example.com", LocalDate.of(2023, 2, 1));
        customers.put(customer1.getCustomerId(), customer1);
        customers.put(customer2.getCustomerId(), customer2);
    }

    @Override
    public void insert(Customer customer) {
        Integer newID = customers.size() + 1;
        customer.setCustomerId(newID);
        customers.put(customer.getCustomerId(), customer);
    }

    @Override
    public void update(Customer customer) {
        customers.put(customer.getCustomerId(), customer);
    }

    @Override
    public void delete(Integer customerId) {
        customers.remove(customerId);
    }

    @Override
    public void deleteAll() {
        customers.clear();
    }

    @Override
    public Customer findById(Integer customerId) {
        return customers.get(customerId);
    }

    @Override
    public Collection<Customer> findAll() {
        return customers.values();
    }
}
