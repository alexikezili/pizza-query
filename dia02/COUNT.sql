-- Databricks notebook source
SELECT count(*),       --conta linhas nao nulas
       count(idPedido) --linhas nao nulas da coluna idPedido
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT count(*)
FROM silver.pizza_query.pedido
WHERE flKetchup IS NOT NULL

-- COMMAND ----------

SELECT descUF,
       count(*) AS qtdPedidos
FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo'

GROUP BY descUF
HAVING qtdPedidos >= 75

ORDER BY qtdPedidos DESC

LIMIT 5

-- COMMAND ----------

SELECT * 
FROM silver.pizza_query.produto
WHERE descItem LIKE 'suco%'

-- COMMAND ----------

SELECT descUF,
        flKetchup,
        count(*)

FROM silver.pizza_query.pedido

GROUP BY descUF, flKetchup
ORDER BY descUF, flKetchup
