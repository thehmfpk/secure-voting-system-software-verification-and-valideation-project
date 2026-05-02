# C. Functional Specification (VDM) - Description

## 1. System State

The Voting System is defined using the following state components:

- registered voters  
- authenticated voters  
- token mapping between voters and tokens  
- vote storage mapped by tokens  
- used tokens to prevent reuse  

These components ensure separation between voter identity and vote data, supporting system integrity and anonymity.

---

## 2. Functional Specification

The system defines formal operations with strict preconditions and postconditions.

### 2.1 Register Operation

**Precondition:**
- Voter must not already be registered

**Postcondition:**
- Voter is added to the system’s registered set

---

### 2.2 Authenticate Operation

**Precondition:**
- Voter must exist in the system
- Voter must not already be authenticated

**Postcondition:**
- Voter is marked as authenticated
- A unique token is assigned to the voter

---

### 2.3 CastVote Operation

**Precondition:**
- Token must be valid
- Token must not have been used before

**Postcondition:**
- Vote is recorded in the system
- Token is marked as used

---

## 3. Contract-Based Verification

Each operation is defined as a formal contract ensuring correctness:

| Function      | Precondition                    | Postcondition                          |
|--------------|--------------------------------|----------------------------------------|
| Register     | Voter not already registered   | Voter added to registered set          |
| Authenticate | Valid registered voter         | Token assigned to voter                |
| CastVote     | Valid unused token            | Vote stored and token marked as used   |

---

## 4. Summary

The VDM specification ensures:

- Correct system behavior through formal contracts  
- Prevention of invalid operations  
- Separation of identity and voting data  
- Enforcement of system integrity constraints  
