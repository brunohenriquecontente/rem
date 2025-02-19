import { ProdutosDialogComponent } from './../../component/produtos-dialog/produtos-dialog.component';
import { Pageable } from '../../model/Pageable';
import { Component, OnInit } from '@angular/core';
import { MatTableDataSource, MatTableModule } from '@angular/material/table';
import { MatExpansionModule } from '@angular/material/expansion';
import { PedidoService } from '../../service/pedido.service';
import { CommonModule } from '@angular/common';
import { MatListModule } from '@angular/material/list';
import { IPedido } from '../../interface/IPedido';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatCardModule } from '@angular/material/card';
import { MatDialog } from '@angular/material/dialog';
import { MatPaginatorModule } from '@angular/material/paginator';

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
    MatCardModule,
    MatPaginatorModule
    ],
  templateUrl: './pedido.component.html',
  styleUrls: ['./pedido.component.scss']
})
export class PedidoComponent implements OnInit {
  dataSource = new MatTableDataSource<IPedido>([]);
  totalElements = 0;
  pageSize = 5;
  pageIndex = 0;

  pedidos: IPedido[] = [];
  pedido: IPedido | null = null;

  constructor(private readonly pedidoService: PedidoService, public dialog: MatDialog) {}

  ngOnInit(): void {
    this.loadPedidos();
  }

  onPageChange(event: any): void {
    this.pageIndex = event.pageIndex;
    this.pageSize = event.pageSize;
    this.loadPedidos();
  }

  loadPedidos(): void {
    this.pedidoService.buscarPedidosPageable(this.pageIndex, this.pageSize).subscribe((pageable: Pageable<IPedido>) => {
      this.pedidos = pageable.content
      this.totalElements = pageable.page.totalElements;
    });
  }

  openProdutosDialog(pedido: any): void {
    this.dialog.open(ProdutosDialogComponent, {
      width: '600px',
      data: pedido.produtos,
    });
  }
}
