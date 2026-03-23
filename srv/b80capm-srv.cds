using{ b80capm.db as b80db } from '../db/schema';

service B80CapmService {
    entity Products  as projection on b80db.Products;
    entity Orders  as projection on b80db.Orders;
    entity OrderItems as projection on b80db.OrderItems;
        
}