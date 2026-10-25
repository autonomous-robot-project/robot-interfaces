# Measurements of the controller for the verifications (ADR 028).
# Published at 10 Hz; counters accumulate since boot.

uint32 expiries          # command expiries since boot
uint32 expiry_delay_us   # last expiry: reception of the command -> control cycle that expired it
