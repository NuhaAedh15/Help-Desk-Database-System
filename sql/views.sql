-- ============================================
-- HELP DESK DATABASE
-- Views
-- ============================================

-- View 1: Displays all tickets submitted by each customer
CREATE VIEW CustomerTickets_View AS
SELECT
    C.Customer_ID,
    C.Phone_num,
    C.Email,
    C.Organization_name,
    T.Ticket_ID,
    T.Title,
    T.Status,
    T.Ticket_description,
    T.Priority,
    T.Resolution_date,
    T.Creation_date,
    T.Depart_number
FROM CUSTOMER C
JOIN TICKET T
    ON C.Customer_ID = T.C_ID;


-- View 2: Displays all tickets that belong to each department
CREATE VIEW DepartmentTickets_View AS
SELECT
    D.Depart_num,
    D.Depart_name,
    T.Ticket_ID,
    T.Title,
    T.Status,
    T.Priority
FROM DEPARTMENT D
JOIN TICKET T
    ON D.Depart_num = T.Depart_number;
