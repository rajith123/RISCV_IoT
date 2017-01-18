`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif

module RegFile(
  input   clock,
  input   reset,
  input  [3:0] io_rs_in_adr,
  input  [3:0] io_rs1_out_addr,
  input  [3:0] io_rs2_out_addr,
  output [31:0] io_rs1_out_data,
  output [31:0] io_rs2_out_data,
  input  [31:0] io_rs_in_data,
  input   io_wen
);
  wire [31:0] _T_35_0;
  wire [31:0] _T_35_1;
  wire [31:0] _T_35_2;
  wire [31:0] _T_35_3;
  wire [31:0] _T_35_4;
  wire [31:0] _T_35_5;
  wire [31:0] _T_35_6;
  wire [31:0] _T_35_7;
  wire [31:0] _T_35_8;
  wire [31:0] _T_35_9;
  wire [31:0] _T_35_10;
  wire [31:0] _T_35_11;
  wire [31:0] _T_35_12;
  wire [31:0] _T_35_13;
  wire [31:0] _T_35_14;
  wire [31:0] _T_35_15;
  reg [31:0] regFile_0;
  reg [31:0] _GEN_65;
  reg [31:0] regFile_1;
  reg [31:0] _GEN_66;
  reg [31:0] regFile_2;
  reg [31:0] _GEN_67;
  reg [31:0] regFile_3;
  reg [31:0] _GEN_68;
  reg [31:0] regFile_4;
  reg [31:0] _GEN_69;
  reg [31:0] regFile_5;
  reg [31:0] _GEN_70;
  reg [31:0] regFile_6;
  reg [31:0] _GEN_71;
  reg [31:0] regFile_7;
  reg [31:0] _GEN_72;
  reg [31:0] regFile_8;
  reg [31:0] _GEN_73;
  reg [31:0] regFile_9;
  reg [31:0] _GEN_74;
  reg [31:0] regFile_10;
  reg [31:0] _GEN_75;
  reg [31:0] regFile_11;
  reg [31:0] _GEN_76;
  reg [31:0] regFile_12;
  reg [31:0] _GEN_77;
  reg [31:0] regFile_13;
  reg [31:0] _GEN_78;
  reg [31:0] regFile_14;
  reg [31:0] _GEN_79;
  reg [31:0] regFile_15;
  reg [31:0] _GEN_80;
  wire  _T_73;
  wire [31:0] _GEN_0;
  wire [31:0] _GEN_3;
  wire [31:0] _GEN_4;
  wire [31:0] _GEN_5;
  wire [31:0] _GEN_6;
  wire [31:0] _GEN_7;
  wire [31:0] _GEN_8;
  wire [31:0] _GEN_9;
  wire [31:0] _GEN_10;
  wire [31:0] _GEN_11;
  wire [31:0] _GEN_12;
  wire [31:0] _GEN_13;
  wire [31:0] _GEN_14;
  wire [31:0] _GEN_15;
  wire [31:0] _GEN_16;
  wire [31:0] _GEN_17;
  wire [31:0] _T_76;
  wire  _T_78;
  wire [31:0] _GEN_1;
  wire [31:0] _GEN_18;
  wire [31:0] _GEN_19;
  wire [31:0] _GEN_20;
  wire [31:0] _GEN_21;
  wire [31:0] _GEN_22;
  wire [31:0] _GEN_23;
  wire [31:0] _GEN_24;
  wire [31:0] _GEN_25;
  wire [31:0] _GEN_26;
  wire [31:0] _GEN_27;
  wire [31:0] _GEN_28;
  wire [31:0] _GEN_29;
  wire [31:0] _GEN_30;
  wire [31:0] _GEN_31;
  wire [31:0] _GEN_32;
  wire [31:0] _T_81;
  wire [31:0] _GEN_2;
  wire [31:0] _GEN_33;
  wire [31:0] _GEN_34;
  wire [31:0] _GEN_35;
  wire [31:0] _GEN_36;
  wire [31:0] _GEN_37;
  wire [31:0] _GEN_38;
  wire [31:0] _GEN_39;
  wire [31:0] _GEN_40;
  wire [31:0] _GEN_41;
  wire [31:0] _GEN_42;
  wire [31:0] _GEN_43;
  wire [31:0] _GEN_44;
  wire [31:0] _GEN_45;
  wire [31:0] _GEN_46;
  wire [31:0] _GEN_47;
  wire [31:0] _GEN_48;
  wire [31:0] _GEN_49;
  wire [31:0] _GEN_50;
  wire [31:0] _GEN_51;
  wire [31:0] _GEN_52;
  wire [31:0] _GEN_53;
  wire [31:0] _GEN_54;
  wire [31:0] _GEN_55;
  wire [31:0] _GEN_56;
  wire [31:0] _GEN_57;
  wire [31:0] _GEN_58;
  wire [31:0] _GEN_59;
  wire [31:0] _GEN_60;
  wire [31:0] _GEN_61;
  wire [31:0] _GEN_62;
  wire [31:0] _GEN_63;
  wire [31:0] _GEN_64;
  assign io_rs1_out_data = _T_76;
  assign io_rs2_out_data = _T_81;
  assign _T_35_0 = 32'h0;
  assign _T_35_1 = 32'h0;
  assign _T_35_2 = 32'h0;
  assign _T_35_3 = 32'h0;
  assign _T_35_4 = 32'h0;
  assign _T_35_5 = 32'h0;
  assign _T_35_6 = 32'h0;
  assign _T_35_7 = 32'h0;
  assign _T_35_8 = 32'h0;
  assign _T_35_9 = 32'h0;
  assign _T_35_10 = 32'h0;
  assign _T_35_11 = 32'h0;
  assign _T_35_12 = 32'h0;
  assign _T_35_13 = 32'h0;
  assign _T_35_14 = 32'h0;
  assign _T_35_15 = 32'h0;
  assign _T_73 = io_rs1_out_addr == 4'h0;
  assign _GEN_0 = _GEN_17;
  assign _GEN_3 = 4'h1 == io_rs1_out_addr ? regFile_1 : regFile_0;
  assign _GEN_4 = 4'h2 == io_rs1_out_addr ? regFile_2 : _GEN_3;
  assign _GEN_5 = 4'h3 == io_rs1_out_addr ? regFile_3 : _GEN_4;
  assign _GEN_6 = 4'h4 == io_rs1_out_addr ? regFile_4 : _GEN_5;
  assign _GEN_7 = 4'h5 == io_rs1_out_addr ? regFile_5 : _GEN_6;
  assign _GEN_8 = 4'h6 == io_rs1_out_addr ? regFile_6 : _GEN_7;
  assign _GEN_9 = 4'h7 == io_rs1_out_addr ? regFile_7 : _GEN_8;
  assign _GEN_10 = 4'h8 == io_rs1_out_addr ? regFile_8 : _GEN_9;
  assign _GEN_11 = 4'h9 == io_rs1_out_addr ? regFile_9 : _GEN_10;
  assign _GEN_12 = 4'ha == io_rs1_out_addr ? regFile_10 : _GEN_11;
  assign _GEN_13 = 4'hb == io_rs1_out_addr ? regFile_11 : _GEN_12;
  assign _GEN_14 = 4'hc == io_rs1_out_addr ? regFile_12 : _GEN_13;
  assign _GEN_15 = 4'hd == io_rs1_out_addr ? regFile_13 : _GEN_14;
  assign _GEN_16 = 4'he == io_rs1_out_addr ? regFile_14 : _GEN_15;
  assign _GEN_17 = 4'hf == io_rs1_out_addr ? regFile_15 : _GEN_16;
  assign _T_76 = _T_73 ? 32'h0 : _GEN_0;
  assign _T_78 = io_rs2_out_addr == 4'h0;
  assign _GEN_1 = _GEN_32;
  assign _GEN_18 = 4'h1 == io_rs2_out_addr ? regFile_1 : regFile_0;
  assign _GEN_19 = 4'h2 == io_rs2_out_addr ? regFile_2 : _GEN_18;
  assign _GEN_20 = 4'h3 == io_rs2_out_addr ? regFile_3 : _GEN_19;
  assign _GEN_21 = 4'h4 == io_rs2_out_addr ? regFile_4 : _GEN_20;
  assign _GEN_22 = 4'h5 == io_rs2_out_addr ? regFile_5 : _GEN_21;
  assign _GEN_23 = 4'h6 == io_rs2_out_addr ? regFile_6 : _GEN_22;
  assign _GEN_24 = 4'h7 == io_rs2_out_addr ? regFile_7 : _GEN_23;
  assign _GEN_25 = 4'h8 == io_rs2_out_addr ? regFile_8 : _GEN_24;
  assign _GEN_26 = 4'h9 == io_rs2_out_addr ? regFile_9 : _GEN_25;
  assign _GEN_27 = 4'ha == io_rs2_out_addr ? regFile_10 : _GEN_26;
  assign _GEN_28 = 4'hb == io_rs2_out_addr ? regFile_11 : _GEN_27;
  assign _GEN_29 = 4'hc == io_rs2_out_addr ? regFile_12 : _GEN_28;
  assign _GEN_30 = 4'hd == io_rs2_out_addr ? regFile_13 : _GEN_29;
  assign _GEN_31 = 4'he == io_rs2_out_addr ? regFile_14 : _GEN_30;
  assign _GEN_32 = 4'hf == io_rs2_out_addr ? regFile_15 : _GEN_31;
  assign _T_81 = _T_78 ? 32'h0 : _GEN_1;
  assign _GEN_2 = io_rs_in_data;
  assign _GEN_33 = 4'h0 == io_rs_in_adr ? _GEN_2 : regFile_0;
  assign _GEN_34 = 4'h1 == io_rs_in_adr ? _GEN_2 : regFile_1;
  assign _GEN_35 = 4'h2 == io_rs_in_adr ? _GEN_2 : regFile_2;
  assign _GEN_36 = 4'h3 == io_rs_in_adr ? _GEN_2 : regFile_3;
  assign _GEN_37 = 4'h4 == io_rs_in_adr ? _GEN_2 : regFile_4;
  assign _GEN_38 = 4'h5 == io_rs_in_adr ? _GEN_2 : regFile_5;
  assign _GEN_39 = 4'h6 == io_rs_in_adr ? _GEN_2 : regFile_6;
  assign _GEN_40 = 4'h7 == io_rs_in_adr ? _GEN_2 : regFile_7;
  assign _GEN_41 = 4'h8 == io_rs_in_adr ? _GEN_2 : regFile_8;
  assign _GEN_42 = 4'h9 == io_rs_in_adr ? _GEN_2 : regFile_9;
  assign _GEN_43 = 4'ha == io_rs_in_adr ? _GEN_2 : regFile_10;
  assign _GEN_44 = 4'hb == io_rs_in_adr ? _GEN_2 : regFile_11;
  assign _GEN_45 = 4'hc == io_rs_in_adr ? _GEN_2 : regFile_12;
  assign _GEN_46 = 4'hd == io_rs_in_adr ? _GEN_2 : regFile_13;
  assign _GEN_47 = 4'he == io_rs_in_adr ? _GEN_2 : regFile_14;
  assign _GEN_48 = 4'hf == io_rs_in_adr ? _GEN_2 : regFile_15;
  assign _GEN_49 = io_wen ? _GEN_33 : regFile_0;
  assign _GEN_50 = io_wen ? _GEN_34 : regFile_1;
  assign _GEN_51 = io_wen ? _GEN_35 : regFile_2;
  assign _GEN_52 = io_wen ? _GEN_36 : regFile_3;
  assign _GEN_53 = io_wen ? _GEN_37 : regFile_4;
  assign _GEN_54 = io_wen ? _GEN_38 : regFile_5;
  assign _GEN_55 = io_wen ? _GEN_39 : regFile_6;
  assign _GEN_56 = io_wen ? _GEN_40 : regFile_7;
  assign _GEN_57 = io_wen ? _GEN_41 : regFile_8;
  assign _GEN_58 = io_wen ? _GEN_42 : regFile_9;
  assign _GEN_59 = io_wen ? _GEN_43 : regFile_10;
  assign _GEN_60 = io_wen ? _GEN_44 : regFile_11;
  assign _GEN_61 = io_wen ? _GEN_45 : regFile_12;
  assign _GEN_62 = io_wen ? _GEN_46 : regFile_13;
  assign _GEN_63 = io_wen ? _GEN_47 : regFile_14;
  assign _GEN_64 = io_wen ? _GEN_48 : regFile_15;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_65 = {1{$random}};
  regFile_0 = _GEN_65[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_66 = {1{$random}};
  regFile_1 = _GEN_66[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_67 = {1{$random}};
  regFile_2 = _GEN_67[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_68 = {1{$random}};
  regFile_3 = _GEN_68[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_69 = {1{$random}};
  regFile_4 = _GEN_69[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_70 = {1{$random}};
  regFile_5 = _GEN_70[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_71 = {1{$random}};
  regFile_6 = _GEN_71[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_72 = {1{$random}};
  regFile_7 = _GEN_72[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_73 = {1{$random}};
  regFile_8 = _GEN_73[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_74 = {1{$random}};
  regFile_9 = _GEN_74[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_75 = {1{$random}};
  regFile_10 = _GEN_75[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_76 = {1{$random}};
  regFile_11 = _GEN_76[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_77 = {1{$random}};
  regFile_12 = _GEN_77[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_78 = {1{$random}};
  regFile_13 = _GEN_78[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_79 = {1{$random}};
  regFile_14 = _GEN_79[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  _GEN_80 = {1{$random}};
  regFile_15 = _GEN_80[31:0];
  `endif
  end
