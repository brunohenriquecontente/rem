import { IPedido } from '../interface/IPedido';
import { Pageable } from '../model/Pageable';
import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from '../../environments/environment';
import { Observable, catchError, finalize, map } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class PedidoService {

  constructor(private httpClient: HttpClient) { }

  buscarPedidosPageable(): Observable<Pageable<IPedido>> {
    return this.httpClient.get<Pageable<IPedido>>(environment.remBackendApi + 'pedido').pipe(
      (res) => res,
      (error) => error,
      finalize(() =>{
      })
    );
  }
}
