package com.francisco.eccommerce.service.controller;

import com.francisco.eccommerce.service.entity.dto.GenerarPedidoDTO;
import com.francisco.eccommerce.service.entity.dto.PedidoConDetallesDTO;
import com.francisco.eccommerce.service.service.PedidoService;
import com.francisco.eccommerce.service.utlis.GenericResponse;
import org.springframework.core.io.Resource;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/pedido")
public class PedidoController {
    private final PedidoService service;

    public PedidoController(PedidoService service) {
        this.service = service;
    }
    //Listar pedidos con detalles
    @GetMapping("/misPedidos/{idCli}")
    public GenericResponse<List<PedidoConDetallesDTO>> devolverMisComprasConDetalle(@PathVariable int idCli) {
        return this.service.devolverMisCompras(idCli);
    }
    //Guardar Pedido
    @PostMapping
    public GenericResponse guardarPedido(@RequestBody GenerarPedidoDTO dto) {
        return this.service.guardarPedido(dto);
    }
    //Anular pedido
    @DeleteMapping("/{id}")
    public GenericResponse anularPedido(@PathVariable int id) {
        return this.service.anularPedido(id);
    }

    //Exportar pdf de orden
    @GetMapping("exportInvoice")
    public ResponseEntity<Resource> exportInvoice(@RequestParam int idCli, @RequestParam int idOrden) {
        return this.service.exportInvoice(idCli, idOrden);
    }
}
