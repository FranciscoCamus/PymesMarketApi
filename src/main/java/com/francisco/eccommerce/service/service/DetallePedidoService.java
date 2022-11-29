package com.francisco.eccommerce.service.service;

import com.francisco.eccommerce.service.entity.DetallePedido;
import com.francisco.eccommerce.service.repository.DetallePedidoRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class DetallePedidoService {
    private final DetallePedidoRepository repository;

    public DetallePedidoService(DetallePedidoRepository repository) {
        this.repository = repository;
    }

    //Metodo para guardar detalles del pedido
    public void guardarDetalles(Iterable<DetallePedido> detalle) {
        this.repository.saveAll(detalle);
    }
}
