# Validation Checklist – Secure Voting System

## 1. Functional Validation

| Requirement | Description | Status | Evidence |
|------------|------------|--------|---------|
| R1 | Voter must register before authentication | ✔ Passed | Z Model |
| R2 | Only authenticated voter gets token | ✔ Passed | VDM + Alloy |
| R3 | Each voter gets only one token | ✔ Passed | Alloy constraint |
| R4 | Each token can be used once | ✔ Passed | Assertion |
| R5 | Vote must select a candidate | ✔ Passed | Alloy model |

---

## 2. Integrity Validation

| Constraint | Description | Status | Evidence |
|-----------|------------|--------|---------|
| I1 | No double voting | ✔ Passed | NoDoubleVoting assertion |
| I2 | Valid token usage | ✔ Passed | ValidVoting assertion |
| I3 | Token uniqueness | ✔ Passed | TokenSystem fact |

---

## 3. Security Validation

| Requirement | Description | Status | Evidence |
|------------|------------|--------|---------|
| S1 | Anonymity maintained | ✔ Passed | No direct relation |
| S2 | Token-based voting | ✔ Passed | Model design |
| S3 | No voter identity in vote | ✔ Passed | Alloy structure |

---

## 4. Counterexample Validation

| Test | Result |
|------|--------|
| Removed token reuse constraint | Counterexample found |
| Duplicate voting detected | ✔ Verified |

---

## Conclusion

All system requirements are validated successfully using formal methods and Alloy verification.
