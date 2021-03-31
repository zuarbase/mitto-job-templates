/* ---Transaction Header--- */
/* Contains invoice, creditmemo, cashsale, cashrefund endpoints */
/* Journal entries not included - if added, place criteria on account and use credit-debit for amount */
/* When adding additional fields, must add to all tables in the same order and with matching data types */


/* Invoice */
DROP TABLE IF EXISTS netsuite_models.invoice
;

CREATE TABLE IF NOT EXISTS netsuite_models.invoice AS
    SELECT 'invoice'                            AS source
        , i.internal_id
        , i.tran_date
        , i.tran_id
        , i.location__name
        , i.shipping_cost
        , i.sub_total
        , i.discount_total
        , i.tax_total
        , i.total
        , i.total_cost_estimate
        , i.est_gross_profit
        , i.billing_address__country
        , i.billing_address__city
        , i.billing_address__state
        , i.billing_address__zip :: VARCHAR     AS billing_address__zip
        , i.shipping_address__country
        , i.shipping_address__city
        , i.shipping_address__state
        , i.shipping_address__zip :: VARCHAR    AS shipping_address__zip
        , i.ship_method__name
        , i.created_from__internal_id
        , i.entity__internal_id                 AS customer__internal_id
        , i.subsidiary__name
        , i.currency__name
        , i.posting_period__name
        , i.created_date
        , i.last_modified_date
        /* insert custom fields - ensure that all endpoints contain the same fields or NULL placeholders
        , i.custbody1
        , NULL :: VARCHAR                       AS custbody2
         */
    FROM netsuite.invoice i
    LEFT JOIN (
        SELECT record__internal_id
        FROM netsuite.deletedrecord
        WHERE record__type = 'invoice'
    ) dr
        ON dr.record__internal_id = i.internal_id
    WHERE dr.record__internal_id IS NULL
    ORDER BY i.tran_date
;

/* Credit Memo */
DROP TABLE IF EXISTS netsuite_models.creditmemo
;

CREATE TABLE IF NOT EXISTS netsuite_models.creditmemo AS
    SELECT 'creditMemo'                         AS source
        , i.internal_id
        , i.tran_date
        , i.tran_id
        , i.location__name
        , i.shipping_cost * -1                  AS shipping_cost
        , i.sub_total * -1                      AS sub_total
        , NULL::DOUBLE PRECISION                AS discount_total
        , i.tax_total * -1                      AS tax_total
        , i.total * -1                          AS total
        , i.total_cost_estimate * -1            AS total_cost_estimate
        , i.est_gross_profit * -1               AS est_gross_profit
        , i.billing_address__country
        , i.billing_address__city
        , i.billing_address__state
        , i.billing_address__zip :: VARCHAR     AS billing_address__zip
        , NULL::VARCHAR                         AS shipping_address__country
        , NULL::VARCHAR                         AS shipping_address__city
        , NULL::VARCHAR                         AS shipping_address__state
        , NULL::VARCHAR                         AS shipping_address__zip
        , i.ship_method__name
        , i.created_from__internal_id
        , i.entity__internal_id                 AS customer__internal_id
        , i.subsidiary__name
        , NULL::VARCHAR                         AS currency__name
        , i.posting_period__name
        , i.created_date
        , i.last_modified_date
        /* insert custom fields - ensure that all endpoints contain the same fields or NULL placeholders
        , i.custbody1
        , NULL :: VARCHAR                       AS custbody2
         */
    FROM netsuite.creditmemo i
    LEFT JOIN (
        SELECT record__internal_id
        FROM netsuite.deletedrecord
        WHERE record__type = 'creditmemo'
    ) dr
        ON dr.record__internal_id = i.internal_id
    WHERE dr.record__internal_id IS NULL
    ORDER BY i.tran_date
;

/* Cash Sale */
DROP TABLE IF EXISTS netsuite_models.cashsale
;

