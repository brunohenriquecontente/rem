import { IPedido } from '../interface/IPedido';
import { Pageable } from '../model/Pageable';
import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { Observable, finalize } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class PedidoService {
  constructor(private readonly httpClient: HttpClient) {}

  buscarPedidosPageable(
    page: number,
    size: number
  ): Observable<Pageable<IPedido>> {
    const params = {
      page: page.toString(),
      size: size.toString(),
    };
    return this.httpClient
      .get<Pageable<IPedido>>(environment.remBackendApi + 'pedido', { params })
      .pipe(
        (res) => res,
        (error) => error,
        finalize(() => {})
      );
  }
}
