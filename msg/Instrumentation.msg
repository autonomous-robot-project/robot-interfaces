# Measurements of the controller for the verifications (ADR 028).
# Published at 10 Hz; counters accumulate since boot, and the wheel speeds are those of the latest
# control cycle.

uint32 expiries          # command expiries since boot
uint32 expiry_delay_us   # last expiry: reception of the command -> control cycle that expired it
float32 left_wheel_speed   # m/s, positive forward; zero below v_min (V-02)
float32 right_wheel_speed  # m/s, positive forward; zero below v_min (V-02)
