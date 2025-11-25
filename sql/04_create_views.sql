-- ============================================================
-- 04. Create Reusable Analytical Views
-- ============================================================

-- ------------------------------------------------------------
-- View 1: Monthly Revenue
-- (Using SUBSTR because ORDER_DATE is VARCHAR in the dataset)
-- ------------------------------------------------------------

CREATE OR REPLACE VIEW v_monthly_revenue AS
SELECT
    SUBSTR(order_date, 1, 7) AS year_month,  -- e.g. '2010-12'
    SUM(quantity * unit_price) AS revenue,
    SUM(quantity)              AS units_sold
FROM fact_sales
GROUP BY year_month;

-- ------------------------------------------------------------
-- View 2: Product Performance
-- ------------------------------------------------------------
CREATE OR REPLACE VIEW v_product_performance AS
SELECT
    p.product_name,
    SUM(f.quantity)     AS units_sold,
    SUM(quantity * unit_price) AS revenue
FROM fact_sales f
JOIN dim_product p
  ON f.product_id = p.product_id
GROUP BY p.product_name;