-- CATEGORIAS
     -- Insertar
DELIMITER //
create procedure procInsertCategory (IN v_description VARCHAR(45))
BEGIN
    insert into tbl_categorias(cat_descripcion) values(v_description);
END//
DELIMITER ;

     -- Actualizar
DELIMITER // 
CREATE PROCEDURE procUpdateCategory(IN v_id INT, IN v_description VARCHAR(45))
BEGIN 
   update tbl_categorias 
set cat_descripcion = v_description where cat_id = v_id; 
END// 
DELIMITER ;

     -- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectCategory() 
BEGIN 
    select cat_id, cat_descripcion from tbl_categorias; 
END// 
DELIMITER ;

   -- Eliminar
DELIMITER // 
CREATE PROCEDURE procDeleteCategory(IN v_id INT)
BEGIN
    delete from tbl_categorias where cat_id = v_id;
END//
DELIMITER ; 

-- PROVEEDORES
  -- insertar
DELIMITER //
CREATE PROCEDURE procInsertProvider(IN v_nit VARCHAR(45), IN v_nombre VARCHAR(100))
BEGIN
    INSERT INTO tbl_proveedores(prov_nit, prov_nombre) VALUES(v_nit, v_nombre);
END//
DELIMITER ;

   -- Actualizar
 DELIMITER //
CREATE PROCEDURE procUpdateProvider(IN v_id INT, IN v_nit VARCHAR(45), IN v_nombre VARCHAR(100))
BEGIN
    UPDATE tbl_proveedores
    SET 
        prov_nit = v_nit,
        prov_nombre = v_nombre
    WHERE prov_id = v_id;
END//
DELIMITER ;

   -- Mostrar
  DELIMITER //
CREATE PROCEDURE procSelectProvider()
BEGIN
    SELECT prov_id, prov_nit, prov_nombre 
    FROM tbl_proveedores;
END//
DELIMITER ;

    -- Eliminar
  DELIMITER //
CREATE PROCEDURE procDeleteProvider(IN v_id INT)
BEGIN
    DELETE FROM tbl_proveedores WHERE prov_id = v_id;
END//
DELIMITER ;

-- PRODUCTOS
     -- Insertar 
DELIMITER //
create procedure procInsertProduct(IN v_codigo VARCHAR(45), IN v_descripcion VARCHAR(100), IN v_cantidad INT, IN v_precio DOUBLE, IN v_prov_id INT, IN v_cat_id INT)
begin 
     insert into tbl_productos (pro_codigo, pro_descripcion, pro_cantidad, pro_precio, tbl_proveedores_prov_id, tbl_categorias_cat_id)
     values (v_codigo, v_descripcion, v_cantidad, v_precio, v_prov_id, v_cat_id);
end//
DELIMITER ;



    -- Actualizar
DELIMITER //
CREATE PROCEDURE procUpdateProduct(
    IN v_id INT,
    IN v_codigo VARCHAR(45),
    IN v_descripcion VARCHAR(100),
    IN v_cantidad INT,
    IN v_precio DOUBLE,
    IN v_prov_id INT,
    IN v_cat_id INT
)
BEGIN
    UPDATE tbl_productos
    SET 
        pro_codigo = v_codigo,
        pro_descripcion = v_descripcion,
        pro_cantidad = v_cantidad,
        pro_precio = v_precio,
        tbl_proveedores_prov_id = v_prov_id,
        tbl_categorias_cat_id = v_cat_id
    WHERE pro_id = v_id;
END//
DELIMITER ;


     -- Mostrar
DELIMITER //
CREATE PROCEDURE procSelectProduct()
BEGIN
    SELECT 
        pro_id, pro_codigo, 
        pro_descripcion, 
        pro_cantidad, pro_precio,
        tbl_proveedores_prov_id, 
        tbl_categorias_cat_id
    FROM tbl_productos;
END//
DELIMITER ;


    -- Eliminar
DELIMITER //
CREATE PROCEDURE procDeleteProduct(IN v_id INT)
BEGIN
    DELETE FROM tbl_productos WHERE pro_id = v_id;
END//
DELIMITER ;

-- USUARIOS