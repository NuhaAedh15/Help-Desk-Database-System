-- ============================================
-- HELP DESK DATABASE
-- Sample Data
-- ============================================

-- DEPARTMENTS

INSERT INTO DEPARTMENT VALUES (
    '003',
    'The Administration department manages daily office operations and supports other departments.',
    'Administration'
);

INSERT INTO DEPARTMENT VALUES (
    '004',
    'The Financial Department is responsible for managing the organization money.',
    'Finance'
);

INSERT INTO DEPARTMENT VALUES (
    '006',
    'The Quality Assurance department ensures that products and services meet required quality standards.',
    'Quality Assurance'
);

INSERT INTO DEPARTMENT VALUES (
    '005',
    'The Sales department is responsible for selling the company products or services.',
    'Sales'
);

INSERT INTO DEPARTMENT VALUES (
    '002',
    'The Human Resources department is responsible for managing employees in the organization.',
    'HR'
);

INSERT INTO DEPARTMENT VALUES (
    '001',
    'The IT Department is responsible for managing all technology and computer systems within an organization.',
    'IT'
);


-- ============================================
-- CUSTOMERS
-- ============================================

INSERT INTO CUSTOMER VALUES (
    '0000000001',
    '5550102341',
    'contact@bluehorizon.com',
    'Blue Horizon Analytics'
);

INSERT INTO CUSTOMER VALUES (
    '0000000002',
    '5583910457',
    'info@crescenttech.com',
    'Crescent Tech Solutions'
);

INSERT INTO CUSTOMER VALUES (
    '0000000003',
    '5539472816',
    'support@northstarlogistics.com',
    'Northstar Logistics Group'
);

INSERT INTO CUSTOMER VALUES (
    '0000000004',
    '5595046382',
    'hello@atlasgreen.com',
    'Atlas Green Energy'
);

INSERT INTO CUSTOMER VALUES (
    '0000000005',
    '5526301947',
    'admin@vertexconsulting.com',
    'Vertex Consulting Co.'
);

INSERT INTO CUSTOMER VALUES (
    '0000000006',
    '5512768503',
    'services@silverlinemed.com',
    'Silverline Medical Systems'
);


-- ============================================
-- SUPPORT AGENTS
-- ============================================

INSERT INTO SUPPORT_AGENT VALUES (
    '0000000011', 'John Doe', 'Manager',
    '5508561849', 'john.doe@gmail.com',
    '1', '1', '003'
);

INSERT INTO SUPPORT_AGENT VALUES (
    '0000000012', 'Jane Smith', 'Technician',
    '5519441945', 'jane.smith@gmail.com',
    '0', '1', '001'
);

INSERT INTO SUPPORT_AGENT VALUES (
    '0000000013', 'Emily White', 'Sales Executive',
    '5503915380', 'emily.white@gamil.com',
    '1', '0', '005'
);

INSERT INTO SUPPORT_AGENT VALUES (
    '0000000014', 'Michael Brown', 'Financial Analyst',
    '5501956291', 'michael.brown@gmail.com',
    '0', '1', '004'
);

INSERT INTO SUPPORT_AGENT VALUES (
    '0000000015', 'Ali Ibrahim', 'Quality Improvement Specialist',
    '5588962503', 'Ali.Ibrahim@gmail.com',
    '0', '1', '006'
);

INSERT INTO SUPPORT_AGENT VALUES (
    '0000000016', 'Sarah Mohammed', 'Training & Development Specialist',
    '5548872471', 'Sarah.mohammed@gmail.com',
    '0', '1', '002'
);

INSERT INTO SUPPORT_AGENT VALUES (
    '0000000017', 'David Lee', 'Technical Support Engineer',
    '5501122334', 'david.lee@gmail.com',
    '0', '1', '001'
);

INSERT INTO SUPPORT_AGENT VALUES (
    '0000000018', 'Laura Green', 'Technical Support Specialist',
    '5512233445', 'laura.green@gmail.com',
    '1', '1', '001'
);

INSERT INTO SUPPORT_AGENT VALUES (
    '0000000019', 'Mark Taylor', 'Technical Support Technician',
    '5503344556', 'mark.taylor@gmail.com',
    '1', '0', '001'
);
-- ============================================
-- KNOWLEDGE BASE
-- ============================================

INSERT INTO KNOWLEDGE_BASE VALUES (
    '10001',
    'network',
    '1',
    'Why is the internet slow?',
    'Restart the router and check connections',
    '1',
    'Network troubleshooting steps are a systematic process used to identify and resolve connectivity and performance issues in a network. The process includes identifying the problem, checking physical connections, verifying network configuration, testing connectivity, and implementing an appropriate solution.',
    'Network troubleshooting steps'
);

INSERT INTO KNOWLEDGE_BASE VALUES (
    '10004',
    'password',
    '1',
    'Forgot my password',
    'Use the password recovery option',
    '0',
    NULL,
    NULL
);

