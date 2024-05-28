syntax = "proto3";
import "nanopb.proto";

package ${proto_prefix};

message can_tunnel {
    message CANMessage{
        int32 id = 1;
        bytes data = 2 [(nanopb).max_size = 8, (nanopb).fixed_length = true];
    }

    repeated CANMessage messages = 1 [(nanopb).max_size = 680, (nanopb).max_count = 10, (nanopb).fixed_length = true];
    int64 timestamp = 2;
}

message bms_balancing_status {
    int32 group_id = 1;
    bool cell_1_balancing_status = 2;
    bool cell_2_balancing_status = 3;
    bool cell_3_balancing_status = 4;
    bool cell_4_balancing_status = 5;
    bool cell_5_balancing_status = 6;
    bool cell_6_balancing_status = 7;
    bool cell_7_balancing_status = 8;
    bool cell_8_balancing_status = 9;
    bool cell_9_balancing_status = 10;
    bool cell_10_balancing_status = 11;
    bool cell_11_balancing_status = 12;
    bool cell_12_balancing_status = 13;
    bool cell_13_balancing_status = 14;
    bool cell_14_balancing_status = 15;
    bool cell_15_balancing_status = 16;
    bool cell_16_balancing_status = 17;
    bool cell_17_balancing_status = 18;
    bool cell_18_balancing_status = 19;
    bool cell_19_balancing_status = 20;
    bool cell_20_balancing_status = 21;
    bool cell_21_balancing_status = 22;
    bool cell_22_balancing_status = 23;
    bool cell_23_balancing_status = 24;
    bool cell_24_balancing_status = 25;
    bool cell_25_balancing_status = 26;
    bool cell_26_balancing_status = 27;
    bool cell_27_balancing_status = 28;
    bool cell_28_balancing_status = 29;
    bool cell_29_balancing_status = 30;
    bool cell_30_balancing_status = 31;
    bool cell_31_balancing_status = 32;
    bool cell_32_balancing_status = 33;
    bool cell_33_balancing_status = 34;
    bool cell_34_balancing_status = 35;
    bool cell_35_balancing_status = 36;
    bool cell_36_balancing_status = 37;
    bool cell_37_balancing_status = 38;
    bool cell_38_balancing_status = 39;
    bool cell_39_balancing_status = 40;
    bool cell_40_balancing_status = 41;
    bool cell_41_balancing_status = 42;
    bool cell_42_balancing_status = 43;
    bool cell_43_balancing_status = 44;
    bool cell_44_balancing_status = 45;
    bool cell_45_balancing_status = 46;
    bool cell_46_balancing_status = 47;
    bool cell_47_balancing_status = 48;
    bool cell_48_balancing_status = 49;
    bool cell_49_balancing_status = 50;
    bool cell_50_balancing_status = 51;
    bool cell_51_balancing_status = 52;
    bool cell_52_balancing_status = 53;
    bool cell_53_balancing_status = 54;
    bool cell_54_balancing_status = 55;
    bool cell_55_balancing_status = 56;
    bool cell_56_balancing_status = 57;
    bool cell_57_balancing_status = 58;
    bool cell_58_balancing_status = 59;
    bool cell_59_balancing_status = 60;
    bool cell_60_balancing_status = 61;
}

message bms_coulomb_counts {
    float total_charge = 1;
    float total_discharge = 2;
}

message bms_detailed_temps {
    int32 group_id = 1;
    int32 ic_id = 2;
    float thermistor_id_0 = 3;
    float thermistor_id_1 = 4;
    float thermistor_id_2 = 5;
}

message bms_detailed_voltages {
    int32 group_id = 1;
    int32 ic_id = 2;
    float voltage_0 = 3;
    float voltage_1 = 4;
    float voltage_2 = 5;
}

message bms_onboard_detailed_temps {
    int32 ic_id = 1;
    float temp_0 = 2;
    float temp_1 = 3;
}

message bms_onboard_temps {
    float average_temp = 1;
    float low_temp = 2;
    float high_temp = 3;
}

message bms_status {
    int32 state = 1;
    bool overvoltage_error = 2;
    bool undervoltage_error = 3;
    bool total_voltage_high_error = 4;
    bool discharge_overcurrent_error = 5;
    bool charge_overcurrent_error = 6;
    bool discharge_overtemp_error = 7;
    bool charge_overtemp_error = 8;
    bool undertemp_error = 9;
    bool overtemp_error = 10;
    float current = 11;
    bool shutdown_g_above_threshold_error = 12;
    bool shutdown_h_above_threshold_error = 13;
}

