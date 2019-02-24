\ Model Final_Project
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  7 y1,2,1 + 7 y1,2,2 + 7 y1,2,3 + 7 y1,2,4 + 7 y1,2,5 + 3 y1,3,1 + 3 y1,3,2
   + 3 y1,3,3 + 3 y1,3,4 + 3 y1,3,5 + 7 y2,1,1 + 7 y2,1,2 + 7 y2,1,3
   + 7 y2,1,4 + 7 y2,1,5 + 6 y2,3,1 + 6 y2,3,2 + 6 y2,3,3 + 6 y2,3,4
   + 6 y2,3,5 + 3 y3,1,1 + 3 y3,1,2 + 3 y3,1,3 + 3 y3,1,4 + 3 y3,1,5
   + 6 y3,2,1 + 6 y3,2,2 + 6 y3,2,3 + 6 y3,2,4 + 6 y3,2,5 + 30 n1,2,1
   + 10 n1,2,2 + 10 n1,2,3 + 10 n1,2,4 + 10 n1,2,5 + 30 n1,3,1 + 10 n1,3,2
   + 10 n1,3,3 + 10 n1,3,4 + 10 n1,3,5 + 30 n2,1,1 + 10 n2,1,2 + 10 n2,1,3
   + 10 n2,1,4 + 10 n2,1,5 + 30 n2,3,1 + 10 n2,3,2 + 10 n2,3,3 + 10 n2,3,4
   + 10 n2,3,5 + 30 n3,1,1 + 10 n3,1,2 + 10 n3,1,3 + 10 n3,1,4 + 10 n3,1,5
   + 30 n3,2,1 + 10 n3,2,2 + 10 n3,2,3 + 10 n3,2,4 + 10 n3,2,5 - 7 m1,2,1
   - 7 m1,2,2 - 7 m1,2,3 - 7 m1,2,4 - 7 m1,2,5 - 3 m1,3,1 - 3 m1,3,2
   - 3 m1,3,3 - 3 m1,3,4 - 3 m1,3,5 - 7 m2,1,1 - 7 m2,1,2 - 7 m2,1,3
   - 7 m2,1,4 - 7 m2,1,5 - 6 m2,3,1 - 6 m2,3,2 - 6 m2,3,3 - 6 m2,3,4
   - 6 m2,3,5 - 3 m3,1,1 - 3 m3,1,2 - 3 m3,1,3 - 3 m3,1,4 - 3 m3,1,5
   - 6 m3,2,1 - 6 m3,2,2 - 6 m3,2,3 - 6 m3,2,4 - 6 m3,2,5
