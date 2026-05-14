# Validation Checklist – Secure Voting System

# 1. Introduction

This validation checklist verifies the Secure Voting System requirements using the GitHub Actions CI Pipeline, formal models, and verification modules developed during the SVV project.

The checklist is directly mapped with the implemented CI workflow jobs defined in the verification pipeline.

---

# 2. CI Pipeline Validation Checklist

| ID | Pipeline Job | Requirement Verified | Validation Method | Status | Evidence |
|---|---|---|---|---|---|
| VC1 | authentication-requirement | Verify voter authentication requirement | GitHub Actions + Requirements Validation | ✔ Passed | Authentication specifications checked |
| VC2 | duplicate-voting-prevention | Verify one vote per voter constraint | Alloy Verification | ✔ Passed | Alloy model validation |
| VC3 | candidate-validation | Verify candidate mapping constraints | Alloy Structural Verification | ✔ Passed | Candidate relationship checks |
| VC4 | vote-integrity-check | Verify vote integrity requirements | VDM Specification Validation | ✔ Passed | Integrity rules verified |
| VC5 | z-notation-verification | Verify Z notation schemas | Z Formal Modeling | ✔ Passed | Z schemas validated |
| VC6 | vdm-contract-verification | Verify VDM pre/post conditions | VDM Contract Verification | ✔ Passed | Functional contracts checked |
| VC7 | alloy-structural-verification | Verify Alloy structural constraints | Alloy Analyzer | ✔ Passed | Facts and assertions verified |
| VC8 | validation-report-check | Verify validation reports and evidence | Validation Folder Verification | ✔ Passed | Validation documents checked |
| VC9 | final-verification | Final complete system verification | GitHub Actions Final Job | ✔ Passed | All pipeline jobs completed successfully |

---

# 3. Functional Requirement Verification

| Requirement ID | Requirement | Verification Source | Status |
|---|---|---|---|
| FR1 | Voter must register before authentication | Z Model | ✔ Passed |
| FR2 | Only authenticated voters receive tokens | VDM + Alloy | ✔ Passed |
| FR3 | Each voter receives only one token | Alloy Constraint | ✔ Passed |
| FR4 | Vote must reference valid candidate | Alloy Relations | ✔ Passed |
| FR5 | Valid token required for voting | VDM Operations | ✔ Passed |

---

# 4. Integrity & Security Verification

| ID | Security Constraint | Verification Method | Status |
|---|---|---|---|
| IC1 | No double voting | Alloy Assertion | ✔ Passed |
| IC2 | Token reuse prevention | Alloy Fact | ✔ Passed |
| IC3 | Token linked to one voter only | Alloy Constraint | ✔ Passed |
| SR1 | Maintain voter anonymity | Alloy Structural Design | ✔ Passed |
| SR2 | Prevent unauthorized access | Z + VDM Preconditions | ✔ Passed |

---

# 5. Counterexample Testing

| Test Scenario | Result |
|---|---|
| Removed token uniqueness constraint | Counterexample generated |
| Duplicate voting attempt | ✔ Detected |
| Invalid vote without token | ✔ Prevented |
| Unauthorized authentication | ✔ Blocked |

---

# 6. Conclusion

The Secure Voting System validation process successfully verified all project requirements through:

- Z Notation
- VDM Specifications
- Alloy Analyzer
- GitHub Actions CI Pipeline

The CI pipeline validated all project modules and confirmed that the system satisfies:

- Functional correctness
- Structural consistency
- Security constraints
- Integrity requirements
- Formal verification objectives
