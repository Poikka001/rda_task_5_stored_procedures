DROP DATABASE IF EXISTS ShopDB;
USE ShopDB; 
DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

-- Create your stored procedure here

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN p_warehouse_id INT
)
BEGIN
    SELECT 
        p.Name AS product_name, 
        pi.WarehouseAmount AS warehouse_amount
    FROM ProductInventory AS pi
    JOIN Products AS p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = p_warehouse_id;
END //

DELIMITER ;
