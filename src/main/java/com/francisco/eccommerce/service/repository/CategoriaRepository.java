package com.francisco.eccommerce.service.repository;

import com.francisco.eccommerce.service.entity.Categoria;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface CategoriaRepository extends CrudRepository<Categoria, Integer> {
    @Query("SELECT C FROM Categoria C where C.vigencia IS TRUE")
    Iterable<Categoria> listarCategoriasActivas();
}
