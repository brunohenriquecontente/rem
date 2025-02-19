package br.com.rem.service;

import br.com.rem.presentation.dto.PedidoDTO;
import br.com.rem.domain.entity.PedidoEntity;
import br.com.rem.infrastructure.mappers.PedidoMapper;
import br.com.rem.infrastructure.repository.PedidoRepository;

import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;

@Service
public class PedidoService {

    private final PedidoRepository pedidoRepository;

    public PedidoService(PedidoRepository pedidoRepository) {
        this.pedidoRepository = pedidoRepository;
    }

    public Page<PedidoDTO> buscarPedidosPaginados(PedidoDTO pedidoDTO, Integer page, Integer size, String sort, String orderBy){
        Sort.Direction direction = "desc".equalsIgnoreCase(sort) ? Sort.Direction.DESC : Sort.Direction.ASC;
        Pageable pageable = PageRequest.of(page, size, Sort.by(direction, orderBy));
        PedidoEntity pedidoEntity;

        pedidoEntity = PedidoMapper.INSTANCE.toEntity(pedidoDTO);

        ExampleMatcher matcher = ExampleMatcher.matching()
                .withIgnoreCase()
                .withStringMatcher(ExampleMatcher.StringMatcher.CONTAINING);

        Example<PedidoEntity> pedidoExample = Example.of(pedidoEntity, matcher);
        Page<PedidoEntity> pedidoEntities = pedidoRepository.findAll(pedidoExample, pageable);

        return pedidoEntities.map(PedidoMapper.INSTANCE::toDTO);

    }
}
