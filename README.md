# 📊 Consultas Básicas SELECT y Alias — TechStore
**Autor:** Fernanda Adamo  
**Fecha:** 14/08/2026  
**Tecnología:** SQL / T-SQL  
**Repositorio:** sql-select-fundamentals  

## 📌 Descripción del Proyecto
Este repositorio contiene la solución práctica para la extracción y formateo de datos transaccionales de la tabla sales en la base de datos de TechStore. El objetivo principal es transformar datos técnicos en información legible y accesible para las partes interesadas (stakeholders) del área de Finanzas.

## 📁 Estructura del Repositorio  
sql-select-fundamentals/  
├── consultas_basicas.sql  # DDL, DML y consultas SELECT solicitadas  
└── README.md              # Documentación técnica del proyecto  

## ❓ Preguntas de Documentación Técnica

**1. ¿Por qué es una mala práctica utilizar SELECT * en entornos de producción?**  
Utilizar SELECT * para explorar datos es aceptable durante la fase de análisis ad-hoc o desarrollo. Sin embargo, en sistemas de producción presenta serias desventajas:
- **Rendimiento y Uso de Red (Overhead):** Obliga al motor de base de datos a leer y transferir absolutamente todas las columnas en disco y red, incrementando la latencia y el tiempo de respuesta. Esto se vuelve crítico al trabajar con tablas masivas o columnas con datos pesados (TEXT, BLOB, JSON).
- **Mantenibilidad y Quiebre de Aplicaciones:** Si en el futuro se agregan, eliminan o reordenan columnas en la tabla base, la consulta devolverá estructuras inesperadas a la aplicación cliente, lo que puede romper vistas, pipelines de datos (ETL) o reportes automatizados.
- **Seguridad y Privacidad:** Aumenta el riesgo de exponer involuntariamente campos sensibles o confidenciales (como datos personales o PII) que no son necesarios para el informe o la consulta requerida.
 
**2. ¿Por qué son importantes los Alias (AS) para un stakeholder no técnico?**  
Los alias son fundamentales para tender un puente entre la lógica técnica del motor de base de datos y la interpretación estratégica del negocio.
- **Traducción al Idioma del Negocio:** Los nombres de las columnas en bases de datos suelen seguir convenciones técnicas en inglés o abrevian términos (order_date, total_amount, qty). El uso de AS permite traducirlos a términos claros en español (fecha_pedido, monto_total, cantidad_unidades).
- **Mejora en la Presentación de Reportes:** Cuando herramientas como Excel, Power BI o Tableau consumen una consulta con alias bien definidos, las tablas y gráficos se generan automáticamente con encabezados comprensibles para los ejecutivos sin necesidad de renombrarlos manualmente.

💡 Ejemplo Práctico:  
Sin alias, una consulta retorna:  

| order_date | product_name | total_amount |
| --- | --- | --- |
| 2024-01-05 | Laptop Pro 15 | 2400.00 |

Aplicando alias mediante total_amount AS monto_total_pagado, el stakeholder de Finanzas interpreta inmediatamente el valor monetario final sin ambigüedades sobre impuestos o descuentos:  

| fecha_pedido | nombre_producto | monto_total_pagado |
| --- | --- | --- |
| 2024-01-05 | Laptop Pro 15 | 2400.00 |

## 🚀 Ejecución de Consultas  
El archivo consultas_basicas.sql incluye:  
- **Consulta 1:** Exploración general de la tabla sales.
- **Consulta 2:** Selección acotada de las columnas customer_id, product_id y total_amount.
- **Consulta 3:** Selección con alias descriptivos en español utilizando snake_case.
