# Software Requirements Specification (SRS)

## 1. Introduction

### 1.1.1 Purpose

The purpose of this document is to define the functional and non-functional requirements of the Secure Voting System. This system is designed to ensure a reliable, secure, and anonymous voting process while maintaining strict integrity constraints.

This SRS serves as a foundation for formal modeling, verification, and validation phases of the Software Verification and Validation (SVV) pipeline.

---

### 1.1.2 Scope

The Secure Voting System enables eligible voters to participate in an election process while ensuring:

- Only registered voters can vote  
- Each voter can vote only once  
- Votes remain anonymous  
- Election results are accurate and verifiable  

The system includes the following major components:

- Voter Registration Module  
- Authentication Module  
- Token Generation Mechanism  
- Voting Module  
- Vote Counting Module  

---

### 1.1.3 Definitions and Terminology

| Term | Description |
|------|------------|
| Voter | A registered individual eligible to vote |
| Candidate | An entity receiving votes |
| Token | A unique identifier issued after authentication |
| Anonymity | Property ensuring votes cannot be linked to voters |
| Integrity | Property ensuring correctness and consistency of votes |

---

## 1.2 Overall Description

### 1.2.1 System Overview

The system follows a two-phase approach:

1. Authentication Phase  
   - Voter identity is verified  
   - A unique token is generated  

2. Voting Phase  
   - Vote is cast using token  
   - No identity is stored with the vote  

This separation ensures anonymity and integrity simultaneously.

---

### 1.2.2 System Assumptions

- Each voter has a unique identity  
- Voting occurs within a defined time window  
- Tokens are securely generated and cannot be guessed  
- System operates in a controlled environment  

---

### 1.2.3 Constraints

- No direct mapping between voter and vote is allowed  
- Tokens must be single-use  
- System must maintain consistency across all operations  

---

## 1.3 Functional Requirements

### FR1: Voter Registration  
The system shall allow registration of voters with a unique identifier.

---

### FR2: Voter Authentication  
The system shall authenticate a voter before allowing access to voting.

---

### FR3: Token Generation  
The system shall generate a unique, single-use token for each authenticated voter.

---

### FR4: Vote Casting  
The system shall allow casting a vote using a valid token.

---

### FR5: Prevention of Duplicate Voting  
The system shall ensure that a voter cannot vote more than once.

---

### FR6: Anonymous Vote Storage  
The system shall store votes without associating them with voter identity.

---

### FR7: Vote Counting  
The system shall count all valid votes accurately.

---

### FR8: Result Publication  
The system shall display final election results.

---

## 1.4 Non-Functional Requirements

### NFR1: Security  
The system shall prevent unauthorized access and malicious voting attempts.

---

### NFR2: Anonymity  
The system shall ensure that no vote can be traced back to a voter.

---

### NFR3: Integrity  
The system shall ensure that votes are not altered or duplicated.

---

### NFR4: Reliability  
The system shall operate correctly under all valid conditions.

---

### NFR5: Performance  
The system shall handle voting requests efficiently without delay.

---

## 1.5 Derived Requirements (Advanced)

- DR1: Tokens must be unique across all voters  
- DR2: Tokens must not reveal voter identity  
- DR3: Votes must only be associated with tokens, not voters  
- DR4: A token can be used only once  
