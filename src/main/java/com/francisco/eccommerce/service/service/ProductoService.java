package com.francisco.eccommerce.service.service;

import com.francisco.eccommerce.service.repository.ProductoRepository;
import com.francisco.eccommerce.service.utlis.GenericResponse;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

import static com.francisco.eccommerce.service.utlis.Global.*;

@Service
@Transactional
public class ProductoService {
    private final ProductoRepository repository;

    public ProductoService(ProductoRepository repository) {
        this.repository = repository;
    }

    public GenericResponse listarProductosRecomendados() {
        return new GenericResponse(TIPO_DATA, RPTA_OK, OPERACION_CORRECTA, this.repository.listarProductosRecomendados());
    }

    public GenericResponse listarProductosPorCategoria(int idC) {
        return new GenericResponse(TIPO_DATA, RPTA_OK, OPERACION_CORRECTA, this.repository.listarProductosPorCategoria(idC));

    }
}
