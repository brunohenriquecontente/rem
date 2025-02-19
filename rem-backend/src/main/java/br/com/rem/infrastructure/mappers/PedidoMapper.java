package br.com.rem.infrastructure.mappers;


import br.com.rem.presentation.dto.PedidoDTO;
import br.com.rem.domain.entity.PedidoEntity;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface PedidoMapper {

    PedidoMapper INSTANCE = Mappers.getMapper(PedidoMapper.class);

    PedidoEntity toEntity(PedidoDTO pedidoDTO);

    PedidoDTO toDTO(PedidoEntity pedido);

}
