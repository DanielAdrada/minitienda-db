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
-- USUARIOS