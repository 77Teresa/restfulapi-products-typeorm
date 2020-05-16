import {ViewEntity,ViewColumn} from "typeorm";

@ViewEntity({schema: "example", database: "ingresos", name:"PromVentas"})
export class ViewSuppliersByNProducts{
    @ViewColumn()
    CustomerID: number
    @ViewColumn()
    CustomerName: String
    @ViewColumn()
    SupplierID: number
    @ViewColumn()
    SupplierName: string
    @ViewColumn()
    mes: Date
    @ViewColumn()
    año: Date
    @ViewColumn()
    total: number
    
}