Subject To
 total_aircraft: x1,1 + x2,1 + x3,1 = 1200
 aircraft_5_1_A: x1,1 - x1,5 + y1,2,5 + y1,3,5 - y2,1,5 - y3,1,5 = 0
 aircraft_5_1_B: x2,1 - x2,5 - y1,2,5 + y2,1,5 + y2,3,5 - y3,2,5 = 0
 aircraft_5_1_C: x3,1 - x3,5 - y1,3,5 - y2,3,5 + y3,1,5 + y3,2,5 = 0
 aircraft_2_1_A: - x1,1 + x1,2 + y1,2,1 + y1,3,1 - y2,1,1 - y3,1,1 = 0
 aircraft_2_1_B: - x2,1 + x2,2 - y1,2,1 + y2,1,1 + y2,3,1 - y3,2,1 = 0
 aircraft_2_1_C: - x3,1 + x3,2 - y1,3,1 - y2,3,1 + y3,1,1 + y3,2,1 = 0
 aircraft_3_2_A: - x1,2 + x1,3 + y1,2,2 + y1,3,2 - y2,1,2 - y3,1,2 = 0
 aircraft_3_2_B: - x2,2 + x2,3 - y1,2,2 + y2,1,2 + y2,3,2 - y3,2,2 = 0
 aircraft_3_2_C: - x3,2 + x3,3 - y1,3,2 - y2,3,2 + y3,1,2 + y3,2,2 = 0
 aircraft_4_3_A: - x1,3 + x1,4 + y1,2,3 + y1,3,3 - y2,1,3 - y3,1,3 = 0
 aircraft_4_3_B: - x2,3 + x2,4 - y1,2,3 + y2,1,3 + y2,3,3 - y3,2,3 = 0
 aircraft_4_3_C: - x3,3 + x3,4 - y1,3,3 - y2,3,3 + y3,1,3 + y3,2,3 = 0
 aircraft_5_4_A: - x1,4 + x1,5 + y1,2,4 + y1,3,4 - y2,1,4 - y3,1,4 = 0
 aircraft_5_4_B: - x2,4 + x2,5 - y1,2,4 + y2,1,4 + y2,3,4 - y3,2,4 = 0
 aircraft_5_4_C: - x3,4 + x3,5 - y1,3,4 - y2,3,4 + y3,1,4 + y3,2,4 = 0
 airport_A_aircraft_requirement_1: x1,1 - y1,2,1 - y1,3,1 >= 0
 airport_B_aircraft_requirement_1: x2,1 - y2,1,1 - y2,3,1 >= 0
 airport_C_aircraft_requirement_1: x3,1 - y3,1,1 - y3,2,1 >= 0
 airport_A_aircraft_requirement_2: x1,2 - y1,2,2 - y1,3,2 >= 0
 airport_B_aircraft_requirement_2: x2,2 - y2,1,2 - y2,3,2 >= 0
 airport_C_aircraft_requirement_2: x3,2 - y3,1,2 - y3,2,2 >= 0
 airport_A_aircraft_requirement_3: x1,3 - y1,2,3 - y1,3,3 >= 0
 airport_B_aircraft_requirement_3: x2,3 - y2,1,3 - y2,3,3 >= 0
 airport_C_aircraft_requirement_3: x3,3 - y3,1,3 - y3,2,3 >= 0
 airport_A_aircraft_requirement_4: x1,4 - y1,2,4 - y1,3,4 >= 0
 airport_B_aircraft_requirement_4: x2,4 - y2,1,4 - y2,3,4 >= 0
 airport_C_aircraft_requirement_4: x3,4 - y3,1,4 - y3,2,4 >= 0
 airport_A_aircraft_requirement_5: x1,5 - y1,2,5 - y1,3,5 >= 0
 airport_B_aircraft_requirement_5: x2,5 - y2,1,5 - y2,3,5 >= 0
 airport_C_aircraft_requirement_5: x3,5 - y3,1,5 - y3,2,5 >= 0
 aircraft_cargo_requirement_121: y1,2,1 - m1,2,1 >= 0
 aircraft_cargo_requirement_122: y1,2,2 - m1,2,2 >= 0
 aircraft_cargo_requirement_123: y1,2,3 - m1,2,3 >= 0
 aircraft_cargo_requirement_124: y1,2,4 - m1,2,4 >= 0
 aircraft_cargo_requirement_125: y1,2,5 - m1,2,5 >= 0
 aircraft_cargo_requirement_131: y1,3,1 - m1,3,1 >= 0
 aircraft_cargo_requirement_132: y1,3,2 - m1,3,2 >= 0
 aircraft_cargo_requirement_133: y1,3,3 - m1,3,3 >= 0
 aircraft_cargo_requirement_134: y1,3,4 - m1,3,4 >= 0
 aircraft_cargo_requirement_135: y1,3,5 - m1,3,5 >= 0
 aircraft_cargo_requirement_211: y2,1,1 - m2,1,1 >= 0
 aircraft_cargo_requirement_212: y2,1,2 - m2,1,2 >= 0
 aircraft_cargo_requirement_213: y2,1,3 - m2,1,3 >= 0
 aircraft_cargo_requirement_214: y2,1,4 - m2,1,4 >= 0
 aircraft_cargo_requirement_215: y2,1,5 - m2,1,5 >= 0
 aircraft_cargo_requirement_231: y2,3,1 - m2,3,1 >= 0
 aircraft_cargo_requirement_232: y2,3,2 - m2,3,2 >= 0
 aircraft_cargo_requirement_233: y2,3,3 - m2,3,3 >= 0
 aircraft_cargo_requirement_234: y2,3,4 - m2,3,4 >= 0
 aircraft_cargo_requirement_235: y2,3,5 - m2,3,5 >= 0
 aircraft_cargo_requirement_311: y3,1,1 - m3,1,1 >= 0
 aircraft_cargo_requirement_312: y3,1,2 - m3,1,2 >= 0
 aircraft_cargo_requirement_313: y3,1,3 - m3,1,3 >= 0
 aircraft_cargo_requirement_314: y3,1,4 - m3,1,4 >= 0
 aircraft_cargo_requirement_315: y3,1,5 - m3,1,5 >= 0
 aircraft_cargo_requirement_321: y3,2,1 - m3,2,1 >= 0
 aircraft_cargo_requirement_322: y3,2,2 - m3,2,2 >= 0
 aircraft_cargo_requirement_323: y3,2,3 - m3,2,3 >= 0
 aircraft_cargo_requirement_324: y3,2,4 - m3,2,4 >= 0
 aircraft_cargo_requirement_325: y3,2,5 - m3,2,5 >= 0
 left_cargo_balance_AB_5_1: n1,2,1 - n1,2,5 + m1,2,5 = 300
 left_cargo_balance_AC_5_1: n1,3,1 - n1,3,5 + m1,3,5 = 50
 left_cargo_balance_BA_5_1: n2,1,1 - n2,1,5 + m2,1,5 = 25
 left_cargo_balance_BC_5_1: n2,3,1 - n2,3,5 + m2,3,5 = 25
 left_cargo_balance_CA_5_1: n3,1,1 - n3,1,5 + m3,1,5 = 40
 left_cargo_balance_CB_5_1: n3,2,1 - n3,2,5 + m3,2,5 = 400
 left_cargo_balance_AB_2_1: - n1,2,1 + n1,2,2 + m1,2,1 = 100
 left_cargo_balance_AC_2_1: - n1,3,1 + n1,3,2 + m1,3,1 = 50
 left_cargo_balance_BA_2_1: - n2,1,1 + n2,1,2 + m2,1,1 = 25
 left_cargo_balance_BC_2_1: - n2,3,1 + n2,3,2 + m2,3,1 = 25
 left_cargo_balance_CA_2_1: - n3,1,1 + n3,1,2 + m3,1,1 = 40
 left_cargo_balance_CB_2_1: - n3,2,1 + n3,2,2 + m3,2,1 = 400
 left_cargo_balance_AB_3_2: - n1,2,2 + n1,2,3 + m1,2,2 = 200
 left_cargo_balance_AC_3_2: - n1,3,2 + n1,3,3 + m1,3,2 = 50
 left_cargo_balance_BA_3_2: - n2,1,2 + n2,1,3 + m2,1,2 = 25
 left_cargo_balance_BC_3_2: - n2,3,2 + n2,3,3 + m2,3,2 = 25
 left_cargo_balance_CA_3_2: - n3,1,2 + n3,1,3 + m3,1,2 = 40
 left_cargo_balance_CB_3_2: - n3,2,2 + n3,2,3 + m3,2,2 = 200
 left_cargo_balance_AB_4_3: - n1,2,3 + n1,2,4 + m1,2,3 = 100
 left_cargo_balance_AC_4_3: - n1,3,3 + n1,3,4 + m1,3,3 = 50
 left_cargo_balance_BA_4_3: - n2,1,3 + n2,1,4 + m2,1,3 = 25
 left_cargo_balance_BC_4_3: - n2,3,3 + n2,3,4 + m2,3,3 = 25
 left_cargo_balance_CA_4_3: - n3,1,3 + n3,1,4 + m3,1,3 = 40
 left_cargo_balance_CB_4_3: - n3,2,3 + n3,2,4 + m3,2,3 = 300
 left_cargo_balance_AB_5_4: - n1,2,4 + n1,2,5 + m1,2,4 = 400
 left_cargo_balance_AC_5_4: - n1,3,4 + n1,3,5 + m1,3,4 = 50
 left_cargo_balance_BA_5_4: - n2,1,4 + n2,1,5 + m2,1,4 = 25
 left_cargo_balance_BC_5_4: - n2,3,4 + n2,3,5 + m2,3,4 = 25
 left_cargo_balance_CA_5_4: - n3,1,4 + n3,1,5 + m3,1,4 = 40
 left_cargo_balance_CB_5_4: - n3,2,4 + n3,2,5 + m3,2,4 = 200
