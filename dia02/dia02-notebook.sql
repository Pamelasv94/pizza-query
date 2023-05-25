-- Databricks notebook source
select'olá mundo'


-- COMMAND ----------

--

select * 
from silver.pizza_query.pedido

-- COMMAND ----------

SELECT vlPreco,
       descItem,
       21 + 21 AS vl42
from silver.pizza_query.produto
