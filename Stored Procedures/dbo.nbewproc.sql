SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF
--GO
CREATE PROCEDURE [dbo].[nbewproc] @parameter_name AS INT
-- WITH ENCRYPTION, RECOMPILE, EXECUTE AS CALLER|SELF|OWNER| 'user_name'
AS
BEGIN
    SELECT customer_company_name,
           customer_email,
           DM_CUSTOMER_NOTES.customer_lastname,
           customer_zipcode
    FROM dbo.DM_CUSTOMER
        JOIN dbo.DM_CUSTOMER_NOTES
            ON DM_CUSTOMER_NOTES.customer_id = DM_CUSTOMER.customer_id;
END;
GO
