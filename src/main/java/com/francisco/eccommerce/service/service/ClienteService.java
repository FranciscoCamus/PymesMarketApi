package com.francisco.eccommerce.service.service;

import com.francisco.eccommerce.service.entity.Cliente;
import com.francisco.eccommerce.service.repository.ClienteRepository;
import com.francisco.eccommerce.service.utlis.GenericResponse;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

import static com.francisco.eccommerce.service.utlis.Global.*;

@Service
@Transactional
public class ClienteService {
    private final ClienteRepository repository;

    public ClienteService(ClienteRepository repository) {
        this.repository = repository;
    }

    //Método para guardar y actualizar cliente
    public GenericResponse save(Cliente c) {
        Optional<Cliente> opt = this.repository.findById(c.getId());
        int idf = opt.isPresent() ? opt.get().getId() : 0;
        if(idf == 0) {
            if(repository.existByDoc(c.getNumDoc().trim()) == 1) {
                return new GenericResponse(TIPO_RESULT, RPTA_WARNING, "Lo sentimos: " +
                        "Ya existe un cliente con es mismo número de documento, y si el problema" +
                        " persiste comuniquese con el soporte técnico", null);
            }else {
                //Guarda
                c.setId(idf);
                return new GenericResponse(TIPO_DATA, RPTA_OK, "Cliente registrado correctamente", this.repository.save(c));
            }
        }else {
            //Actualizar Registro
            if(repository.existByDocForUpdate(c.getNumDoc().trim(), c.getId()) == 1) {
                return new GenericResponse(TIPO_RESULT, RPTA_WARNING, "Error: Ya existe un cliente con esos mismos datos" +
                        "verifique e intente de nuevo", null);
            }else {
                //Actualiza revisar
                c.setId(idf);
                return new GenericResponse(TIPO_DATA, RPTA_OK, "Datos del cliente actualizado", this.repository.save(c));
            }
        }

    }

}
