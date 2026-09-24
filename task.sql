DROP DATABASE IF EXISTS ShopDB;
CREATE DATABASE ShopDB;
USE ShopDB; 

DROP PROCEDURE IF EXISTS get_warehouse_product_inventory;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(
    IN warehouse_id INT
)
BEGIN
    SELECT 
        p.Name AS product_name, 
        pi.WarehouseAmount AS amount
    FROM ProductInventory AS pi
    JOIN Products AS p ON pi.ProductID = p.ID
    WHERE pi.WarehouseID = warehouse_id;
END //

DELIMITER ;
