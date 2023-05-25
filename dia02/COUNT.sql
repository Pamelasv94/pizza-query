-- Databricks notebook source
SELECT count(*),        -- linhas não nulas
       count(1),        -- linhas não nulas
       count(idPedido)  -- linhas não nulas
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT count(*)

FROM silver.pizza_query.pedido

WHERE flKetchup IS NOT null

-- COMMAND ----------

SELECT descUF,
       count(*) AS qtdePedidos

FROM silver.pizza_query.pedido

WHERE descUF != 'São Paulo'

GROUP BY descUF
HAVING qtdePedidos >=75 --fazer um filtro de processamento

ORDER BY qtdePedidos DESC

LIMIT 5

-- COMMAND ----------

SELECT *
FROM silver.pizza_query.produto
WHERE descItem LIKE '%abacaxi%'

-- COMMAND ----------

SELECT descUF,
       flKetchup,
       count(*)

FROM silver.pizza_query.pedido

GROUP BY descUF, flKetchup
ORDER BY descUF, flKetchup
