# robot-interfaces

ROS 2 package `robot_interfaces`: custom messages shared by the controller (ESP32-S3, micro-ROS) and the sequencer (RPi 5), and the codes of the State masks as constants. Single source of the messages (ADR 012); a standard type is used whenever one fits (ADR 025).

| Message | Topic | Direction |
| --- | --- | --- |
| `Command` | Comando | RPi → ESP32, 20 Hz |
| `State` | Estado | ESP32 → RPi, 100 Hz |
