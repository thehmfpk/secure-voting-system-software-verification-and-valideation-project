# Secure Voting System – ALLOY MODEL Description

## Purpose of the Model
This Alloy model represents a **Secure Voting System** designed to formally verify the correctness and security of an electronic voting process.  
The main goal is to ensure that only authenticated users can vote, each vote is valid, and no voter can vote more than once using the same token.

---

## What the Code is Doing (Layer-wise Explanation)

### 1. Voter & Authentication Layer
- The system defines a `Voter` who represents a person eligible to vote.
- Each voter may have an `Authentication` session.
- Authentication ensures identity verification before any voting activity.
- A strict **one-to-one relationship rule** is maintained between voter and authentication.

**Purpose:** Ensure only verified users can access the voting system.

---

### 2. Identity Consistency Rules
- The `IdentityRules` fact enforces consistency:
  - If a voter is linked to an authentication, the authentication must also point back to that voter.
- The system registers all voters and authenticated sessions inside `VotingSystem`.

 **Purpose:** Maintain data integrity between voters and their authentication sessions.

---

### 3. Token (Authorization Layer)
- A `Token` is issued only to an authenticated session.
- Each authentication can receive at most one token.
- Tokens act as **authorization keys** for voting.

**Purpose:** Ensure only authenticated users are allowed to vote and prevent misuse.

---

### 4. Voting Process Layer
- A `Vote` consists of:
  - `usedToken`: The token used to cast the vote
  - `selects`: The candidate chosen
- Each vote must use a valid issued token.
- A token can only be used **once** (prevents double voting).

**Purpose:** Ensure secure and single-use voting per authentication.

---

### 5. Candidate Definition
- `Candidate` represents the options available in the election.
- Voters can select exactly one candidate per vote.

**Purpose:** Define voting choices in the system.

---

### 6. Global System (VotingSystem)
- Acts as the central registry of the entire system.
- Stores:
  - Registered voters
  - Authenticated sessions
  - Issued tokens
  - Cast votes
  - Candidates

**Purpose:** Maintain a complete and controlled system state.

---

## Security Constraints (Facts)

### ✔ Token Integrity
- Tokens are only issued to authenticated users.
- Each authentication can have at most one token.

### ✔ Voting Integrity
- Each vote must use a valid token.
- A token can only be used once.

---

## Assertions (Verification Goals)

### NoDoubleVoting
Ensures that:
- No two votes can use the same token.
- Prevents duplicate voting attempts.

### AuthenticatedOnly
Ensures that:
- Every vote comes from an authenticated user.
- No unauthorized voting is possible.

---

## Testing Scenario
- `ShowSecureVoting` generates a sample system with:
  - Multiple voters
  - Multiple votes
  - At least one candidate

Used to visualize and test system behavior in Alloy Analyzer.

---

## Summary
This Alloy model formally verifies a secure voting system by enforcing:

- Identity verification (Authentication)
- Secure authorization (Token system)
- One-time voting rule
- Prevention of double voting
- System-wide consistency using formal constraints

✔ It ensures the voting system is **secure, consistent, and mathematically verifiable**.
