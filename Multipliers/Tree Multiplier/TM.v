module TM (
  input [31:0] a,
  input [31:0] b,
  output wire [63:0] result
);
  wire [63:0] signExtendedA;
  wire [63:0] signExtendedB;
  assign signExtendedA = {{32{a[31]}}, a};
  assign signExtendedB = {{32{b[31]}}, b};
  wire [63:0] shiftedA [63:0];

  wire [63:0] adderResult_level1 [20:0];
  wire [63:0] carry_level1 [20:0];

  genvar i;
  generate
	  for (i = 0; i < 64; i = i + 1) begin: signExtend
		 assign shiftedA[i] = signExtendedB[i] == 1'b1 ? signExtendedA << i : 64'b0;
	  end
	endgenerate

  generate
    for (i = 0; i < 21; i = i + 1) begin : level1
        BWAdder adder(shiftedA[i * 3], shiftedA[(i * 3) + 1], shiftedA[(i * 3) + 2], adderResult_level1[i], carry_level1[i]);
    end
  endgenerate
  
  //! shiftedA[63] is left
  wire [63:0] adderResult_level2 [13:0];
  wire [63:0] carry_level2 [13:0];
  generate
    for (i = 0; i < 7; i = i + 1) begin : level2_a
        BWAdder adder(adderResult_level1[i * 3], adderResult_level1[(i * 3) + 1], adderResult_level1[(i * 3) + 2], adderResult_level2[i], carry_level2[i]);
    end
  endgenerate

  generate
    for (i = 0; i < 7; i = i + 1) begin : level2_b
        BWAdder adder(carry_level1[i * 3], carry_level1[(i * 3) + 1], carry_level1[(i * 3) + 2], adderResult_level2[i + 7], carry_level2[i + 7]);
    end
  endgenerate

  wire [63:0] adderResult_level3 [8:0];
  wire [63:0] carry_level3 [8:0];
  generate
    for (i = 0; i < 4; i = i + 1) begin : level3_a
        BWAdder adder(adderResult_level2[i * 3], adderResult_level2[(i * 3) + 1], adderResult_level2[(i * 3) + 2], adderResult_level3[i], carry_level3[i]);
    end
  endgenerate

  generate
    for (i = 0; i < 4; i = i + 1) begin : level3_b
        BWAdder adder(carry_level2[i * 3], carry_level2[(i * 3) + 1], carry_level2[(i * 3) + 2], adderResult_level3[i + 4], carry_level3[i + 4]);
    end
  endgenerate

  BWAdder adder(adderResult_level2[12], adderResult_level2[13], carry_level2[12], adderResult_level3[8], carry_level3[8]);

  //! carry_level2 [13] is left

  wire [63:0] adderResult_level4 [5:0];
  wire [63:0] carry_level4 [5:0];
  generate
    for (i = 0; i < 3; i = i + 1) begin : level4_a
        BWAdder adder(adderResult_level3[i * 3], adderResult_level3[(i * 3) + 1], adderResult_level3[(i * 3) + 2], adderResult_level4[i], carry_level4[i]);
    end
  endgenerate

  generate
    for (i = 0; i < 3; i = i + 1) begin : level4_b
        BWAdder adder(carry_level3[i * 3], carry_level3[(i * 3) + 1], carry_level3[(i * 3) + 2], adderResult_level4[i + 3], carry_level4[i + 3]);
    end
  endgenerate

  wire [63:0] adderResult_level5 [3:0];
  wire [63:0] carry_level5 [3:0];
  generate
    for (i = 0; i < 2; i = i + 1) begin : level5_a
        BWAdder adder(adderResult_level4[i * 3], adderResult_level4[(i * 3) + 1], adderResult_level4[(i * 3) + 2], adderResult_level5[i], carry_level5[i]);
    end
  endgenerate

  generate
    for (i = 0; i < 2; i = i + 1) begin : level5_b
        BWAdder adder(carry_level4[i * 3], carry_level4[(i * 3) + 1], carry_level4[(i * 3) + 2], adderResult_level5[i + 2], carry_level5[i + 2]);
    end
  endgenerate

  // level 6
  wire [63:0] adderResult_level6 [2:0];
  wire [63:0] carry_level6 [2:0];

  BWAdder adder_0(adderResult_level5[0], adderResult_level5[1], adderResult_level5[2], adderResult_level6[0], carry_level6[0]);
  BWAdder adder_1(adderResult_level5[3], carry_level5[0], carry_level5[1], adderResult_level6[1], carry_level6[1]);
  BWAdder adder_2(carry_level5[2], carry_level5[3], carry_level2[13], adderResult_level6[2], carry_level6[2]);
  //! HERE taken carry_level2[13]

  // level 7
  wire [63:0] adderResult_level7 [1:0];
  wire [63:0] carry_level7 [1:0];
  BWAdder adder_3(adderResult_level6[0], adderResult_level6[1], adderResult_level6[2], adderResult_level7[0], carry_level7[0]);
  BWAdder adder_4(carry_level6[0], carry_level6[1], carry_level6[2], adderResult_level7[1], carry_level7[1]);

  // level 8
  wire [63:0] adderResult_level8;
  wire [63:0] carry_level8;
  BWAdder adder_5(adderResult_level7[0], adderResult_level7[1], carry_level7[0], adderResult_level8, carry_level8);
  //! HERE left carry_level7[1]

  // level 9
  wire [63:0] adderResult_level9;
  wire [63:0] carry_level9;
  BWAdder adder_6(adderResult_level8, carry_level7[1], carry_level8, adderResult_level9, carry_level9);

  // level 10
  wire [63:0] adderResult_level10;
  wire [63:0] carry_level10;
  BWAdder adder_7(adderResult_level9, shiftedA[63], carry_level9, adderResult_level10, carry_level10);

  assign result = adderResult_level10 + carry_level10;

endmodule