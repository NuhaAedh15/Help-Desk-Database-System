CREATE TABLE CUSTOMER (
    Customer_ID CHAR(10) PRIMARY KEY,
    Phone_num CHAR(10) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Organization_name VARCHAR(100)
);

CREATE TABLE DEPARTMENT (
    Depart_num CHAR(3) PRIMARY KEY,
    Depart_description VARCHAR(500) NOT NULL,
    Depart_name VARCHAR(100) NOT NULL
);

CREATE TABLE SUPPORT_AGENT (
    Agent_ID CHAR(10) NOT NULL,
    Agent_name VARCHAR(100) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    AgentPhone_num CHAR(10) UNIQUE NOT NULL,
    AgentEmail VARCHAR(100) UNIQUE NOT NULL,
    CHflag CHAR(1) NOT NULL,
    THflag CHAR(1) NOT NULL,
    Dnum CHAR(3) NOT NULL,
    PRIMARY KEY (Agent_ID),
    FOREIGN KEY (Dnum) REFERENCES DEPARTMENT(Depart_num)
);

CREATE TABLE TICKET (
    C_ID CHAR(10) NOT NULL,
    Ticket_ID CHAR(5) NOT NULL,
    Title VARCHAR(50) NOT NULL,
    Status VARCHAR(12) NOT NULL,
    Ticket_description VARCHAR(500) NOT NULL,
    Priority CHAR(1) NOT NULL,
    Resolution_date DATE,
    Creation_date DATE NOT NULL,
    Depart_number CHAR(3) NOT NULL,
    A_ID CHAR(10) NOT NULL,
    PRIMARY KEY (Ticket_ID, C_ID),
    FOREIGN KEY (C_ID) REFERENCES CUSTOMER(Customer_ID),
    FOREIGN KEY (Depart_number) REFERENCES DEPARTMENT(Depart_num),
    FOREIGN KEY (A_ID) REFERENCES SUPPORT_AGENT(Agent_ID)
);

CREATE TABLE ATTACHMENT (
    Attach_ID CHAR(4) NOT NULL,
    TicketID CHAR(5) NOT NULL,
    Cus_ID CHAR(10) NOT NULL,
    Attach_name VARCHAR(50) NOT NULL,
    Attach_data BLOB NOT NULL,
    PRIMARY KEY (Attach_ID, TicketID, Cus_ID),
    FOREIGN KEY (TicketID, Cus_ID)
        REFERENCES TICKET(Ticket_ID, C_ID)
);

CREATE TABLE KNOWLEDGE_BASE (
    Knowledge_base_number CHAR(5) PRIMARY KEY,
    Keyword VARCHAR(25) NOT NULL,
    FAQflag CHAR(1) NOT NULL,
    Question VARCHAR(200),
    Answer VARCHAR(500),
    Aflag CHAR(1) NOT NULL,
    Content VARCHAR(4000),
    Title VARCHAR(100)
);

CREATE TABLE CREATE_BY (
    SAgent_ID CHAR(10) NOT NULL,
    Knowledge_base_num CHAR(5) NOT NULL,
    Issue_Date DATE NOT NULL,
    PRIMARY KEY (SAgent_ID, Knowledge_base_num),
    FOREIGN KEY (SAgent_ID)
        REFERENCES SUPPORT_AGENT(Agent_ID),
    FOREIGN KEY (Knowledge_base_num)
        REFERENCES KNOWLEDGE_BASE(Knowledge_base_number)
);

CREATE TABLE AGENT_SKILLS (
    Support_Agent_ID CHAR(10) NOT NULL,
    Skill VARCHAR(50) NOT NULL,
    PRIMARY KEY (Support_Agent_ID, Skill),
    FOREIGN KEY (Support_Agent_ID)
        REFERENCES SUPPORT_AGENT(Agent_ID)
);

CREATE TABLE VIEW_BY (
    CID CHAR(10) NOT NULL,
    KB_number CHAR(5) NOT NULL,
    PRIMARY KEY (CID, KB_number),
    FOREIGN KEY (CID)
        REFERENCES CUSTOMER(Customer_ID),
    FOREIGN KEY (KB_number)
        REFERENCES KNOWLEDGE_BASE(Knowledge_base_number)
);

CREATE TABLE CONTACT (
    AID CHAR(10) NOT NULL,
    CustomerID CHAR(10) NOT NULL,
    Contact_ID CHAR(7) NOT NULL,
    Contact_method VARCHAR(7) NOT NULL,
    Contact_date DATE NOT NULL,
    PRIMARY KEY (AID, CustomerID),
    FOREIGN KEY (AID)
        REFERENCES SUPPORT_AGENT(Agent_ID),
    FOREIGN KEY (CustomerID)
        REFERENCES CUSTOMER(Customer_ID)
);
