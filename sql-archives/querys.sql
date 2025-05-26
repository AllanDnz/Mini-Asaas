--Select de cobranças (payment) com valor maior que R$ 1.000,00
SELECT value
FROM payment
WHERE value > 1000.00;

--Soma dos valores de cobranças recebidas com a data de criação maior que 2020, agrupadas por tipo de cobrança (billing_type)
SELECT billing_type, SUM(value) AS total_recebido
FROM payment
WHERE date_created >= '2021-01-01 00:00:00' AND status = 'RECEIVED'
GROUP BY billing_type;

--Lista de 20 pagadores (customer_account) com valores recebidos maiores que R$ 1.000,00
-- aqui realizando a soma de todos os valores recebidos pelo usuario
SELECT ca.id AS Identificador_usuario, SUM(p.value) AS total_recebido
FROM payment p
JOIN customer_account ca ON p.customer_account_id = ca.id
WHERE p.status = 'RECEIVED'
GROUP BY ca.id
HAVING SUM(p.value) > 1000
ORDER BY total_recebido ASC
LIMIT 20;

-- aqui com valores individuais
SELECT ca.id AS Identificador_usuario, p.value AS valor_recebido
FROM payment p
JOIN customer_account ca ON p.customer_account_id = ca.id
WHERE p.status = 'RECEIVED'
GROUP BY ca.id, p.value
HAVING p.value > 1000
ORDER BY valor_recebido ASC
LIMIT 20;

--Primeiro nome dos clientes (customer) com análise geral aprovada (customer_regiter_status), ordenado por data de aprovação
SELECT SUBSTRING_INDEX(c.name, ' ', 1) AS primeiro_nome, s.last_updated
FROM customer c
JOIN customer_register_status s ON c.id = s.customer_id
WHERE s.general_approval = 'APPROVED'
ORDER BY s.last_updated DESC;