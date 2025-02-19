package br.com.rem.presentation.dto;

import java.util.List;

public record PedidoDTO(Long id, String comprador, String fornecedor, List<ProdutoDTO> produtos, Double valorTotal, Integer quantidadeProdutos) {

}
