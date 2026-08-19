# Help Desk Database System

A relational database system designed to support help desk operations by managing customers, support agents, tickets, departments, attachments, and knowledge-base resources.

## 📌 Overview

The Help Desk Database System was developed to organize and manage technical support operations within an organization. The system provides a structured way to track customer support tickets, assign support agents, manage departments, store attachments, and maintain troubleshooting resources through a knowledge base.

The project covers the complete database development process, from conceptual database design and relational schema development to SQL implementation, queries, and views.

## ✨ Features

- Customer and organization management
- Support ticket tracking
- Support agent assignment
- Department management
- Agent skills management
- Ticket attachments
- Customer-agent contact records
- Knowledge base and FAQ management
- SQL queries for retrieving and analyzing support data
- Database views for simplified data access

## 🗄️ Database Structure

The database includes the following main entities:

- `CUSTOMER`
- `DEPARTMENT`
- `SUPPORT_AGENT`
- `TICKET`
- `ATTACHMENT`
- `KNOWLEDGE_BASE`
- `CREATE_BY`
- `AGENT_SKILLS`
- `VIEW_BY`
- `CONTACT`

Primary and foreign keys are used to maintain relationships and referential integrity between the tables.

## 🛠️ Technologies

- SQL
- Oracle Database
- Relational Database Design
- Entity-Relationship Modeling (ERD)

## 📂 Project Structure

```text
Help-Desk-Database-System/
│
├── sql/
│   ├── create_tables.sql
│   ├── insert_data.sql
│   ├── queries.sql
│   └── views.sql
│
└── README.md
```

### SQL Files

**`create_tables.sql`**  
Defines the database tables, primary keys, foreign keys, and constraints.

**`insert_data.sql`**  
Populates the database with sample data for testing and demonstration.

**`queries.sql`**  
Contains SQL queries for retrieving information such as ticket assignments, customer ticket counts, agent departments, FAQs, and agent skills.

**`views.sql`**  
Creates database views for customer tickets and department tickets.

## 🎓 Academic Project

Developed as a team project for **CS 1370 – Principles of Database**.

### Team Members

- Nuha Aedh Alrubayyi
- Latifa Almugarry
- Hanin Abdullah
- Ayah Abuobeida
- Fatima Badreddin
  
