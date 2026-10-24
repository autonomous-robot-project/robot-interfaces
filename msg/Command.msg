# Behavior selected by the sequencer and its parameters, in one atomic message (ADR 024).
# Only the fields of the active behavior are used; the others are zero.

uint8 TWIST=0    # planar twist in base_link (= geometry_msgs/Twist linear.x, angular.z)
uint8 TURN_TO=1  # angular position in odom
uint8 GO_TO=2    # linear position in odom

uint8 behavior

float32 linear   # TWIST: v (m/s)
float32 angular  # TWIST: omega (rad/s)
float32 theta    # TURN_TO: heading in odom (rad)
float32 x        # GO_TO: target x in odom (m)
float32 y        # GO_TO: target y in odom (m)
