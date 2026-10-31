# Snapshot of the controller, published every control cycle (ADR 025).
# Conditions are current state, not events: the sequencer detects the edges (ADR 037).

# Fault codes, one bit each in `faults` (robot-docs arquitetura.md, "Falhas reportadas")
uint32 FAULT_COGNIZANT=1         # speed error above e_f for T_f (RF-02)
uint32 FAULT_DEADLINE_MISSED=2   # a control cycle missed its deadline (ADR 028)
uint32 FAULT_WATCHDOG_RESTART=4  # restarted by the task watchdog (ADR 029)
uint32 FAULT_FRONT_SENSOR=8      # no usable ranging of the front sensor for T_S (ADR 021)

# Reflex codes, one bit each in `reflexes` (robot-docs arquitetura.md, "Reflexos")
uint32 REFLEX_FRONT_OBSTACLE=1   # valid front ranging below d_stop: no forward motion (ADR 021)

uint32 faults    # active faults, one bit per code
uint32 reflexes  # active reflexes, one bit per code

Command echo     # command in force this cycle: the received one, or TWIST(0, 0) after expiry
