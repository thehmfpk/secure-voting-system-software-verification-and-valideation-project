# Validation Checklist – Secure Voting System

## 1. Introduction

This checklist validates system requirements defined in the SRS using formal models (Z, VDM, Alloy).

---

## 2. Functional Requirements Validation

| ID | Requirement | Validation Method | Status | Evidence |
|----|------------|------------------|--------|----------|
| FR1 | Voter must be registered before authentication | Z Model | ✔ Passed | State invariant |
| FR2 | Only authenticated voters receive tokens | VDM + Alloy | ✔ Passed | Precondition + Fact |
| FR3 | Each voter receives at most one token | Alloy | ✔ Passed | VoterFlow constraint |
| FR4 | Vote must select a candidate | Alloy | ✔ Passed | VotingFlow |
| FR5 | Token required to cast vote | VDM + Alloy | ✔ Passed | Operation rule |

---

## 3. Integrity Constraints Validation

| ID | Constraint | Validation Method | Status | Evidence |
|----|------------|------------------|--------|----------|
| IC1 | No double voting | Alloy Assertion | ✔ Passed | NoDoubleVoting |
| IC2 | Token used only once | Alloy Fact | ✔ Passed | VotingFlow |
| IC3 | Token belongs to only one voter | Alloy Fact | ✔ Passed | TokenSystem |

---

## 4. Security Requirements Validation

| ID | Requirement | Validation Method | Status | Evidence |
|----|------------|------------------|--------|----------|
| SR1 | Maintain voter anonymity | Alloy Model | ✔ Passed | No direct relation |
| SR2 | Prevent identity leakage | Design + Alloy | ✔ Passed | Token-based voting |
| SR3 | Only authenticated access allowed | Z + VDM | ✔ Passed | Preconditions |

---

## 5. Counterexample Testing

| Test Case | Result |
|----------|--------|
| Removed token reuse constraint | Counterexample generated |
| Duplicate voting scenario | ✔ Detected |
| Invalid vote without token | ✔ Prevented |

---

## 6. Conclusion

All requirements are:
- Formally specified
- Successfully validated
- Verified using Alloy Analyzer

System satisfies:
- Functional correctness  
- Integrity constraints  
- Security properties
