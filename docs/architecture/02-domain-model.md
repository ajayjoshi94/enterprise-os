# EnterpriseOS Domain Model

## Core Modules

- User
- Organization
- Team
- Permission
- Project
- Task
- Comment
- Notification
- Audit Log

---

## User

Represents a person using EnterpriseOS.

Attributes

- id
- name
- email
- encrypted_password
- status

Relations

- belongs_to Organization
- has_many Projects
- has_many Tasks

---

## Organization

Represents a company.

Attributes

- id
- name
- slug

Relations

- has_many Users
- has_many Teams
- has_many Projects

---

## Team

Attributes

- id
- name

Relations

- belongs_to Organization
- has_many Users

---

## Project

Attributes

- id
- title
- description
- status

Relations

- belongs_to Organization
- belongs_to User
- has_many Tasks

---

## Task

Attributes

- id
- title
- description
- status
- priority
- due_date

Relations

- belongs_to Project
- belongs_to User
- has_many Comments

---

## Comment

Attributes

- id
- body

Relations

- belongs_to Task
- belongs_to User

---

## Notification

Attributes

- id
- title
- body
- read_at

Relations

- belongs_to User

---

## Audit Log

Attributes

- id
- action
- model
- record_id
- user_id
- created_at