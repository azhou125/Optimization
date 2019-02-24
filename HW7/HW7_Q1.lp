\ Model HW7_Q1
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  x12 + 2 x13 + x23 + 5 x24 + 2 x25 + 2 x34 + x35 + 4 x36 + 3 x45 + 6 x46
   + 8 x47 + 3 x56 + 7 x57 + 5 x67 + 2 x68 + 6 x78
Subject To
 Node_1: x12 + x13 = 1
 Node_8: - x68 - x78 = -1
 Node_2: - x12 + x23 + x24 + x25 = 0
 Node_3: - x13 - x23 + x34 + x35 + x36 = 0
 Node_4: - x24 - x34 + x45 + x46 + x47 = 0
 Node_5: - x25 - x35 - x45 + x56 + x57 = 0
 Node_6: - x36 - x46 - x56 + x67 + x68 = 0
 Node_7: - x47 - x57 - x67 + x78 = 0
Bounds
End
