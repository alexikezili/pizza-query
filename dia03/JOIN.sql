-- Databricks notebook source
SELECT a.*,
        b.vlPreco

FROM silver.pizza_query.item_pedido AS a

LEFT JOIN silver.pizza_query.produto AS b
ON a.descItem = b.descItem

-- COMMAND ----------

SELECT a.idPedido,
       sum(b.vlPreco) AS vlPedido
FROM silver.pizza_query.item_pedido AS a

LEFT JOIN silver.pizza_query.produto AS b
ON a.descItem = b.descItem

WHERE a.descTipoItem <> 'bebida'

GROUP BY a.idPedido
ORDER BY a.idPedido

-- COMMAND ----------


