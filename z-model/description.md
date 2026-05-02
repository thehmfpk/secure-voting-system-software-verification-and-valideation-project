# B. Formal Modeling using Z Notation

## 1. Introduction

Z Notation is used to formally model the Secure Voting System. It provides a mathematical framework to define system states, invariants, and operations, ensuring correctness and consistency.

---

## 2. System State Definition

The system state is defined as:

- `registered`: Set of all registered voters  
- `authenticated`: Set of voters who are authenticated  
- `tokens`: Mapping of voters to tokens  
- `usedTokens`: Set of tokens already used  
- `votes`: Mapping of tokens to candidates  

This structure ensures separation between voter identity and voting process.

---

## 3. System Invariants

The following invariants are defined:

### Invariant 1  
Authenticated voters must be registered


authenticated ⊆ registered


---

### Invariant 2  
Votes must be associated only with valid tokens


dom votes ⊆ ran tokens


---

### Invariant 3  
Used tokens must be valid issued tokens


usedTokens ⊆ ran tokens


---

These invariants ensure system integrity and correctness.

---

## 4. Operations

### Register Operation

Registers a new voter into the system.

- Precondition: Voter is not already registered  
- Postcondition: Voter is added to registered set  

---

### Authenticate Operation

Authenticates a voter and assigns a unique token.

- Precondition: Voter is registered and not already authenticated  
- Postcondition: Voter is authenticated and assigned a token  

---

### CastVote Operation

Allows a voter to cast a vote using a token.

**Preconditions:**
- Token is valid  
- Token is not used  

**Postconditions:**
- Vote is recorded  
- Token is marked as used  

---

## 5. State Transition Modeling

The system transitions through the following states:

1. **Registration State**  
   Voters are added to the system  

2. **Authentication State**  
   Tokens are generated  

3. **Voting State**  
   Votes are cast using tokens  

Each operation causes a transition from one valid state to another while maintaining invariants.

---

## 6. Mapping to Requirements

| Requirement | Z Component |
|------------|------------|
| FR1 | Register |
| FR2 | Authenticate |
| FR4 | CastVote |
| FR5 | usedTokens invariant |
| DR3 | votes mapping (no voter link) |
