-- ============================================
-- HELP DESK DATABASE
-- Queries
-- ============================================

-- Query 1: List all tickets with their assigned support agents
SELECT
    T.Ticket_ID,
    T.Title,
    T.Status,
    SA.Agent_name,
    SA.Position
FROM TICKET T
JOIN SUPPORT_AGENT SA
    ON T.A_ID = SA.Agent_ID;


-- Query 2: Count how many tickets each customer has created
SELECT
    C.Customer_ID,
    C.Organization_name,
    COUNT(T.Ticket_ID) AS Total_Tickets
FROM CUSTOMER C
LEFT JOIN TICKET T
    ON C.Customer_ID = T.C_ID
GROUP BY
    C.Customer_ID,
    C.Organization_name;


-- Query 3: List all agents and the department they belong to
SELECT
    SA.Agent_ID,
    SA.Agent_name,
    D.Depart_name
FROM SUPPORT_AGENT SA
JOIN DEPARTMENT D
    ON SA.Dnum = D.Depart_num;


-- Query 4: Get all FAQ knowledge base questions
SELECT
    Knowledge_base_number,
    Question,
    Answer
FROM KNOWLEDGE_BASE
WHERE FAQflag = '1';


-- Query 5: Retrieve all tickets with high priority
SELECT
    Ticket_ID,
    Title,
    Priority,
    Status
FROM TICKET
WHERE Priority = '5';


-- Query 6: Show attachments for ticket 1
SELECT
    A.Attach_ID,
    A.Attach_name,
    A.Cus_ID
FROM ATTACHMENT A
WHERE A.TicketID = '00001';


-- Query 7: List customers who viewed knowledge base 10001
SELECT
    C.Customer_ID,
    C.Organization_name
FROM VIEW_BY V
JOIN CUSTOMER C
    ON V.CID = C.Customer_ID
WHERE V.KB_number = '10001';


-- Query 8: Show agents and their skills
SELECT
    SA.Agent_name,
    S.Skill
FROM AGENT_SKILLS S
JOIN SUPPORT_AGENT SA
    ON S.Support_Agent_ID = SA.Agent_ID
ORDER BY SA.Agent_name;
