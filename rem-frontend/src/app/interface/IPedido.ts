import { IProduto } from "./IProduto"

export interface IPedido{
  id: number
  fornecedor: string
  comprador: string
  produtos: IProduto []
  valorTotal: number
  quantidadeProdutos: number
}
