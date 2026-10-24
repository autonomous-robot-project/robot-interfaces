# Snapshot of the controller, published every control cycle (ADR 025).
# Conditions are current state, not events: the sequencer detects the edges (ADR 037).

uint32 faults    # active faults, one bit per code
uint32 reflexes  # active reflexes, one bit per code

Command echo     # command in force this cycle: the received one, or TWIST(0, 0) after expiry
