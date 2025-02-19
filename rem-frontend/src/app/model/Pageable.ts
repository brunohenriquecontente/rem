export interface Pageable<T> {
  content: T[];
  totalPages: number;
  page: {
    size: number,
    number: number
    totalElements: number
    totalPages: number
  }
  totalElements: number;
  first: boolean;
  last: boolean;
  empty: boolean;
}

export type PedidoPageable = Pageable<any>;
