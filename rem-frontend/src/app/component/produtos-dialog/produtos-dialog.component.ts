import { Component, Inject } from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogModule, MatDialogRef } from '@angular/material/dialog';
import { CommonModule } from '@angular/common';
import { MatTableModule } from '@angular/material/table';
import { MatButtonModule } from '@angular/material/button';

@Component({
  selector: 'app-produtos-dialog',
  standalone: true,
  imports: [CommonModule, MatDialogModule, MatTableModule, MatButtonModule],
  templateUrl: './produtos-dialog.component.html',
  styleUrls: ['./produtos-dialog.component.scss']
})
export class ProdutosDialogComponent {
  displayedColumns: string[] = ['nome', 'quantidade', 'preco'];

  constructor(
    @Inject(MAT_DIALOG_DATA) public produtos: any[],
    private readonly dialogRef: MatDialogRef<ProdutosDialogComponent>
  ) {}

  fecharDialog(): void {
    this.dialogRef.close();
  }
}