Bounds
Generals
 x1,1 x1,2 x1,3 x1,4 x1,5 x2,1 x2,2 x2,3 x2,4 x2,5 x3,1 x3,2 x3,3 x3,4 x3,5
 y1,2,1 y1,2,2 y1,2,3 y1,2,4 y1,2,5 y1,3,1 y1,3,2 y1,3,3 y1,3,4 y1,3,5
 y2,1,1 y2,1,2 y2,1,3 y2,1,4 y2,1,5 y2,3,1 y2,3,2 y2,3,3 y2,3,4 y2,3,5
 y3,1,1 y3,1,2 y3,1,3 y3,1,4 y3,1,5 y3,2,1 y3,2,2 y3,2,3 y3,2,4 y3,2,5
 n1,2,1 n1,2,2 n1,2,3 n1,2,4 n1,2,5 n1,3,1 n1,3,2 n1,3,3 n1,3,4 n1,3,5
 n2,1,1 n2,1,2 n2,1,3 n2,1,4 n2,1,5 n2,3,1 n2,3,2 n2,3,3 n2,3,4 n2,3,5
 n3,1,1 n3,1,2 n3,1,3 n3,1,4 n3,1,5 n3,2,1 n3,2,2 n3,2,3 n3,2,4 n3,2,5
 m1,2,1 m1,2,2 m1,2,3 m1,2,4 m1,2,5 m1,3,1 m1,3,2 m1,3,3 m1,3,4 m1,3,5
 m2,1,1 m2,1,2 m2,1,3 m2,1,4 m2,1,5 m2,3,1 m2,3,2 m2,3,3 m2,3,4 m2,3,5
 m3,1,1 m3,1,2 m3,1,3 m3,1,4 m3,1,5 m3,2,1 m3,2,2 m3,2,3 m3,2,4 m3,2,5
End
