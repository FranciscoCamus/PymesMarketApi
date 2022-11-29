package com.francisco.eccommerce.service.controller;

import com.francisco.eccommerce.service.entity.Cliente;
import com.francisco.eccommerce.service.service.ClienteService;
import com.francisco.eccommerce.service.utlis.GenericResponse;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping("api/cliente")
public class ClienteController {
    private final ClienteService service;

    public ClienteController(ClienteService service) {
        this.service = service;
    }

    @PostMapping()
    public GenericResponse save(@Valid @RequestBody Cliente c) {
        return this.service.save(c);
    }

    @PutMapping("/{id}")
    public GenericResponse update(@PathVariable int id, @Valid @RequestBody Cliente c) {
        c.setId(id);
        return this.service.save(c);
    }
}
