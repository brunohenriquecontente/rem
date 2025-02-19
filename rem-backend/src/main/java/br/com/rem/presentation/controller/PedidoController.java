package br.com.rem.presentation.controller;


import br.com.rem.presentation.dto.PedidoDTO;
import br.com.rem.service.PedidoService;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/pedido")
public class PedidoController {

    private final PedidoService produtoService;

    public PedidoController(PedidoService produtoService) {
        this.produtoService = produtoService;
    }

    @GetMapping
    public Page<PedidoDTO> buscarTodosPedidos(
            PedidoDTO pedidoDTO,
            @RequestParam(value = "page", required = false, defaultValue = "0") Integer page,
            @RequestParam(value = "size", required = false, defaultValue = "10") Integer size,
            @RequestParam(value = "sort", required = false, defaultValue = "ASC") String sort,
            @RequestParam(value = "orderBy", required = false,  defaultValue = "id") String orderBy
    ){
        return produtoService.buscarPedidosPaginados(pedidoDTO, page, size, sort, orderBy);
    }
}