`endif
  always @(posedge clock) begin
    if (reset) begin
      regFile_0 <= _T_35_0;
    end else begin
      if (io_wen) begin
        if (4'h0 == io_rs_in_adr) begin
          regFile_0 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_1 <= _T_35_1;
    end else begin
      if (io_wen) begin
        if (4'h1 == io_rs_in_adr) begin
          regFile_1 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_2 <= _T_35_2;
    end else begin
      if (io_wen) begin
        if (4'h2 == io_rs_in_adr) begin
          regFile_2 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_3 <= _T_35_3;
    end else begin
      if (io_wen) begin
        if (4'h3 == io_rs_in_adr) begin
          regFile_3 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_4 <= _T_35_4;
    end else begin
      if (io_wen) begin
        if (4'h4 == io_rs_in_adr) begin
          regFile_4 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_5 <= _T_35_5;
    end else begin
      if (io_wen) begin
        if (4'h5 == io_rs_in_adr) begin
          regFile_5 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_6 <= _T_35_6;
    end else begin
      if (io_wen) begin
        if (4'h6 == io_rs_in_adr) begin
          regFile_6 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_7 <= _T_35_7;
    end else begin
      if (io_wen) begin
        if (4'h7 == io_rs_in_adr) begin
          regFile_7 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_8 <= _T_35_8;
    end else begin
      if (io_wen) begin
        if (4'h8 == io_rs_in_adr) begin
          regFile_8 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_9 <= _T_35_9;
    end else begin
      if (io_wen) begin
        if (4'h9 == io_rs_in_adr) begin
          regFile_9 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_10 <= _T_35_10;
    end else begin
      if (io_wen) begin
        if (4'ha == io_rs_in_adr) begin
          regFile_10 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_11 <= _T_35_11;
    end else begin
      if (io_wen) begin
        if (4'hb == io_rs_in_adr) begin
          regFile_11 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_12 <= _T_35_12;
    end else begin
      if (io_wen) begin
        if (4'hc == io_rs_in_adr) begin
          regFile_12 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_13 <= _T_35_13;
    end else begin
      if (io_wen) begin
        if (4'hd == io_rs_in_adr) begin
          regFile_13 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_14 <= _T_35_14;
    end else begin
      if (io_wen) begin
        if (4'he == io_rs_in_adr) begin
          regFile_14 <= _GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_15 <= _T_35_15;
    end else begin
      if (io_wen) begin
        if (4'hf == io_rs_in_adr) begin
          regFile_15 <= _GEN_2;
        end
      end
    end
  end
endmodule