message bms_temps {
    float average_temp = 1;
    float low_temp = 2;
    float high_temp = 3;
}

message bms_voltages {
    float average_voltage = 1;
    float low_voltage = 2;
    float high_voltage = 3;
    float total_voltage = 4;
}

message ccu_status {
    bool charger_enabled = 1;
}

message charger_control {
    int32 max_charging_voltage_high = 1;
    int32 max_charging_voltage_low = 2;
    int32 max_charging_current_high = 3;
    int32 max_charging_current_low = 4;
    int32 control = 5;
}

message charger_data {
    int32 output_dc_voltage_high = 1;
    int32 output_dc_voltage_low = 2;
    int32 output_current_high = 3;
    int32 output_current_low = 4;
    int32 flags = 5;
    int32 input_ac_voltage_high = 6;
    int32 input_ac_voltage_low = 7;
}

message em_measurement {
    int32 em_voltage = 1;
    int32 em_current = 2;
}

message em_status {
    int32 voltage_gain = 1;
    int32 current_gain = 2;
    bool overvoltage_error = 3;
    bool overpower_error = 4;
    bool logging = 5;
}

message mc1_energy {
    int32 dc_bus_voltage = 1;
    int32 motor_power = 2;
    int32 feedback_torque = 3;
}

message mc1_setpoints_command {
    bool inverter_enable = 1;
    bool hv_enable = 2;
    bool driver_enable = 3;
    bool remove_error = 4;
    int32 speed_setpoint_rpm = 5;
    int32 positive_torque_limit = 6;
    int32 negative_torque_limit = 7;
}

message mc1_status {
    bool system_ready = 1;
    bool error = 2;
    bool warning = 3;
    bool quit_dc_on = 4;
    bool dc_on = 5;
    bool quit_inverter_on = 6;
    bool inverter_on = 7;
    bool derating_on = 8;
    int32 speed_rpm = 9;
    int32 torque_current = 10;
    int32 magnetizing_current = 11;
}

message mc1_temps {
    float motor_temp = 1;
    float inverter_temp = 2;
    int32 diagnostic_number = 3;
    float igbt_temp = 4;
}

message mc1_torque_command {
    int32 torque_command = 1;
}

message mc2_energy {
    int32 dc_bus_voltage = 1;
    int32 motor_power = 2;
    int32 feedback_torque = 3;
}

message mc2_setpoints_command {
    bool inverter_enable = 1;
    bool hv_enable = 2;
    bool driver_enable = 3;
    bool remove_error = 4;
    int32 speed_setpoint_rpm = 5;
    int32 positive_torque_limit = 6;
    int32 negative_torque_limit = 7;
}

message mc2_status {
    bool system_ready = 1;
    bool error = 2;
    bool warning = 3;
    bool quit_dc_on = 4;
    bool dc_on = 5;
    bool quit_inverter_on = 6;
    bool inverter_on = 7;
    bool derating_on = 8;
    int32 speed_rpm = 9;
    int32 torque_current = 10;
    int32 magnetizing_current = 11;
}

message mc2_temps {
    float motor_temp = 1;
    float inverter_temp = 2;
    int32 diagnostic_number = 3;
    float igbt_temp = 4;
}

message mc2_torque_command {
    int32 torque_command = 1;
}

message mc3_energy {
    int32 dc_bus_voltage = 1;
    int32 motor_power = 2;
    int32 feedback_torque = 3;
}

message mc3_setpoints_command {
    bool inverter_enable = 1;
    bool hv_enable = 2;
    bool driver_enable = 3;
    bool remove_error = 4;
    int32 speed_setpoint_rpm = 5;
    int32 positive_torque_limit = 6;
    int32 negative_torque_limit = 7;
}

message mc3_status {
    bool system_ready = 1;
    bool error = 2;
    bool warning = 3;
    bool quit_dc_on = 4;
    bool dc_on = 5;
    bool quit_inverter_on = 6;
    bool inverter_on = 7;
    bool derating_on = 8;
    int32 speed_rpm = 9;
    int32 torque_current = 10;
    int32 magnetizing_current = 11;
}

message mc3_temps {
    float motor_temp = 1;
    float inverter_temp = 2;
    int32 diagnostic_number = 3;
    float igbt_temp = 4;
}

message mc3_torque_command {
    int32 torque_command = 1;
}

message mc4_energy {
    int32 dc_bus_voltage = 1;
    int32 motor_power = 2;
    int32 feedback_torque = 3;
}

message mc4_setpoints_command {
    bool inverter_enable = 1;
    bool hv_enable = 2;
    bool driver_enable = 3;
    bool remove_error = 4;
    int32 speed_setpoint_rpm = 5;
    int32 positive_torque_limit = 6;
    int32 negative_torque_limit = 7;
}

