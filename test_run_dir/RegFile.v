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
  wire [31:0] T_19_0;
  wire [31:0] T_19_1;
  wire [31:0] T_19_2;
  wire [31:0] T_19_3;
  wire [31:0] T_19_4;
  wire [31:0] T_19_5;
  wire [31:0] T_19_6;
  wire [31:0] T_19_7;
  wire [31:0] T_19_8;
  wire [31:0] T_19_9;
  wire [31:0] T_19_10;
  wire [31:0] T_19_11;
  wire [31:0] T_19_12;
  wire [31:0] T_19_13;
  wire [31:0] T_19_14;
  wire [31:0] T_19_15;
  reg [31:0] regFile_0;
  reg [31:0] GEN_65;
  reg [31:0] regFile_1;
  reg [31:0] GEN_66;
  reg [31:0] regFile_2;
  reg [31:0] GEN_67;
  reg [31:0] regFile_3;
  reg [31:0] GEN_68;
  reg [31:0] regFile_4;
  reg [31:0] GEN_69;
  reg [31:0] regFile_5;
  reg [31:0] GEN_70;
  reg [31:0] regFile_6;
  reg [31:0] GEN_71;
  reg [31:0] regFile_7;
  reg [31:0] GEN_72;
  reg [31:0] regFile_8;
  reg [31:0] GEN_73;
  reg [31:0] regFile_9;
  reg [31:0] GEN_74;
  reg [31:0] regFile_10;
  reg [31:0] GEN_75;
  reg [31:0] regFile_11;
  reg [31:0] GEN_76;
  reg [31:0] regFile_12;
  reg [31:0] GEN_77;
  reg [31:0] regFile_13;
  reg [31:0] GEN_78;
  reg [31:0] regFile_14;
  reg [31:0] GEN_79;
  reg [31:0] regFile_15;
  reg [31:0] GEN_80;
  wire [31:0] GEN_0;
  wire [31:0] GEN_3;
  wire [31:0] GEN_4;
  wire [31:0] GEN_5;
  wire [31:0] GEN_6;
  wire [31:0] GEN_7;
  wire [31:0] GEN_8;
  wire [31:0] GEN_9;
  wire [31:0] GEN_10;
  wire [31:0] GEN_11;
  wire [31:0] GEN_12;
  wire [31:0] GEN_13;
  wire [31:0] GEN_14;
  wire [31:0] GEN_15;
  wire [31:0] GEN_16;
  wire [31:0] GEN_17;
  wire [31:0] GEN_1;
  wire [31:0] GEN_18;
  wire [31:0] GEN_19;
  wire [31:0] GEN_20;
  wire [31:0] GEN_21;
  wire [31:0] GEN_22;
  wire [31:0] GEN_23;
  wire [31:0] GEN_24;
  wire [31:0] GEN_25;
  wire [31:0] GEN_26;
  wire [31:0] GEN_27;
  wire [31:0] GEN_28;
  wire [31:0] GEN_29;
  wire [31:0] GEN_30;
  wire [31:0] GEN_31;
  wire [31:0] GEN_32;
  wire [31:0] GEN_2;
  wire [31:0] GEN_33;
  wire [31:0] GEN_34;
  wire [31:0] GEN_35;
  wire [31:0] GEN_36;
  wire [31:0] GEN_37;
  wire [31:0] GEN_38;
  wire [31:0] GEN_39;
  wire [31:0] GEN_40;
  wire [31:0] GEN_41;
  wire [31:0] GEN_42;
  wire [31:0] GEN_43;
  wire [31:0] GEN_44;
  wire [31:0] GEN_45;
  wire [31:0] GEN_46;
  wire [31:0] GEN_47;
  wire [31:0] GEN_48;
  wire [31:0] GEN_49;
  wire [31:0] GEN_50;
  wire [31:0] GEN_51;
  wire [31:0] GEN_52;
  wire [31:0] GEN_53;
  wire [31:0] GEN_54;
  wire [31:0] GEN_55;
  wire [31:0] GEN_56;
  wire [31:0] GEN_57;
  wire [31:0] GEN_58;
  wire [31:0] GEN_59;
  wire [31:0] GEN_60;
  wire [31:0] GEN_61;
  wire [31:0] GEN_62;
  wire [31:0] GEN_63;
  wire [31:0] GEN_64;
  assign io_rs1_out_data = GEN_0;
  assign io_rs2_out_data = GEN_1;
  assign T_19_0 = 32'h0;
  assign T_19_1 = 32'h0;
  assign T_19_2 = 32'h0;
  assign T_19_3 = 32'h0;
  assign T_19_4 = 32'h0;
  assign T_19_5 = 32'h0;
  assign T_19_6 = 32'h0;
  assign T_19_7 = 32'h0;
  assign T_19_8 = 32'h0;
  assign T_19_9 = 32'h0;
  assign T_19_10 = 32'h0;
  assign T_19_11 = 32'h0;
  assign T_19_12 = 32'h0;
  assign T_19_13 = 32'h0;
  assign T_19_14 = 32'h0;
  assign T_19_15 = 32'h0;
  assign GEN_0 = GEN_17;
  assign GEN_3 = 4'h1 == io_rs1_out_addr ? regFile_1 : regFile_0;
  assign GEN_4 = 4'h2 == io_rs1_out_addr ? regFile_2 : GEN_3;
  assign GEN_5 = 4'h3 == io_rs1_out_addr ? regFile_3 : GEN_4;
  assign GEN_6 = 4'h4 == io_rs1_out_addr ? regFile_4 : GEN_5;
  assign GEN_7 = 4'h5 == io_rs1_out_addr ? regFile_5 : GEN_6;
  assign GEN_8 = 4'h6 == io_rs1_out_addr ? regFile_6 : GEN_7;
  assign GEN_9 = 4'h7 == io_rs1_out_addr ? regFile_7 : GEN_8;
  assign GEN_10 = 4'h8 == io_rs1_out_addr ? regFile_8 : GEN_9;
  assign GEN_11 = 4'h9 == io_rs1_out_addr ? regFile_9 : GEN_10;
  assign GEN_12 = 4'ha == io_rs1_out_addr ? regFile_10 : GEN_11;
  assign GEN_13 = 4'hb == io_rs1_out_addr ? regFile_11 : GEN_12;
  assign GEN_14 = 4'hc == io_rs1_out_addr ? regFile_12 : GEN_13;
  assign GEN_15 = 4'hd == io_rs1_out_addr ? regFile_13 : GEN_14;
  assign GEN_16 = 4'he == io_rs1_out_addr ? regFile_14 : GEN_15;
  assign GEN_17 = 4'hf == io_rs1_out_addr ? regFile_15 : GEN_16;
  assign GEN_1 = GEN_32;
  assign GEN_18 = 4'h1 == io_rs2_out_addr ? regFile_1 : regFile_0;
  assign GEN_19 = 4'h2 == io_rs2_out_addr ? regFile_2 : GEN_18;
  assign GEN_20 = 4'h3 == io_rs2_out_addr ? regFile_3 : GEN_19;
  assign GEN_21 = 4'h4 == io_rs2_out_addr ? regFile_4 : GEN_20;
  assign GEN_22 = 4'h5 == io_rs2_out_addr ? regFile_5 : GEN_21;
  assign GEN_23 = 4'h6 == io_rs2_out_addr ? regFile_6 : GEN_22;
  assign GEN_24 = 4'h7 == io_rs2_out_addr ? regFile_7 : GEN_23;
  assign GEN_25 = 4'h8 == io_rs2_out_addr ? regFile_8 : GEN_24;
  assign GEN_26 = 4'h9 == io_rs2_out_addr ? regFile_9 : GEN_25;
  assign GEN_27 = 4'ha == io_rs2_out_addr ? regFile_10 : GEN_26;
  assign GEN_28 = 4'hb == io_rs2_out_addr ? regFile_11 : GEN_27;
  assign GEN_29 = 4'hc == io_rs2_out_addr ? regFile_12 : GEN_28;
  assign GEN_30 = 4'hd == io_rs2_out_addr ? regFile_13 : GEN_29;
  assign GEN_31 = 4'he == io_rs2_out_addr ? regFile_14 : GEN_30;
  assign GEN_32 = 4'hf == io_rs2_out_addr ? regFile_15 : GEN_31;
  assign GEN_2 = io_rs_in_data;
  assign GEN_33 = 4'h0 == io_rs_in_adr ? GEN_2 : regFile_0;
  assign GEN_34 = 4'h1 == io_rs_in_adr ? GEN_2 : regFile_1;
  assign GEN_35 = 4'h2 == io_rs_in_adr ? GEN_2 : regFile_2;
  assign GEN_36 = 4'h3 == io_rs_in_adr ? GEN_2 : regFile_3;
  assign GEN_37 = 4'h4 == io_rs_in_adr ? GEN_2 : regFile_4;
  assign GEN_38 = 4'h5 == io_rs_in_adr ? GEN_2 : regFile_5;
  assign GEN_39 = 4'h6 == io_rs_in_adr ? GEN_2 : regFile_6;
  assign GEN_40 = 4'h7 == io_rs_in_adr ? GEN_2 : regFile_7;
  assign GEN_41 = 4'h8 == io_rs_in_adr ? GEN_2 : regFile_8;
  assign GEN_42 = 4'h9 == io_rs_in_adr ? GEN_2 : regFile_9;
  assign GEN_43 = 4'ha == io_rs_in_adr ? GEN_2 : regFile_10;
  assign GEN_44 = 4'hb == io_rs_in_adr ? GEN_2 : regFile_11;
  assign GEN_45 = 4'hc == io_rs_in_adr ? GEN_2 : regFile_12;
  assign GEN_46 = 4'hd == io_rs_in_adr ? GEN_2 : regFile_13;
  assign GEN_47 = 4'he == io_rs_in_adr ? GEN_2 : regFile_14;
  assign GEN_48 = 4'hf == io_rs_in_adr ? GEN_2 : regFile_15;
  assign GEN_49 = io_wen ? GEN_33 : regFile_0;
  assign GEN_50 = io_wen ? GEN_34 : regFile_1;
  assign GEN_51 = io_wen ? GEN_35 : regFile_2;
  assign GEN_52 = io_wen ? GEN_36 : regFile_3;
  assign GEN_53 = io_wen ? GEN_37 : regFile_4;
  assign GEN_54 = io_wen ? GEN_38 : regFile_5;
  assign GEN_55 = io_wen ? GEN_39 : regFile_6;
  assign GEN_56 = io_wen ? GEN_40 : regFile_7;
  assign GEN_57 = io_wen ? GEN_41 : regFile_8;
  assign GEN_58 = io_wen ? GEN_42 : regFile_9;
  assign GEN_59 = io_wen ? GEN_43 : regFile_10;
  assign GEN_60 = io_wen ? GEN_44 : regFile_11;
  assign GEN_61 = io_wen ? GEN_45 : regFile_12;
  assign GEN_62 = io_wen ? GEN_46 : regFile_13;
  assign GEN_63 = io_wen ? GEN_47 : regFile_14;
  assign GEN_64 = io_wen ? GEN_48 : regFile_15;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_65 = {1{$random}};
  regFile_0 = GEN_65[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_66 = {1{$random}};
  regFile_1 = GEN_66[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_67 = {1{$random}};
  regFile_2 = GEN_67[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_68 = {1{$random}};
  regFile_3 = GEN_68[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_69 = {1{$random}};
  regFile_4 = GEN_69[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_70 = {1{$random}};
  regFile_5 = GEN_70[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_71 = {1{$random}};
  regFile_6 = GEN_71[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_72 = {1{$random}};
  regFile_7 = GEN_72[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_73 = {1{$random}};
  regFile_8 = GEN_73[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_74 = {1{$random}};
  regFile_9 = GEN_74[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_75 = {1{$random}};
  regFile_10 = GEN_75[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_76 = {1{$random}};
  regFile_11 = GEN_76[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_77 = {1{$random}};
  regFile_12 = GEN_77[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_78 = {1{$random}};
  regFile_13 = GEN_78[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_79 = {1{$random}};
  regFile_14 = GEN_79[31:0];
  `endif
  `ifdef RANDOMIZE_REG_INIT
  GEN_80 = {1{$random}};
  regFile_15 = GEN_80[31:0];
  `endif
  end
`endif
  always @(posedge clock) begin
    if (reset) begin
      regFile_0 <= T_19_0;
    end else begin
      if (io_wen) begin
        if (4'h0 == io_rs_in_adr) begin
          regFile_0 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_1 <= T_19_1;
    end else begin
      if (io_wen) begin
        if (4'h1 == io_rs_in_adr) begin
          regFile_1 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_2 <= T_19_2;
    end else begin
      if (io_wen) begin
        if (4'h2 == io_rs_in_adr) begin
          regFile_2 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_3 <= T_19_3;
    end else begin
      if (io_wen) begin
        if (4'h3 == io_rs_in_adr) begin
          regFile_3 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_4 <= T_19_4;
    end else begin
      if (io_wen) begin
        if (4'h4 == io_rs_in_adr) begin
          regFile_4 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_5 <= T_19_5;
    end else begin
      if (io_wen) begin
        if (4'h5 == io_rs_in_adr) begin
          regFile_5 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_6 <= T_19_6;
    end else begin
      if (io_wen) begin
        if (4'h6 == io_rs_in_adr) begin
          regFile_6 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_7 <= T_19_7;
    end else begin
      if (io_wen) begin
        if (4'h7 == io_rs_in_adr) begin
          regFile_7 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_8 <= T_19_8;
    end else begin
      if (io_wen) begin
        if (4'h8 == io_rs_in_adr) begin
          regFile_8 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_9 <= T_19_9;
    end else begin
      if (io_wen) begin
        if (4'h9 == io_rs_in_adr) begin
          regFile_9 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_10 <= T_19_10;
    end else begin
      if (io_wen) begin
        if (4'ha == io_rs_in_adr) begin
          regFile_10 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_11 <= T_19_11;
    end else begin
      if (io_wen) begin
        if (4'hb == io_rs_in_adr) begin
          regFile_11 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_12 <= T_19_12;
    end else begin
      if (io_wen) begin
        if (4'hc == io_rs_in_adr) begin
          regFile_12 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_13 <= T_19_13;
    end else begin
      if (io_wen) begin
        if (4'hd == io_rs_in_adr) begin
          regFile_13 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_14 <= T_19_14;
    end else begin
      if (io_wen) begin
        if (4'he == io_rs_in_adr) begin
          regFile_14 <= GEN_2;
        end
      end
    end
    if (reset) begin
      regFile_15 <= T_19_15;
    end else begin
      if (io_wen) begin
        if (4'hf == io_rs_in_adr) begin
          regFile_15 <= GEN_2;
        end
      end
    end
  end
endmodule
