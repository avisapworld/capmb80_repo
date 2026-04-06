using{ b80capm.db as b80db } from '../db/schema';

service ProductMgmtService {
    @odata.draft.enabled
    entity Products  as projection on b80db.Products
     {
            *,
           case
              when stock = 0
                 then 'Out of Stock'
            when stock < 10
               then 'Low Stock'
            else 'Available'
            end as status: String ,

           case
               when stock = 0
                  then '1'
             when stock < 10
                 then '2'
             else '3'
            end as statusCriticality : String, //Changed to String from integer
        }

}