message mc4_status {
    bool system_ready = 1;
    bool error = 2;
    bool warning = 3;
    bool quit_dc_on = 4;
    bool dc_on = 5;
    bool quit_inverter_on = 6;
    bool inverter_on = 7;
    bool derating_on = 8;
    int32 speed_rpm = 9;
    int32 torque_current = 10;
    int32 magnetizing_current = 11;
}

message mc4_temps {
    float motor_temp = 1;
    float inverter_temp = 2;
    int32 diagnostic_number = 3;
    float igbt_temp = 4;
}

message mc4_torque_command {
    int32 torque_command = 1;
}

message mcu_analog_readings {
    int32 steering_1 = 1;
    int32 steering_2 = 2;
    int32 hall_effect_current = 3;
    int32 glv_battery_voltage = 4;
}

message mcu_front_pots {
    int32 potentiometer_fl = 1;
    int32 potentiometer_fr = 2;
}

message mcu_load_cells {
    int32 load_cell_fl = 1;
    int32 load_cell_fr = 2;
}

message mcu_pedal_readings {
    float accel_percent_float = 1;
    float brake_percent_float = 2;
    float mechanical_brake_percent_float = 3;
}

message mcu_rear_pots {
    int32 potentiometer_rl = 1;
    int32 potentiometer_rr = 2;
}

message mcu_status {
    bool imd_ok_high = 1;
    bool shutdown_b_above_threshold = 2;
    bool bms_ok_high = 3;
    bool shutdown_c_above_threshold = 4;
    bool bspd_ok_high = 5;
    bool shutdown_d_above_threshold = 6;
    bool shoftware_ok_high = 7;
    bool shutdown_e_above_threshold = 8;
    bool mechanical_brake_active = 9;
    bool no_accel_implausability = 10;
    bool no_brake_implausability = 11;
    bool brake_pedal_active = 12;
    bool bspd_current_high = 13;
    bool bspd_brake_high = 14;
    bool no_accel_or_brake_implausability = 15;
    bool drive_buzzer = 16;
    string ecu_state = 17;
    bool inverter_error = 18;
    bool energy_meter_present = 19;
    bool software_ok = 20;
    bool launch_control_active = 21;
    int32 pack_charge_critical = 22;
    int32 max_torque = 23;
    int32 torque_mode = 24;
    float distance_traveled_m = 25;
}

message dashboard_state {
    bool start_button = 1;
    bool mark_button = 2;
    bool mode_button = 3;
    bool motor_controller_cycle_button = 4;
    bool launch_ctrl_button = 5;
    bool torque_mode_button = 6;
    bool led_dimmer_button = 7;
    bool left_shifter_button = 8;
    bool right_shifter_button = 9;
    bool shutdown_h_above_threshold = 10;
    bool ssok_above_threshold = 11;
    bool drive_buzzer = 12;
    int32 tcu_recording_state = 13;
    string dial_state = 14;
}

message dashboard_mcu_state {
    int32 bots_led = 1;
    int32 launch_control_led = 2;
    int32 mode_led = 3;
    int32 mechanical_brake_led = 4;
    int32 cockpit_brb_led = 5;
    int32 inertia_status_led = 6;
    int32 start_status_led = 7;
    int32 motor_controller_error_led = 8;
    int32 imd_led = 9;
    int32 ams_led = 10;
    bool drive_buzzer = 11;
    int32 glv_led = 12;
    int32 pack_charge_led = 13;
}

message tcu_lap_times {
    int32 best_lap_time = 1;
    int32 prev_lap_time = 2;
    int32 lap_clock_state = 3;
}

message tcu_driver_msg {
    int32 driver_message = 1;
    int32 driver_msg_var_1 = 2;
    int32 driver_msg_var_2 = 3;
    int32 target_lap_time = 4;
}

message lf_ttpms_1 {
    int32 LF_TTPMS_SN = 1;
    int32 LF_TTPMS_BAT_V = 2;
    int32 LF_TTPMS_P = 3;
    int32 LF_TTPMS_P_GAUGE = 4;
}

message lf_ttpms_2 {
    float LF_TTPMS_T1 = 1;
    float LF_TTPMS_T2 = 2;
    float LF_TTPMS_T3 = 3;
    float LF_TTPMS_T4 = 4;
}

message lf_ttpms_3 {
    float LF_TTPMS_T5 = 1;
    float LF_TTPMS_T6 = 2;
    float LF_TTPMS_T7 = 3;
    float LF_TTPMS_T8 = 4;
}

