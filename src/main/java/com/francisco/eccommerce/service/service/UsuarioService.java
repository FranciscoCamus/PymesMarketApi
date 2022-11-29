package com.francisco.eccommerce.service.service;

import com.francisco.eccommerce.service.entity.Usuario;
import com.francisco.eccommerce.service.repository.UsuarioRepository;
import com.francisco.eccommerce.service.utlis.GenericResponse;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

import static com.francisco.eccommerce.service.utlis.Global.*;

@Service
@Transactional
public class UsuarioService {
    private final UsuarioRepository repository;

    public UsuarioService(UsuarioRepository repository) {
        this.repository = repository;
    }
    //Metodo para iniciar sesión
    public GenericResponse<Usuario> login(String email, String contrasenia){
        Optional<Usuario> optU = this.repository.login(email, contrasenia);
        if(optU.isPresent()){
            return new GenericResponse<Usuario>(TIPO_AUTH, RPTA_OK, "Haz iniciado sesión correctamente", optU.get());
        }else {
            return new GenericResponse<Usuario>(TIPO_AUTH, RPTA_WARNING, "Lo sentimos ese usuario no existe", new Usuario());
        }
    }

    //Método para guardar credenciales del usuario
    public GenericResponse guardarUsuario(Usuario u) {
        Optional<Usuario> optU= this.repository.findById(u.getId());
        int idf = optU.isPresent() ? optU.get().getId() : 0;
        if(idf == 0) {
            return new GenericResponse(TIPO_DATA, RPTA_OK, "Usuario Registrado correctamente", this.repository.save(u));
        }else {
            return new GenericResponse(TIPO_DATA, RPTA_OK, "Datos del Usuario actualizados", this.repository.save(u));
        }
    }
}
