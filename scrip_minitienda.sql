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
-- PRIVEEDORES

-- PRODUCTOS

-- USUARIOS