package br.com.rem.infrastructure.mappers;



import br.com.rem.presentation.dto.ProdutoDTO;
import br.com.rem.domain.entity.ProdutoEntity;
import org.mapstruct.Mapper;

import org.mapstruct.factory.Mappers;

@Mapper
public interface ProdutoMapper {

    ProdutoMapper INSTANCE = Mappers.getMapper(ProdutoMapper.class);

    ProdutoEntity toEntity(ProdutoDTO produtoDTO);

    ProdutoDTO toDTO(ProdutoEntity produto);

}
