# Measurements of the controller for the verifications (ADR 028).
# Published at 10 Hz; counters accumulate since boot, and the wheel speeds are those of the latest
# control cycle.

uint32 expiries          # command expiries since boot
uint32 expiry_delay_us   # last expiry: reception of the command -> control cycle that expired it
uint32 max_execution_time_us  # C_max since boot: end - start of a control cycle (V-05)
uint32 max_response_time_us   # R_max since boot: end - nominal release t_k (V-05)
uint32 deadline_misses        # control cycles that ended after t_k + T_C, since boot (V-05)
uint32 test_event_index        # test events answered by the sequencer since boot (V-07, ADR 049)
uint32 test_event_response_us  # last test event: its cycle t_k -> arrival of the TWIST(0, 0)
float32 left_wheel_speed   # m/s, positive forward; zero below v_min (V-02)
float32 right_wheel_speed  # m/s, positive forward; zero below v_min (V-02)
