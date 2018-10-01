
// Generated by Cadence Encounter(R) RTL Compiler RC14.13 - v14.10-s027_1

// Verification Directory fv/P2Blender 

module P2Blender(clk, reset, Mode, y);
  input clk, reset;
  input [4:0] Mode;
  output [1:0] y;
  wire clk, reset;
  wire [4:0] Mode;
  wire [1:0] y;
  wire [4:0] state;
  wire n_2, n_3, n_4, n_5, n_6, n_7, n_8, n_9;
  wire n_10, n_11, n_12, n_13, n_14, n_17, n_18, n_19;
  wire n_20, n_21, n_22, n_23, n_24, n_25, n_26, n_27;
  wire n_28, n_29, n_30, n_32, n_33, n_34, n_35, n_36;
  wire n_39, n_40, n_41, n_42, n_43, n_44, n_45, n_46;
  wire n_47, n_48, n_49, n_50, n_51, n_52, n_53, n_54;
  wire n_55, n_56, n_57, n_58, n_59, n_60, n_61, n_62;
  wire n_63, n_64, n_65, n_66, n_67, n_68, n_69, n_70;
  wire n_71, n_72, n_73, n_74, n_75, n_76, n_77, n_78;
  wire n_79, n_80, n_81, n_82, n_83, n_84, n_85, n_86;
  wire n_88, n_89, n_90, n_91, n_92, n_93, n_94, n_95;
  wire n_96, n_97, n_98, n_99, n_100, n_101, n_102, n_103;
  wire n_104, n_105, n_106, n_107, n_108, n_109, n_110, n_111;
  wire n_112, n_113, n_114, n_115, n_116, n_117, n_118, n_119;
  wire n_120, n_121, n_122, n_123, n_124, n_125, n_126, n_127;
  wire n_128, n_129, n_130, n_131, n_132, n_133, n_134, n_135;
  wire n_136, n_137, n_138, n_139, n_140, n_141, n_142, n_143;
  wire n_144, n_145, n_146, n_147, n_148, n_149, n_150, n_151;
  wire n_152, n_153, n_154, n_155, n_156, n_157, n_158, n_159;
  wire n_160, n_161, n_162, n_163, n_164, n_165, n_166, n_167;
  wire n_168, n_169, n_170, n_171, n_172, n_173, n_174, n_175;
  wire n_176, n_177, n_178, n_179, n_187, n_188, n_189;
  DFFHQX1 \state_reg[2] (.CK (clk), .D (n_179), .Q (state[2]));
  OR4X1 g4506(.A (n_81), .B (n_176), .C (n_175), .D (n_178), .Y
       (n_179));
  NAND4XL g4508(.A (n_112), .B (n_172), .C (n_139), .D (n_174), .Y
       (n_178));
  DFFHQX1 \state_reg[4] (.CK (clk), .D (n_177), .Q (state[4]));
  OR4X1 g4509(.A (n_176), .B (n_138), .C (n_175), .D (n_170), .Y
       (n_177));
  DFFHQX1 \state_reg[3] (.CK (clk), .D (n_173), .Q (state[3]));
  AOI221X1 g4512(.A0 (n_145), .A1 (n_66), .B0 (n_165), .B1 (n_125), .C0
       (n_171), .Y (n_174));
  OAI221X1 g4511(.A0 (n_129), .A1 (n_172), .B0 (n_123), .B1 (n_119),
       .C0 (n_168), .Y (n_173));
  OAI211X1 g4513(.A0 (n_169), .A1 (n_44), .B0 (n_147), .C0 (n_166), .Y
       (n_171));
  OAI221X1 g4514(.A0 (n_163), .A1 (n_169), .B0 (n_143), .B1 (n_124),
       .C0 (n_167), .Y (n_170));
  AOI221X1 g4515(.A0 (n_144), .A1 (n_146), .B0 (n_149), .B1 (n_150),
       .C0 (n_164), .Y (n_168));
  NOR4X1 g4518(.A (n_89), .B (n_131), .C (n_134), .D (n_162), .Y
       (n_167));
  DFFHQX1 \state_reg[1] (.CK (clk), .D (n_161), .Q (state[1]));
  AOI221X1 g4519(.A0 (n_54), .A1 (n_165), .B0 (n_153), .B1 (n_157), .C0
       (n_159), .Y (n_166));
  OAI211X1 g4517(.A0 (n_163), .A1 (n_93), .B0 (n_158), .C0 (n_160), .Y
       (n_164));
  OAI222X1 g4522(.A0 (n_122), .A1 (n_154), .B0 (n_102), .B1 (n_140),
       .C0 (n_57), .C1 (n_84), .Y (n_162));
  OR4X1 g4520(.A (n_79), .B (n_99), .C (n_133), .D (n_155), .Y (n_161));
  NOR4X1 g4521(.A (n_91), .B (n_176), .C (n_113), .D (n_142), .Y
       (n_160));
  OAI21X1 g4523(.A0 (n_158), .A1 (n_156), .B0 (n_151), .Y (n_159));
  NAND3XL g4524(.A (n_156), .B (n_121), .C (n_152), .Y (n_157));
  OAI221X1 g4525(.A0 (n_132), .A1 (n_100), .B0 (n_114), .B1 (n_48), .C0
       (n_148), .Y (n_155));
  NAND2XL g4526(.A (n_153), .B (n_152), .Y (n_154));
  OAI211X1 g4527(.A0 (n_115), .A1 (n_150), .B0 (n_149), .C0 (n_127), .Y
       (n_151));
  AOI32X1 g4529(.A0 (n_80), .A1 (n_56), .A2 (n_137), .B0 (n_58), .B1
       (n_116), .Y (n_148));
  OAI211X1 g4528(.A0 (n_141), .A1 (n_146), .B0 (n_145), .C0 (n_144), .Y
       (n_147));
  OAI211X1 g4536(.A0 (Mode[0]), .A1 (n_23), .B0 (n_143), .C0 (n_128),
       .Y (n_152));
  OAI221X1 g4537(.A0 (n_55), .A1 (n_120), .B0 (n_141), .B1 (n_67), .C0
       (n_136), .Y (n_142));
  NOR2X1 g4532(.A (n_135), .B (n_126), .Y (n_140));
  AOI21X1 g4535(.A0 (n_138), .A1 (n_137), .B0 (n_95), .Y (n_139));
  AOI22X1 g4542(.A0 (n_135), .A1 (n_105), .B0 (n_50), .B1 (n_83), .Y
       (n_136));
  AOI21X1 g4531(.A0 (n_74), .A1 (n_110), .B0 (n_86), .Y (n_134));
  AOI21X1 g4533(.A0 (n_130), .A1 (n_108), .B0 (n_132), .Y (n_133));
  AOI21X1 g4534(.A0 (n_94), .A1 (n_130), .B0 (n_129), .Y (n_131));
  INVXL g4545(.A (n_137), .Y (n_128));
  NAND2XL g4552(.A (n_127), .B (n_104), .Y (n_150));
  AOI21X1 g4538(.A0 (n_64), .A1 (n_117), .B0 (n_72), .Y (n_126));
  OAI22X1 g4543(.A0 (n_107), .A1 (n_109), .B0 (n_103), .B1 (n_124), .Y
       (n_125));
  OAI31X1 g4544(.A0 (n_123), .A1 (n_122), .A2 (n_118), .B0 (n_92), .Y
       (n_175));
  NAND2XL g4546(.A (n_121), .B (n_120), .Y (n_137));
  OR2XL g4549(.A (n_120), .B (n_118), .Y (n_119));
  NAND2XL g4551(.A (n_52), .B (n_117), .Y (n_146));
  DFFHQX1 \state_reg[0] (.CK (clk), .D (n_101), .Q (state[0]));
  OAI31X1 g4540(.A0 (n_169), .A1 (n_115), .A2 (n_111), .B0 (n_114), .Y
       (n_116));
  OAI222X1 g4541(.A0 (n_129), .A1 (n_112), .B0 (n_75), .B1 (n_97), .C0
       (n_46), .C1 (n_156), .Y (n_113));
  OAI21X1 g4548(.A0 (n_53), .A1 (n_111), .B0 (n_106), .Y (n_172));
  OR2XL g4550(.A (n_124), .B (n_109), .Y (n_110));
  AO21XL g4553(.A0 (n_124), .A1 (n_107), .B0 (n_109), .Y (n_108));
  OAI22X1 g4554(.A0 (n_28), .A1 (n_106), .B0 (n_69), .B1 (n_111), .Y
       (n_130));
  INVXL g4560(.A (n_117), .Y (n_105));
  AOI211XL g4566(.A0 (n_17), .A1 (n_103), .B0 (n_39), .C0 (n_111), .Y
       (n_104));
  NOR2X1 g4557(.A (n_49), .B (n_122), .Y (n_138));
  NOR2XL g4561(.A (n_102), .B (n_111), .Y (n_117));
  NOR2XL g4562(.A (n_111), .B (n_122), .Y (n_120));
  OAI211X1 g4539(.A0 (n_77), .A1 (n_3), .B0 (n_187), .C0 (n_98), .Y
       (n_101));
  AOI221X1 g4567(.A0 (n_70), .A1 (n_62), .B0 (n_145), .B1 (n_73), .C0
       (n_63), .Y (n_100));
  NAND2BX1 g4547(.AN (n_99), .B (n_98), .Y (n_176));
  NOR2XL g4555(.A (n_65), .B (n_96), .Y (n_121));
  NOR2BX1 g4556(.AN (n_97), .B (n_96), .Y (n_109));
  NOR2X1 g4563(.A (n_94), .B (n_88), .Y (n_95));
  NOR2XL g4558(.A (n_169), .B (n_90), .Y (n_93));
  NAND2X1 g4559(.A (n_91), .B (n_90), .Y (n_92));
  NOR2X1 g4564(.A (n_82), .B (n_156), .Y (n_89));
  NAND2XL g4569(.A (n_42), .B (n_165), .Y (n_122));
  INVXL g4573(.A (n_88), .Y (n_111));
  OAI31X1 g4565(.A0 (n_123), .A1 (n_76), .A2 (n_71), .B0 (n_187), .Y
       (n_99));
  NOR2XL g4572(.A (n_85), .B (n_86), .Y (n_97));
  NOR2XL g4574(.A (n_129), .B (n_85), .Y (n_88));
  NOR2XL g4575(.A (n_85), .B (n_115), .Y (n_84));
  OAI21XL g4576(.A0 (Mode[1]), .A1 (n_33), .B0 (n_83), .Y (n_96));
  NOR2BX1 g4568(.AN (n_158), .B (n_81), .Y (n_82));
  NAND2XL g4570(.A (n_80), .B (n_78), .Y (n_90));
  NOR2X1 g4571(.A (n_51), .B (n_78), .Y (n_79));
  AOI21X1 g4579(.A0 (n_11), .A1 (n_76), .B0 (n_36), .Y (n_77));
  OAI2BB1X1 g4581(.A0N (n_68), .A1N (n_41), .B0 (n_61), .Y (n_106));
  AND2XL g4583(.A (n_124), .B (n_74), .Y (n_75));
  INVXL g4584(.A (n_85), .Y (n_156));
  NOR2X1 g4586(.A (n_141), .B (n_72), .Y (n_73));
  INVXL g4590(.A (n_86), .Y (n_165));
  NAND3BXL g4577(.AN (n_71), .B (n_70), .C (n_132), .Y (n_98));
  NAND3BXL g4578(.AN (n_69), .B (n_68), .C (n_40), .Y (n_112));
  NAND2XL g4585(.A (n_114), .B (n_80), .Y (n_85));
  OAI31X1 g4591(.A0 (Mode[4]), .A1 (Mode[1]), .A2 (n_18), .B0 (n_127),
       .Y (n_86));
  INVXL g4592(.A (n_115), .Y (n_83));
  NOR2BX1 g4612(.AN (n_67), .B (n_144), .Y (n_72));
  NAND2BX1 g4614(.AN (n_135), .B (n_67), .Y (n_66));
  NOR2X1 g4587(.A (n_43), .B (n_47), .Y (n_158));
  AOI31X1 g4588(.A0 (Mode[1]), .A1 (Mode[0]), .A2 (n_103), .B0 (n_45),
       .Y (n_78));
  OAI2BB1X1 g4593(.A0N (n_24), .A1N (n_65), .B0 (n_64), .Y (n_115));
  AOI2BB1XL g4594(.A0N (n_60), .A1N (n_62), .B0 (n_123), .Y (n_63));
  AOI22X1 g4595(.A0 (n_70), .A1 (n_60), .B0 (n_59), .B1 (n_62), .Y
       (n_61));
  INVX1 g4596(.A (n_57), .Y (n_58));
  INVX1 g4598(.A (n_55), .Y (n_56));
  NOR2BX1 g4609(.AN (n_107), .B (n_54), .Y (n_74));
  NOR2XL g4610(.A (Mode[0]), .B (n_52), .Y (n_53));
  NOR2BX1 g4613(.AN (n_163), .B (n_91), .Y (n_51));
  INVXL g4615(.A (n_169), .Y (n_127));
  NOR2X1 g4597(.A (n_149), .B (n_50), .Y (n_57));
  NOR2BX1 g4599(.AN (n_49), .B (n_153), .Y (n_55));
  NOR2X1 g4600(.A (n_47), .B (n_135), .Y (n_48));
  INVXL g4601(.A (n_132), .Y (n_80));
  NOR2BX1 g4604(.AN (n_94), .B (n_81), .Y (n_46));
  INVXL g4605(.A (n_45), .Y (n_76));
  NOR2BX1 g4607(.AN (n_163), .B (n_50), .Y (n_44));
  NOR2XL g4608(.A (Mode[0]), .B (n_64), .Y (n_69));
  NOR3X1 g4617(.A (reset), .B (n_34), .C (n_12), .Y (n_43));
  OAI21XL g4616(.A0 (Mode[1]), .A1 (n_42), .B0 (n_145), .Y (n_169));
  NAND2X1 g4625(.A (n_59), .B (n_41), .Y (n_124));
  NAND2X1 g4630(.A (n_59), .B (n_40), .Y (n_107));
  INVXL g4634(.A (n_39), .Y (n_52));
  AND2X1 g4636(.A (n_41), .B (n_70), .Y (n_144));
  NAND2X1 g4638(.A (n_70), .B (n_40), .Y (n_67));
  AOI22XL g4589(.A0 (state[4]), .A1 (n_20), .B0 (n_8), .B1 (n_7), .Y
       (y[0]));
  AND2XL g4582(.A (n_9), .B (n_25), .Y (y[1]));
  NOR2XL g4602(.A (Mode[1]), .B (n_35), .Y (n_132));
  NOR2XL g4603(.A (reset), .B (n_35), .Y (n_36));
  NOR2XL g4606(.A (Mode[0]), .B (n_114), .Y (n_45));
  NOR2XL g4611(.A (Mode[0]), .B (n_145), .Y (n_129));
  NAND2X1 g4640(.A (n_34), .B (n_118), .Y (n_62));
  NOR2XL g4620(.A (Mode[0]), .B (n_33), .Y (n_65));
  NOR2X1 g4622(.A (n_30), .B (n_32), .Y (n_47));
  NAND2X1 g4623(.A (n_29), .B (n_32), .Y (n_60));
  NOR2XL g4629(.A (n_123), .B (n_26), .Y (n_50));
  NOR2X1 g4631(.A (n_30), .B (n_29), .Y (n_135));
  OR2XL g4632(.A (n_27), .B (n_29), .Y (n_49));
  OR2X1 g4633(.A (n_123), .B (n_29), .Y (n_94));
  NOR2XL g4637(.A (n_27), .B (n_26), .Y (n_28));
  NOR2X1 g4639(.A (n_27), .B (n_34), .Y (n_91));
  OR2X1 g4641(.A (n_27), .B (n_118), .Y (n_163));
  NOR2X1 g4642(.A (n_22), .B (n_118), .Y (n_54));
  NOR2XL g4635(.A (Mode[1]), .B (n_143), .Y (n_39));
  INVXL g4643(.A (n_141), .Y (n_64));
  OAI221X1 g4618(.A0 (state[0]), .A1 (n_2), .B0 (n_19), .B1 (state[2]),
       .C0 (n_10), .Y (n_25));
  NOR2XL g4621(.A (n_123), .B (n_32), .Y (n_81));
  NOR3XL g4644(.A (Mode[2]), .B (n_24), .C (n_23), .Y (n_141));
  NAND2XL g4628(.A (Mode[0]), .B (n_21), .Y (n_35));
  NOR2X1 g4619(.A (n_27), .B (n_32), .Y (n_153));
  INVX1 g4658(.A (n_30), .Y (n_59));
  NOR2BX1 g4624(.AN (n_41), .B (n_123), .Y (n_149));
  INVX1 g4662(.A (n_26), .Y (n_40));
  INVX1 g4660(.A (n_22), .Y (n_70));
  NAND2XL g4627(.A (Mode[1]), .B (n_21), .Y (n_114));
  NAND2X1 g4659(.A (n_188), .B (state[1]), .Y (n_30));
  INVXL g4645(.A (n_102), .Y (n_145));
  AOI33XL g4647(.A0 (n_19), .A1 (n_71), .A2 (n_14), .B0 (state[0]), .B1
       (state[3]), .B2 (state[2]), .Y (n_20));
  NAND2BXL g4649(.AN (n_18), .B (n_17), .Y (n_42));
  INVX1 g4653(.A (n_27), .Y (n_68));
  NAND2X1 g4666(.A (state[2]), .B (n_189), .Y (n_118));
  OR2X1 g4648(.A (n_6), .B (n_23), .Y (n_33));
  NAND2X1 g4664(.A (n_71), .B (n_189), .Y (n_29));
  INVXL g4656(.A (n_103), .Y (n_143));
  NAND2X1 g4661(.A (n_188), .B (n_14), .Y (n_22));
  NAND2X1 g4663(.A (state[2]), .B (n_13), .Y (n_26));
  NAND2X1 g4665(.A (n_71), .B (n_13), .Y (n_34));
  MXI2XL g4669(.A (state[1]), .B (n_14), .S0 (state[0]), .Y (n_12));
  NOR2XL g4650(.A (n_4), .B (n_5), .Y (n_21));
  NAND2X1 g4654(.A (n_11), .B (n_14), .Y (n_27));
  AOI22XL g4668(.A0 (n_19), .A1 (state[2]), .B0 (state[4]), .B1
       (state[1]), .Y (n_10));
  NAND2XL g4667(.A (n_8), .B (n_7), .Y (n_9));
  NOR4X1 g4646(.A (Mode[3]), .B (Mode[4]), .C (n_6), .D (n_24), .Y
       (n_102));
  NAND2X1 g4651(.A (state[2]), .B (n_8), .Y (n_32));
  NOR2XL g4657(.A (Mode[4]), .B (n_5), .Y (n_103));
  AND2X1 g4655(.A (n_8), .B (n_71), .Y (n_41));
  NAND2X1 g4652(.A (n_11), .B (state[1]), .Y (n_123));
  NOR2X1 g4681(.A (state[4]), .B (n_19), .Y (n_13));
  OR2X1 g4679(.A (Mode[3]), .B (n_4), .Y (n_23));
  NAND2XL g4673(.A (Mode[3]), .B (n_6), .Y (n_18));
  INVX1 g4674(.A (n_2), .Y (n_3));
  NOR2X1 g4672(.A (reset), .B (state[0]), .Y (n_11));
  NOR2XL g4678(.A (Mode[0]), .B (Mode[4]), .Y (n_17));
  NOR2X1 g4670(.A (state[4]), .B (state[3]), .Y (n_8));
  NAND2XL g4671(.A (state[2]), .B (state[1]), .Y (n_7));
  NAND2XL g4677(.A (Mode[2]), .B (Mode[3]), .Y (n_5));
  NAND2X1 g4675(.A (state[4]), .B (state[3]), .Y (n_2));
  INVXL g4682(.A (Mode[4]), .Y (n_4));
  INVXL g4683(.A (Mode[2]), .Y (n_6));
  INVX1 g4687(.A (state[1]), .Y (n_14));
  INVX1 g4688(.A (state[2]), .Y (n_71));
  INVXL g4689(.A (Mode[1]), .Y (n_24));
  INVX1 g4684(.A (state[3]), .Y (n_19));
  NAND4BX1 g2(.AN (n_114), .B (Mode[0]), .C (n_59), .D (state[2]), .Y
       (n_187));
  NOR2BX1 g4695(.AN (state[0]), .B (reset), .Y (n_188));
  NOR2BX1 g4696(.AN (state[4]), .B (state[3]), .Y (n_189));
endmodule
