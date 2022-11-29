package com.francisco.eccommerce.service.service;

import com.francisco.eccommerce.service.repository.CategoriaRepository;
import com.francisco.eccommerce.service.utlis.GenericResponse;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

import static com.francisco.eccommerce.service.utlis.Global.*;

@Service
@Transactional
public class CategoriaService {
    private final CategoriaRepository repository;

    public CategoriaService(CategoriaRepository repository) {
        this.repository = repository;
    }

    public GenericResponse listarCategoriasActivas() {
        return new GenericResponse(TIPO_DATA, RPTA_OK, OPERACION_CORRECTA, this.repository.listarCategoriasActivas());

    }
}
