-- Q2
SELECT dep.nome AS nome_departamento,
	COUNT(emp.matr) AS quantidade_empregados,
	ROUND(COALESCE(AVG(ven.valor), 0), 2) AS media_de_salario,
	ROUND(COALESCE(MAX(ven.valor), 0), 2) AS maior_salario,
	ROUND(COALESCE(MIN(ven.valor), 0), 2) AS menor_salario
FROM departamento dep
LEFT JOIN empregado emp ON dep.cod_dep = emp.gerencia_cod_dep OR dep.cod_dep = emp.lotacao -- Junta os empregados com base no codigo de gerência ou lotação
LEFT JOIN divisao div ON emp.lotacao_div = div.cod_divisao -- Junta as divisões com base no código de divisão
LEFT JOIN emp_venc ev ON emp.matr = ev.matr -- Junta os empregados com os vencimentos
LEFT JOIN vencimento ven ON ev.cod_venc = ven.cod_venc -- Junta os vencimentos pra ter acesso aos valores de cada salário
GROUP BY dep.nome
ORDER BY media_de_salario DESC;