message lf_ttpms_4 {
    float LF_TTPMS_T9 = 1;
    float LF_TTPMS_T10 = 2;
    float LF_TTPMS_T11 = 3;
    float LF_TTPMS_T12 = 4;
}

message lf_ttpms_5 {
    float LF_TTPMS_T13 = 1;
    float LF_TTPMS_T14 = 2;
    float LF_TTPMS_T15 = 3;
    float LF_TTPMS_T16 = 4;
}

message lf_ttpms_6 {
    int32 LF_TTPMS_TC = 1;
    int32 LF_TTPMS_RSSI = 2;
    float LF_TTPMS_T = 3;
    int32 LF_TTPMS_NODE_ID = 4;
}

message lr_ttpms_1 {
    int32 LR_TTPMS_SN = 1;
    int32 LR_TTPMS_BAT_V = 2;
    int32 LR_TTPMS_P = 3;
    int32 LR_TTPMS_P_GAUGE = 4;
}

message lr_ttpms_2 {
    float LR_TTPMS_T1 = 1;
    float LR_TTPMS_T2 = 2;
    float LR_TTPMS_T3 = 3;
    float LR_TTPMS_T4 = 4;
}

message lr_ttpms_3 {
    float LR_TTPMS_T5 = 1;
    float LR_TTPMS_T6 = 2;
    float LR_TTPMS_T7 = 3;
    float LR_TTPMS_T8 = 4;
}

message lr_ttpms_4 {
    float LR_TTPMS_T9 = 1;
    float LR_TTPMS_T10 = 2;
    float LR_TTPMS_T11 = 3;
    float LR_TTPMS_T12 = 4;
}

message lr_ttpms_5 {
    float LR_TTPMS_T13 = 1;
    float LR_TTPMS_T14 = 2;
    float LR_TTPMS_T15 = 3;
    float LR_TTPMS_T16 = 4;
}

message lr_ttpms_6 {
    int32 LR_TTPMS_TC = 1;
    int32 LR_TTPMS_RSSI = 2;
    float LR_TTPMS_T = 3;
    int32 LR_TTPMS_NODE_ID = 4;
}

message rf_ttpms_1 {
    int32 RF_TTPMS_SN = 1;
    int32 RF_TTPMS_BAT_V = 2;
    int32 RF_TTPMS_P = 3;
    int32 RF_TTPMS_P_GAUGE = 4;
}

message rf_ttpms_2 {
    float RF_TTPMS_T1 = 1;
    float RF_TTPMS_T2 = 2;
    float RF_TTPMS_T3 = 3;
    float RF_TTPMS_T4 = 4;
}

message rf_ttpms_3 {
    float RF_TTPMS_T5 = 1;
    float RF_TTPMS_T6 = 2;
    float RF_TTPMS_T7 = 3;
    float RF_TTPMS_T8 = 4;
}

message rf_ttpms_4 {
    float RF_TTPMS_T9 = 1;
    float RF_TTPMS_T10 = 2;
    float RF_TTPMS_T11 = 3;
    float RF_TTPMS_T12 = 4;
}

message rf_ttpms_5 {
    float RF_TTPMS_T13 = 1;
    float RF_TTPMS_T14 = 2;
    float RF_TTPMS_T15 = 3;
    float RF_TTPMS_T16 = 4;
}

message rf_ttpms_6 {
    int32 RF_TTPMS_TC = 1;
    int32 RF_TTPMS_RSSI = 2;
    float RF_TTPMS_T = 3;
    int32 RF_TTPMS_NODE_ID = 4;
}

message rr_ttpms_1 {
    int32 RR_TTPMS_SN = 1;
    int32 RR_TTPMS_BAT_V = 2;
    int32 RR_TTPMS_P = 3;
    int32 RR_TTPMS_P_GAUGE = 4;
}

message rr_ttpms_2 {
    float RR_TTPMS_T1 = 1;
    float RR_TTPMS_T2 = 2;
    float RR_TTPMS_T3 = 3;
    float RR_TTPMS_T4 = 4;
}

message rr_ttpms_3 {
    float RR_TTPMS_T5 = 1;
    float RR_TTPMS_T6 = 2;
    float RR_TTPMS_T7 = 3;
    float RR_TTPMS_T8 = 4;
}

message rr_ttpms_4 {
    float RR_TTPMS_T9 = 1;
    float RR_TTPMS_T10 = 2;
    float RR_TTPMS_T11 = 3;
    float RR_TTPMS_T12 = 4;
}

message rr_ttpms_5 {
    float RR_TTPMS_T13 = 1;
    float RR_TTPMS_T14 = 2;
    float RR_TTPMS_T15 = 3;
    float RR_TTPMS_T16 = 4;
}

