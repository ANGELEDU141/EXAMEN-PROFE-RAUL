package senati.pe.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import senati.pe.entity.Customer;
import senati.pe.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    @Qualifier("customerServiceImpl")
    private CustomerService customerService;

    public CustomerController() {}

    @GetMapping("/listar")
    public String listar_GET(Map map) {
        map.put("bCustomers", customerService.findAll());
        return "Customer/listar";
    }

    @GetMapping("/registrar")
    public String registrar_GET(Model model) {
        Customer customerModel = new Customer();
        model.addAttribute("customer", customerModel);
        return "Customer/registrar";
    }

    @PostMapping("/registrar")
    public String registrar_POST(Customer customer) {
        customerService.insert(customer);
        return "redirect:/customer/listar";
    }

    @GetMapping("/editar/{customerId}")
    public String editar_GET(Model model, @PathVariable Integer customerId) {
        Customer customerDb = customerService.findById(customerId);
        model.addAttribute("customer", customerDb);
        return "Customer/editar";
    }

    @PostMapping("/editar/{customerId}")
    public String editar_POST(Customer customer) {
        customerService.update(customer);
        return "redirect:/customer/listar";
    }

    @GetMapping("/detalle/{customerId}")
    public String detalle_GET(Model model, @PathVariable Integer customerId) {
        Customer customerDb = customerService.findById(customerId);
        model.addAttribute("customer", customerDb);
        return "Customer/detalle";
    }

    @GetMapping("/borrar/{customerId}")
    public String borrar_GET(Model model, @PathVariable Integer customerId) {
        Customer customerDb = customerService.findById(customerId);
        model.addAttribute("customer", customerDb);
        return "Customer/borrar";
    }

    @PostMapping("/borrar/{customerId}")
    public String borrar_POST(@PathVariable Integer customerId) {
        customerService.delete(customerId);
        return "redirect:/customer/listar";
    }
}
