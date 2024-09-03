select * from clientes_experimentos;

-- Consultando registros usando filtro where e expressão like
SELECT * from clientes_experimentos where nome_completo LIKE 'Dr,%';
SELECT * from clientes_experimentos where nome_completo LIKE '%ana%';