message rr_ttpms_6 {
    int32 RR_TTPMS_TC = 1;
    int32 RR_TTPMS_RSSI = 2;
    float RR_TTPMS_T = 3;
    int32 RR_TTPMS_NODE_ID = 4;
}

message acu_shunt_measurements {
    float shunt_voltage = 1;
    float shunt_current = 2;
}

message penthouse_accum_msg {
    int32 hall_curr_ref = 1;
    int32 hall_curr_signal = 2;
}

message drivetrain_rpms_telem {
    int32 fr_motor_rpm = 1;
    int32 fl_motor_rpm = 2;
    int32 rr_motor_rpm = 3;
    int32 rl_motor_rpm = 4;
}

message drivetrain_err_status_telem {
    int32 mc1_diagnostic_number = 1;
    int32 mc2_diagnostic_number = 2;
    int32 mc3_diagnostic_number = 3;
    int32 mc4_diagnostic_number = 4;
}

message drivetrain_status_telem {
    bool mc1_dc_on = 1;
    bool mc1_derating_on = 2;
    bool mc1_error = 3;
    bool mc1_inverter_on = 4;
    bool mc1_quit_dc = 5;
    bool mc1_quit_inverter_on = 6;
    bool mc1_system_ready = 7;
    bool mc1_warning = 8;
    bool mc2_dc_on = 9;
    bool mc2_derating_on = 10;
    bool mc2_error = 11;
    bool mc2_inverter_on = 12;
    bool mc2_quit_dc = 13;
    bool mc2_quit_inverter_on = 14;
    bool mc2_system_ready = 15;
    bool mc2_warning = 16;
    bool mc3_dc_on = 17;
    bool mc3_derating_on = 18;
    bool mc3_error = 19;
    bool mc3_inverter_on = 20;
    bool mc3_quit_dc = 21;
    bool mc3_quit_inverter_on = 22;
    bool mc3_system_ready = 23;
    bool mc3_warning = 24;
    bool mc4_dc_on = 25;
    bool mc4_derating_on = 26;
    bool mc4_error = 27;
    bool mc4_inverter_on = 28;
    bool mc4_quit_dc = 29;
    bool mc4_quit_inverter_on = 30;
    bool mc4_system_ready = 31;
    bool mc4_warning = 32;
    bool accel_implausible = 33;
    bool brake_implausible = 34;
    int32 brake_percent = 35;
    int32 accel_percent = 36;
}

message sab_thermistors_1 {
    int32 thermistor_fl = 1;
    int32 thermistor_fr = 2;
    int32 thermistor_rl = 3;
    int32 thermistor_rr = 4;
}

message sab_thermistors_2 {
    int32 thermistor_forward = 1;
    int32 thermistor_left = 2;
    int32 thermistor_right = 3;
}

message sab_suspension {
    int32 potentiometer_rl = 1;
    int32 potentiometer_rr = 2;
    int32 load_cell_rl = 3;
    int32 load_cell_rr = 4;
}

message tcu_status {
    int32 shutdown_status = 1;
    int32 tcu_recording_state = 2;
}

message vn_vel {
    float vn_body_vel_x = 1;
    float vn_body_vel_y = 2;
    float vn_body_vel_z = 3;
}

message vn_linear_accel {
    float vn_lin_ins_accel_x = 1;
    float vn_lin_ins_accel_y = 2;
    float vn_lin_ins_accel_z = 3;
}

message vn_linear_accel_uncomp {
    float vn_lin_uncomp_accel_x = 1;
    float vn_lin_uncomp_accel_y = 2;
    float vn_lin_uncomp_accel_z = 3;
}

message vn_ypr {
    float vn_yaw = 1;
    float vn_pitch = 2;
    float vn_roll = 3;
}

message vn_lat_lon {
    float vn_gps_lat = 1;
    float vn_gps_lon = 2;
}

message vn_gps_time {
    uint64 vn_gps_time = 1;
}

message vn_status {
    string vn_gps_status = 1;
}

message drivetrain_torque_telem {
    int32 fl_motor_torque = 1;
    int32 fr_motor_torque = 2;
    int32 rl_motor_torque = 3;
    int32 rr_motor_torque = 4;
}

message mcu_suspension {
    int32 potentiometer_fl = 1;
    int32 potentiometer_fr = 2;
    int32 load_cell_fl = 3;
    int32 load_cell_fr = 4;
}

message vn_angular_rate {
    float angular_rate_x = 1;
    float angular_rate_y = 2;
    float angular_rate_z = 3;
}

