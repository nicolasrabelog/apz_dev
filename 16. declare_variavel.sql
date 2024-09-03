SELECT func_nome, depto_nome, proj_numero
FROM `bd_exercicio`.`tb_funcionario`
INNER JOIN `bd_exercicio`.`tb_departamento` on depto_codigo = trab_depto_cod
INNER JOIN `bd_exercicio`.`tb_projeto` on proj_codigo = proj_cod

CREATE DEFINER=`root`@`localhost` TRIGGER `bd_exercicio`.`tb_funcionario_AFTER_INSERT`
AFTER INSERT ON `tb_funcionario` FOR EACH ROW
BEGIN

-- Declarando variavel que vai guardar a quantidade de funcionarios
DECLARE qtdFuncDepto INT;
-- Fazendo uma verificação logica para confirmar se]
-- o departamento do funcionario foi informado
IF (NEW.trab_depto_cod IS NOT NULL) THEN
-- RECUPERANDO A QUANTIDADE DE REGISTROS DE FUNCIONARIOS CUJO CODIGO
-- RESPEITE A CLAUSULA WHERE
SELECT COUNT(func_codigo)
FROM `bd_exercicio`.`tb_funcionario`
WHERE trab_depto_cod = NEW.trab_depto_cod
INTO qtdFuncDepto;	

-- Atualizando tabela de departamento com a quantidade calculade de funcionarios
UPDATE `bd_exercicio`.`tb_departamento`
SET depto_qtd_func = qtdFuncDepto
WHERE depto_codigo = NEW.trab_depto_cod;

  END IF;
END
