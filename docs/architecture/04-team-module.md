# Team Module

## Purpose

A Team represents a group of users inside an Organization.

Examples:

- Engineering
- Sales
- HR
- Finance

---

## Relationships

Organization
  has_many :teams

Team
  belongs_to :organization
  has_many :organization_members
  has_many :users, through: :organization_members

---

## Fields

- id (UUID)
- organization_id (UUID)
- name
- description
- created_at
- updated_at

---

## Business Rules

- Team name must be present.
- Team name must be unique within an Organization.
- Every Team belongs to exactly one Organization.
- Deleting an Organization deletes all Teams.