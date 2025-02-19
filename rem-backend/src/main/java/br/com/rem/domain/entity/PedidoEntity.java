package br.com.rem.domain.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Entity
@Getter
@Setter
@Table(name = "pedido")
public class PedidoEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "produto_seq")
    @SequenceGenerator(name = "produto_seq", sequenceName = "produto_seq", allocationSize = 1)
    private Long id;

    private String comprador;

    private String fornecedor;

    @OneToMany(mappedBy = "pedido", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<ProdutoEntity> produtos;

    public Double getValorTotal() {
        return produtos.stream().mapToDouble(ProdutoEntity::getValorTotal).sum();
    }

    public int getQuantidadeProdutos() {
        return produtos.stream().map(ProdutoEntity::getQuantidade).reduce(0, Integer::sum);
    }
}