CREATE TABLE IF NOT EXISTS netsuite_models.cashsale AS
    SELECT 'cashSale'                           AS source
        , i.internal_id
        , i.tran_date
        , i.tran_id
        , i.location__name
        , i.shipping_cost
        , i.sub_total
        , NULL::DOUBLE PRECISION                AS discount_total
        , i.tax_total
        , i.total
        , i.total_cost_estimate
        , i.est_gross_profit
        , i.billing_address__country
        , i.billing_address__city
        , i.billing_address__state
        , i.billing_address__zip :: VARCHAR     AS billing_address__zip
        , i.shipping_address__country
        , i.shipping_address__city
        , i.shipping_address__state
        , i.shipping_address__zip :: VARCHAR    AS shipping_address__zip
        , i.ship_method__name
        , i.created_from__internal_id
        , i.entity__internal_id                 AS customer__internal_id
        , i.subsidiary__name
        , i.currency_name
        , i.posting_period__name
        , i.created_date
        , i.last_modified_date
        /* insert custom fields - ensure that all endpoints contain the same fields or NULL placeholders
        , i.custbody1
        , NULL :: VARCHAR                       AS custbody2
         */
    FROM netsuite.cashsale i
    LEFT JOIN (
        SELECT record__internal_id
        FROM netsuite.deletedrecord
        WHERE record__type = 'cashsale'
    ) dr
        ON dr.record__internal_id = i.internal_id
    WHERE dr.record__internal_id IS NULL
    ORDER BY i.tran_date
;

/* Cash Refund */
DROP TABLE IF EXISTS netsuite_models.cashrefund
;

CREATE TABLE IF NOT EXISTS netsuite_models.cashrefund AS
    SELECT 'cashRefund'                         AS source
        , i.internal_id
        , i.tran_date
        , i.tran_id
        , i.location__name
        , i.shipping_cost * -1                  AS shipping_cost
        , i.sub_total * -1                      AS sub_total
        , NULL::DOUBLE PRECISION                AS discount_total
        , i.tax_total * -1                      AS tax_total
        , i.total * -1                          AS total
        , i.total_cost_estimate * -1            AS total_cost_estimate
        , i.est_gross_profit * -1               AS est_gross_profit
        , i.billing_address__country
        , i.billing_address__city
        , i.billing_address__state
        , i.billing_address__zip :: VARCHAR     AS billing_address__zip
        , NULL::VARCHAR                         AS shipping_address__country
        , NULL::VARCHAR                         AS shipping_address__city
        , NULL::VARCHAR                         AS shipping_address__state
        , NULL::VARCHAR                         AS shipping_address__zip
        , i.ship_method__name
        , i.created_from__internal_id
        , i.entity__internal_id                 AS customer__internal_id
        , i.subsidiary__name
        , i.currency__name
        , i.posting_period__name
        , i.created_date
        , i.last_modified_date
        /* insert custom fields - ensure that all endpoints contain the same fields or NULL placeholders
        , i.custbody1
        , NULL :: VARCHAR                       AS custbody2
         */
    FROM netsuite.cashrefund i
    LEFT JOIN (
        SELECT record__internal_id
        FROM netsuite.deletedrecord
        WHERE record__type = 'cashrefund'
    ) dr
        ON dr.record__internal_id = i.internal_id
    WHERE dr.record__internal_id IS NULL
    ORDER BY i.tran_date
;

/* Transaction Header Union */
DROP TABLE IF EXISTS netsuite_models.transaction_header
;

CREATE TABLE IF NOT EXISTS netsuite_models.transaction_header AS
    SELECT *
    FROM netsuite_models.invoice
    UNION ALL
    SELECT *
    FROM netsuite_models.creditmemo
    UNION ALL
    SELECT *
    FROM netsuite_models.cashsale
    UNION ALL
    SELECT *
    FROM netsuite_models.cashrefund
;

/* Column indexes on final data model */
CREATE INDEX netsuitemodels_transactionheader
    ON netsuite_models.transaction_header
        (
            tran_date
            , internal_id
            , tran_id
            , entity__internal_id
        )
;

