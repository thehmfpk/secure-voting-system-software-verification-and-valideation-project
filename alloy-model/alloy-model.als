module secureVotingSystem

sig Voter {
    // A voter may or may not have an active authentication session
    authenticated : lone Authentication
}

sig Authentication {
    // Every authentication must belong to exactly one voter
    voter : one Voter
}

fact IdentityRules {
    // Ensures if Voter A points to Auth B, then Auth B must point back to Voter A
    all v: Voter, a: Authentication | v.authenticated = a <=> a.voter = v
    
    // System registry links
    VotingSystem.registeredVoters = Voter
    VotingSystem.authenticatedVoters = Authentication
}

/* 
  =====================================================
  LAYER 3: TOKENS (The Authorization)
  =====================================================
*/
sig Token {
    // A token is issued specifically to an authenticated session
    issuedTo : one Authentication
}

fact TokenRules {
    VotingSystem.issuedTokens = Token
    
    // A token must belong to a valid authentication in the system
    all t: Token | t.issuedTo in VotingSystem.authenticatedVoters
    
    // Integrity: One authentication session gets at most one token
    all a: Authentication | lone t: Token | t.issuedTo = a
}

/* 
  =====================================================
  LAYER 4: VOTES & CANDIDATES (The Action)
  =====================================================
*/
sig Candidate {}

sig Vote {
    usedToken : one Token,
    selects   : one Candidate
}

fact VotingRules {
    VotingSystem.castVotes = Vote
    VotingSystem.candidates = Candidate

    // A vote must consume a legitimate token
    all v: Vote | v.usedToken in VotingSystem.issuedTokens
    
    // One-Vote-Per-Token: Each token can only be used once
    all t: Token | lone v: Vote | v.usedToken = t
}

/* 
  =====================================================
  LAYER 5: SYSTEM MANAGEMENT
  =====================================================
*/
one sig VotingSystem {
    registeredVoters    : set Voter,
    authenticatedVoters : set Authentication,
    issuedTokens        : set Token,
    castVotes           : set Vote,
    candidates          : set Candidate
}

/* 
  =====================================================
  SECURITY CHECKING (Assertions)
  =====================================================
*/
assert NoDoubleVoting {
    // Proof that no two different votes can share a token
    all disj v1, v2: Vote | v1.usedToken != v2.usedToken
}

assert AuthenticatedOnly {
    // Proof that every cast vote traces back to an authenticated voter
    all v: Vote | v.usedToken.issuedTo in VotingSystem.authenticatedVoters
}

pred ShowSecureVoting {
    #Voter > 2
    #Vote > 2
    #Candidate > 1
}

// Click 'Run ShowSecureVoting' in Alloy to see the instance
run ShowSecureVoting for 8

// Verification commands
check NoDoubleVoting for 8
check AuthenticatedOnly for 8
