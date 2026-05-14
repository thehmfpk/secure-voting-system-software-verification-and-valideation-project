# Secure Voting System – Software Verification & Validation (SVV) Project

A formally verified Secure Voting System developed for the Software Verification & Validation (SVV) Lab using formal methods including Z Notation, VDM Specifications, Alloy Analyzer, and GitHub Actions CI Pipeline.

---

# Project Overview

The Secure Voting System is designed to provide a secure, anonymous, and integrity-preserving electronic voting process. The project focuses on applying formal verification and validation techniques to ensure correctness, reliability, and security of the voting workflow.

The system guarantees:

- Only authenticated voters can vote
- Each voter can vote only once
- Tokens are unique and single-use
- Votes remain anonymous
- Voting integrity is preserved
- System constraints are formally verified

This project follows the complete SVV pipeline required in the semester project guidelines.

---

# Project Objectives

The primary objectives of this project are:

- Design a secure electronic voting system
- Formally model system states and operations
- Verify integrity and anonymity constraints
- Prevent duplicate voting
- Implement token-based secure voting
- Validate system behavior using formal methods
- Perform structural verification using Alloy Analyzer
- Integrate CI verification using GitHub Actions

---

# Core System Modules

## 1. Voter Registration Module

Responsible for registering eligible voters in the system.

### Features
- Unique voter identification
- Registration validation
- Controlled voter access

---

## 2. Authentication Module

Ensures that only authorized users can participate in the election process.

### Features
- Authentication state verification
- Secure access control
- Registered → Authenticated state transition

---

## 3. Token Generation Module

Generates unique voting tokens after successful authentication.

### Features
- One token per voter
- Unique token assignment
- Single-use token mechanism

---

## 4. Voting Module

Allows authenticated voters to cast votes using valid tokens.

### Features
- Secure vote submission
- Candidate selection validation
- Anonymous vote storage

---

## 5. Vote Integrity & Verification Module

Maintains voting integrity and prevents invalid operations.

### Features
- Duplicate voting prevention
- Token reuse prevention
- Structural constraint verification

---

# Security Properties

The Secure Voting System implements multiple security constraints.

| Security Property | Description |
|---|---|
| Authentication | Only verified users can vote |
| Integrity | Votes cannot be duplicated or modified |
| Anonymity | Votes cannot be linked to voters |
| Token Security | Tokens are unique and single-use |
| Access Control | Unauthorized voting is prevented |

---

# Technologies & Tools Used

| Technology | Purpose |
|---|---|
| Z Notation | Formal state modeling |
| CZT Editor | Z schema verification |
| VDM | Functional specification |
| Overture Tool | VDM verification |
| Alloy Analyzer | Structural verification |
| GitHub | Version control and collaboration |
| GitHub Issues | Requirement tracking |
| GitHub Actions | CI validation pipeline |

---

# SVV Pipeline Implementation

The project follows the mandatory SVV pipeline defined in the semester guidelines.

---

# A. Requirement Engineering

## Deliverables
- Software Requirements Specification (SRS)
- Requirement Defect Taxonomy
- GitHub Issue Tracking

## Implemented Requirements
- Functional Requirements
- Non-Functional Requirements
- Security Constraints
- Integrity Rules
- Anonymity Requirements

---

# B. Formal Modeling using Z Notation

## Implemented Components
- System state definitions
- State schemas
- Invariants
- State transitions
- Authentication operations
- Vote casting operations

## Verified Constraints
- One voter receives one token
- Tokens remain unique
- Invalid transitions are restricted

---

# C. Functional Specification using VDM

## Implemented Specifications
- Preconditions
- Postconditions
- Functional operations
- Contract-based verification

## Operations Modeled
- RegisterVoter
- AuthenticateVoter
- GenerateToken
- CastVote
- CountVotes

---

# D. Structural Verification using Alloy Analyzer

## Alloy Model Includes
- Voter entity
- Token entity
- Vote entity
- Candidate entity
- Status states

## Verified Assertions
- NoDoubleVoting
- ValidVoting
- TokenOwnership
- VoteIntegrity

## Structural Verification Goals
- Prevent duplicate voting
- Maintain anonymity
- Ensure token uniqueness
- Verify valid relationships

---

# E. Validation & Security

## Validation Activities
- Requirement validation
- Integrity verification
- Counterexample testing
- Structural consistency checks

## CI Pipeline Verification
GitHub Actions pipeline validates:

- Requirements module
- Z notation specifications
- VDM specifications
- Alloy models
- Validation reports

---

# CI/CD Verification Pipeline

The project uses GitHub Actions for automated verification.

- Pipeline Jobs
- Authentication verification
- Duplicate voting prevention verification
- Candidate validation
- Vote integrity checks
- Z notation verification
- VDM contract verification
- Alloy structural verification
- Validation report verification
- Final project verification
- Counterexample Analysis

# Counterexample testing was performed using Alloy Analyzer.

- Tested Scenarios
- Duplicate voting attempts
- Invalid token usage
- Unauthorized authentication
- Token reuse violations
- Results

The system successfully detected invalid states and prevented integrity violations.

# Project Results

The Secure Voting System successfully achieved:

- Formal requirement verification
- Structural consistency validation
- Secure voting workflow
- Anonymous vote handling
- Duplicate voting prevention
- CI pipeline verification
- Formal specification compliance
- Conclusion

This project demonstrates the practical application of Software Verification & Validation techniques in developing a secure electronic voting system.

By integrating Z Notation, VDM, Alloy Analyzer, and GitHub Actions, the project ensures:

- Functional correctness
- Security verification
- Integrity preservation
- Structural consistency
- Formal validation

The Secure Voting System successfully satisfies all mandatory SVV semester project requirements.

# Author
Hafiz Muhammad Faizan

# BS Software Engineering
Software Verification & Validation (SVV) Project

# Portfolio Website:
www.hafizmfaizan.site

# GitHub Repository:
https://github.com/thehmfpk/secure-voting-system-software-verification-and-valideation-project
