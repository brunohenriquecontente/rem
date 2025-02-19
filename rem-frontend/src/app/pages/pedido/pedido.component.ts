import { ProdutosDialogComponent } from './../../component/produtos-dialog/produtos-dialog.component';
import { Pageable } from '../../model/Pageable';
import { Component, OnInit } from '@angular/core';
import { MatTableModule } from '@angular/material/table';
import { MatExpansionModule } from '@angular/material/expansion';
import { PedidoService } from '../../service/pedido.service';
import { CommonModule } from '@angular/common';
import { MatListModule } from '@angular/material/list';
import { IPedido } from '../../interface/IPedido';
import { MatButtonModule } from '@angular/material/button';
import {MatIconModule} from '@angular/material/icon';
import {MatCardModule} from '@angular/material/card';
import { MatDialog } from '@angular/material/dialog';



@Component({
  selector: 'app-pedido',
  standalone: true,
  imports: [
    CommonModule,
    MatTableModule,
    MatExpansionModule,
    MatListModule,
    MatExpansionModule,
    MatButtonModule,
    MatListModule,
    CommonModule,
    MatIconModule,
    MatCardModule
    ],
  templateUrl: './pedido.component.html',
  styleUrls: ['./pedido.component.scss']
})
export class PedidoComponent implements OnInit {

  pedidos: IPedido[] = [];
  pedido: IPedido | null = null;

  constructor(private readonly pedidoService: PedidoService, public dialog: MatDialog) {}

  ngOnInit(): void {
    this.pedidoService.buscarPedidosPageable().subscribe((pageable: Pageable<IPedido>) => {
      this.pedidos = pageable.content
    });
  }


  openProdutosDialog(pedido: any): void {
    this.dialog.open(ProdutosDialogComponent, {
      width: '600px',
      data: pedido.produtos,
    });
  }
}
