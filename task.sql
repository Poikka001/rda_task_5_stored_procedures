USE ShopDB; 
DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

-- Create your stored procedure here

DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(
    IN id INT
)
BEGIN
    SELECT Products.Name, ProductInventory.WarehouseAmount
    FROM ProductInventory
    JOIN Products ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID =id;
END //
DELIMITER ;