INSERT INTO KNOWLEDGE_BASE VALUES (
    '10005',
    'hardware',
    '0',
    NULL,
    NULL,
    '1',
    'A hardware diagnostic guide helps users and technicians identify, analyze, and resolve problems related to physical computer components. It includes procedures for testing hardware and identifying faulty components.',
    'Hardware diagnostic guide'
);

INSERT INTO KNOWLEDGE_BASE VALUES (
    '10003',
    'software',
    '0',
    NULL,
    NULL,
    '1',
    'Software crash solutions focus on identifying the cause of application or system failure and applying corrective actions. Solutions may include restarting, updating software, checking compatibility, verifying system resources, or reinstalling the application.',
    'Software crash solutions'
);

INSERT INTO KNOWLEDGE_BASE VALUES (
    '10002',
    'email',
    '1',
    'Unable to send emails',
    'Check SMTP server settings',
    '0',
    NULL,
    NULL
);

INSERT INTO KNOWLEDGE_BASE VALUES (
    '10006',
    'update',
    '1',
    'System update failed',
    'Ensure enough storage and retry',
    '0',
    NULL,
    NULL
);
-- ============================================
-- CREATE BY
-- ============================================

INSERT INTO CREATE_BY VALUES (
    '0000000018', '10001',
    TO_DATE('2023-12-01', 'YYYY-MM-DD')
);

INSERT INTO CREATE_BY VALUES (
    '0000000012', '10002',
    TO_DATE('2023-12-02', 'YYYY-MM-DD')
);

INSERT INTO CREATE_BY VALUES (
    '0000000018', '10004',
    TO_DATE('2023-12-04', 'YYYY-MM-DD')
);

INSERT INTO CREATE_BY VALUES (
    '0000000019', '10006',
    TO_DATE('2023-12-06', 'YYYY-MM-DD')
);

INSERT INTO CREATE_BY VALUES (
    '0000000017', '10003',
    TO_DATE('2025-12-03', 'YYYY-MM-DD')
);

INSERT INTO CREATE_BY VALUES (
    '0000000017', '10005',
    TO_DATE('2023-12-05', 'YYYY-MM-DD')
);


-- ============================================
-- AGENT SKILLS
-- ============================================

INSERT INTO AGENT_SKILLS VALUES ('0000000011', 'Team Management');
INSERT INTO AGENT_SKILLS VALUES ('0000000011', 'Decision Making');
INSERT INTO AGENT_SKILLS VALUES ('0000000012', 'Technical Troubleshooting');
INSERT INTO AGENT_SKILLS VALUES ('0000000013', 'Sales');
INSERT INTO AGENT_SKILLS VALUES ('0000000013', 'Negotiation');
INSERT INTO AGENT_SKILLS VALUES ('0000000014', 'Financial Analysis');
INSERT INTO AGENT_SKILLS VALUES ('0000000015', 'Quality Control');
INSERT INTO AGENT_SKILLS VALUES ('0000000016', 'Employee Development');
INSERT INTO AGENT_SKILLS VALUES ('0000000017', 'Troubleshooting hardware');
INSERT INTO AGENT_SKILLS VALUES ('0000000018', 'Network Security');
INSERT INTO AGENT_SKILLS VALUES ('0000000019', 'Software installation and Updates');


-- ============================================
-- VIEW BY
-- ============================================

INSERT INTO VIEW_BY VALUES ('0000000001', '10001');
INSERT INTO VIEW_BY VALUES ('0000000001', '10005');
INSERT INTO VIEW_BY VALUES ('0000000004', '10002');
INSERT INTO VIEW_BY VALUES ('0000000006', '10006');
INSERT INTO VIEW_BY VALUES ('0000000003', '10003');
INSERT INTO VIEW_BY VALUES ('0000000005', '10003');


-- ============================================
-- CONTACT
-- ============================================

INSERT INTO CONTACT VALUES (
    '0000000011', '0000000001', '2010000', 'Call',
    TO_DATE('2024-11-01', 'YYYY-MM-DD')
);

INSERT INTO CONTACT VALUES (
    '0000000011', '0000000002', '2020000', 'Message',
    TO_DATE('2024-11-02', 'YYYY-MM-DD')
);

INSERT INTO CONTACT VALUES (
    '0000000013', '0000000003', '2030000', 'Call',
    TO_DATE('2024-11-03', 'YYYY-MM-DD')
);

INSERT INTO CONTACT VALUES (
    '0000000018', '0000000004', '2040000', 'Message',
    TO_DATE('2024-11-04', 'YYYY-MM-DD')
);

INSERT INTO CONTACT VALUES (
    '0000000013', '0000000005', '2050000', 'Call',
    TO_DATE('2024-11-05', 'YYYY-MM-DD')
);

INSERT INTO CONTACT VALUES (
    '0000000019', '0000000006', '2060000', 'Message',
    TO_DATE('2024-11-06', 'YYYY-MM-DD')
);

COMMIT;
