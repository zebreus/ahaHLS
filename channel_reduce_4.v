module channel_reduce_4(input [0:0] clk, input [0:0] rst, output [31:0] out_in_data, output [0:0] out_read_valid, output [0:0] out_rst, output [0:0] out_write_valid, input [31:0] out_out_data, input [0:0] out_read_ready, input [0:0] out_write_ready, output [31:0] in_in_data, output [0:0] in_read_valid, output [0:0] in_rst, output [0:0] in_write_valid, input [31:0] in_out_data, input [0:0] in_read_ready, input [0:0] in_write_ready, output [0:0] valid);

	reg [31:0] out_in_data_reg;
	reg [0:0] out_read_valid_reg;
	reg [0:0] out_rst_reg;
	reg [0:0] out_write_valid_reg;
	reg [31:0] in_in_data_reg;
	reg [0:0] in_read_valid_reg;
	reg [0:0] in_rst_reg;
	reg [0:0] in_write_valid_reg;
	reg [0:0] valid_reg;

	assign out_in_data = out_in_data_reg;
	assign out_read_valid = out_read_valid_reg;
	assign out_rst = out_rst_reg;
	assign out_write_valid = out_write_valid_reg;
	assign in_in_data = in_in_data_reg;
	assign in_read_valid = in_read_valid_reg;
	assign in_rst = in_rst_reg;
	assign in_write_valid = in_write_valid_reg;
	assign valid = valid_reg;

	// Start debug wires and ports

	initial begin
	end





	// End debug wires and ports

	// Start Functional Units
	add call_18();

	reg [31:0] raddr_ram_0_reg;
	reg [31:0] waddr_ram_0_reg;
	reg [31:0] wdata_ram_0_reg;
	reg [0:0] wen_ram_0_reg;
	wire [31:0] rdata_ram_0;
	register #(.WIDTH(32)) ram_0(.clk(clk), .raddr(raddr_ram_0_reg), .rdata(rdata_ram_0), .rst(rst), .waddr(waddr_ram_0_reg), .wdata(wdata_ram_0_reg), .wen(wen_ram_0_reg));

	add call_6();

	add alloca_0();

	add bitcast_1();

	add call_2();

	br_dummy br_unit();

	add call_19();

	reg [63:0] phi_in_phi_7;
	reg [31:0] phi_last_block_phi_7;
	reg [63:0] phi_s_phi_7;
	wire [31:0] phi_out_phi_7;
	phi #(.NB_PAIR(2), .WIDTH(32)) phi_7(.in(phi_in_phi_7), .last_block(phi_last_block_phi_7), .out(phi_out_phi_7), .s(phi_s_phi_7));

	reg [31:0] add_in0_add_14;
	reg [31:0] add_in1_add_14;
	wire [31:0] add_out_add_14;
	add #(.WIDTH(32)) add_add_14(.in0(add_in0_add_14), .in1(add_in1_add_14), .out(add_out_add_14));

	reg [31:0] add_in0_add_9;
	reg [31:0] add_in1_add_9;
	wire [31:0] add_out_add_9;
	add #(.WIDTH(32)) add_add_9(.in0(add_in0_add_9), .in1(add_in1_add_9), .out(add_out_add_9));

	reg [31:0] cmp_in0_icmp_10;
	reg [31:0] cmp_in1_icmp_10;
	wire [0:0] cmp_out_icmp_10;
	eq #(.WIDTH(32)) icmp_10(.in0(cmp_in0_icmp_10), .in1(cmp_in1_icmp_10), .out(cmp_out_icmp_10));

	reg [0:0] bb_0_active_in_data;
	wire [0:0] bb_0_active_out_data;
	hls_wire #(.WIDTH(1)) bb_0_active(.in_data(bb_0_active_in_data), .out_data(bb_0_active_out_data));

	reg [31:0] eq_0_in0;
	reg [31:0] eq_0_in1;
	wire [0:0] eq_0_out;
	eq #(.WIDTH(32)) eq_0(.in0(eq_0_in0), .in1(eq_0_in1), .out(eq_0_out));

	reg [31:0] eq_1_in0;
	reg [31:0] eq_1_in1;
	wire [0:0] eq_1_out;
	eq #(.WIDTH(32)) eq_1(.in0(eq_1_in0), .in1(eq_1_in1), .out(eq_1_out));

	reg [0:0] andOp_2_in0;
	reg [0:0] andOp_2_in1;
	wire [0:0] andOp_2_out;
	andOp #(.WIDTH(1)) andOp_2(.in0(andOp_2_in0), .in1(andOp_2_in1), .out(andOp_2_out));

	reg [0:0] br_0_happened_in_data;
	wire [0:0] br_0_happened_out_data;
	hls_wire #(.WIDTH(1)) br_0_happened(.in_data(br_0_happened_in_data), .out_data(br_0_happened_out_data));

	reg [0:0] notOp_3_in0;
	wire [0:0] notOp_3_out;
	notOp #(.WIDTH(1)) notOp_3(.in(notOp_3_in0), .out(notOp_3_out));

	reg [0:0] bb_1_active_in_data;
	wire [0:0] bb_1_active_out_data;
	hls_wire #(.WIDTH(1)) bb_1_active(.in_data(bb_1_active_in_data), .out_data(bb_1_active_out_data));

	reg [31:0] eq_4_in0;
	reg [31:0] eq_4_in1;
	wire [0:0] eq_4_out;
	eq #(.WIDTH(32)) eq_4(.in0(eq_4_in0), .in1(eq_4_in1), .out(eq_4_out));

	reg [0:0] bb_2_active_in_data;
	wire [0:0] bb_2_active_out_data;
	hls_wire #(.WIDTH(1)) bb_2_active(.in_data(bb_2_active_in_data), .out_data(bb_2_active_out_data));

	reg [31:0] eq_5_in0;
	reg [31:0] eq_5_in1;
	wire [0:0] eq_5_out;
	eq #(.WIDTH(32)) eq_5(.in0(eq_5_in0), .in1(eq_5_in1), .out(eq_5_out));

	reg [31:0] eq_6_in0;
	reg [31:0] eq_6_in1;
	wire [0:0] eq_6_out;
	eq #(.WIDTH(32)) eq_6(.in0(eq_6_in0), .in1(eq_6_in1), .out(eq_6_out));

	reg [0:0] andOp_7_in0;
	reg [0:0] andOp_7_in1;
	wire [0:0] andOp_7_out;
	andOp #(.WIDTH(1)) andOp_7(.in0(andOp_7_in0), .in1(andOp_7_in1), .out(andOp_7_out));

	reg [0:0] br_2_happened_in_data;
	wire [0:0] br_2_happened_out_data;
	hls_wire #(.WIDTH(1)) br_2_happened(.in_data(br_2_happened_in_data), .out_data(br_2_happened_out_data));

	reg [0:0] notOp_8_in0;
	wire [0:0] notOp_8_out;
	notOp #(.WIDTH(1)) notOp_8(.in(notOp_8_in0), .out(notOp_8_out));

	reg [0:0] andOp_9_in0;
	reg [0:0] andOp_9_in1;
	wire [0:0] andOp_9_out;
	andOp #(.WIDTH(1)) andOp_9(.in0(andOp_9_in0), .in1(andOp_9_in1), .out(andOp_9_out));

	reg [0:0] notOp_10_in0;
	wire [0:0] notOp_10_out;
	notOp #(.WIDTH(1)) notOp_10(.in(notOp_10_in0), .out(notOp_10_out));

	reg [0:0] andOp_11_in0;
	reg [0:0] andOp_11_in1;
	wire [0:0] andOp_11_out;
	andOp #(.WIDTH(1)) andOp_11(.in0(andOp_11_in0), .in1(andOp_11_in1), .out(andOp_11_out));

	reg [31:0] eq_12_in0;
	reg [31:0] eq_12_in1;
	wire [0:0] eq_12_out;
	eq #(.WIDTH(32)) eq_12(.in0(eq_12_in0), .in1(eq_12_in1), .out(eq_12_out));

	reg [31:0] andOp_13_in0;
	reg [31:0] andOp_13_in1;
	wire [31:0] andOp_13_out;
	andOp #(.WIDTH(32)) andOp_13(.in0(andOp_13_in0), .in1(andOp_13_in1), .out(andOp_13_out));

	reg [31:0] andOp_14_in0;
	reg [31:0] andOp_14_in1;
	wire [31:0] andOp_14_out;
	andOp #(.WIDTH(32)) andOp_14(.in0(andOp_14_in0), .in1(andOp_14_in1), .out(andOp_14_out));

	reg [31:0] eq_15_in0;
	reg [31:0] eq_15_in1;
	wire [0:0] eq_15_out;
	eq #(.WIDTH(32)) eq_15(.in0(eq_15_in0), .in1(eq_15_in1), .out(eq_15_out));

	reg [31:0] andOp_16_in0;
	reg [31:0] andOp_16_in1;
	wire [31:0] andOp_16_out;
	andOp #(.WIDTH(32)) andOp_16(.in0(andOp_16_in0), .in1(andOp_16_in1), .out(andOp_16_out));

	reg [31:0] eq_17_in0;
	reg [31:0] eq_17_in1;
	wire [0:0] eq_17_out;
	eq #(.WIDTH(32)) eq_17(.in0(eq_17_in0), .in1(eq_17_in1), .out(eq_17_out));

	reg [31:0] andOp_18_in0;
	reg [31:0] andOp_18_in1;
	wire [31:0] andOp_18_out;
	andOp #(.WIDTH(32)) andOp_18(.in0(andOp_18_in0), .in1(andOp_18_in1), .out(andOp_18_out));

	reg [31:0] eq_19_in0;
	reg [31:0] eq_19_in1;
	wire [0:0] eq_19_out;
	eq #(.WIDTH(32)) eq_19(.in0(eq_19_in0), .in1(eq_19_in1), .out(eq_19_out));

	reg [31:0] andOp_20_in0;
	reg [31:0] andOp_20_in1;
	wire [31:0] andOp_20_out;
	andOp #(.WIDTH(32)) andOp_20(.in0(andOp_20_in0), .in1(andOp_20_in1), .out(andOp_20_out));

	reg [31:0] eq_21_in0;
	reg [31:0] eq_21_in1;
	wire [0:0] eq_21_out;
	eq #(.WIDTH(32)) eq_21(.in0(eq_21_in0), .in1(eq_21_in1), .out(eq_21_out));

	reg [31:0] andOp_22_in0;
	reg [31:0] andOp_22_in1;
	wire [31:0] andOp_22_out;
	andOp #(.WIDTH(32)) andOp_22(.in0(andOp_22_in0), .in1(andOp_22_in1), .out(andOp_22_out));

	reg [31:0] eq_23_in0;
	reg [31:0] eq_23_in1;
	wire [0:0] eq_23_out;
	eq #(.WIDTH(32)) eq_23(.in0(eq_23_in0), .in1(eq_23_in1), .out(eq_23_out));

	reg [31:0] andOp_24_in0;
	reg [31:0] andOp_24_in1;
	wire [31:0] andOp_24_out;
	andOp #(.WIDTH(32)) andOp_24(.in0(andOp_24_in0), .in1(andOp_24_in1), .out(andOp_24_out));

	reg [31:0] eq_25_in0;
	reg [31:0] eq_25_in1;
	wire [0:0] eq_25_out;
	eq #(.WIDTH(32)) eq_25(.in0(eq_25_in0), .in1(eq_25_in1), .out(eq_25_out));

	reg [31:0] andOp_26_in0;
	reg [31:0] andOp_26_in1;
	wire [31:0] andOp_26_out;
	andOp #(.WIDTH(32)) andOp_26(.in0(andOp_26_in0), .in1(andOp_26_in1), .out(andOp_26_out));

	reg [31:0] eq_27_in0;
	reg [31:0] eq_27_in1;
	wire [0:0] eq_27_out;
	eq #(.WIDTH(32)) eq_27(.in0(eq_27_in0), .in1(eq_27_in1), .out(eq_27_out));

	reg [31:0] andOp_28_in0;
	reg [31:0] andOp_28_in1;
	wire [31:0] andOp_28_out;
	andOp #(.WIDTH(32)) andOp_28(.in0(andOp_28_in0), .in1(andOp_28_in1), .out(andOp_28_out));

	reg [31:0] eq_29_in0;
	reg [31:0] eq_29_in1;
	wire [0:0] eq_29_out;
	eq #(.WIDTH(32)) eq_29(.in0(eq_29_in0), .in1(eq_29_in1), .out(eq_29_out));

	reg [31:0] andOp_30_in0;
	reg [31:0] andOp_30_in1;
	wire [31:0] andOp_30_out;
	andOp #(.WIDTH(32)) andOp_30(.in0(andOp_30_in0), .in1(andOp_30_in1), .out(andOp_30_out));

	reg [31:0] eq_31_in0;
	reg [31:0] eq_31_in1;
	wire [0:0] eq_31_out;
	eq #(.WIDTH(32)) eq_31(.in0(eq_31_in0), .in1(eq_31_in1), .out(eq_31_out));

	reg [31:0] andOp_32_in0;
	reg [31:0] andOp_32_in1;
	wire [31:0] andOp_32_out;
	andOp #(.WIDTH(32)) andOp_32(.in0(andOp_32_in0), .in1(andOp_32_in1), .out(andOp_32_out));

	reg [31:0] eq_33_in0;
	reg [31:0] eq_33_in1;
	wire [0:0] eq_33_out;
	eq #(.WIDTH(32)) eq_33(.in0(eq_33_in0), .in1(eq_33_in1), .out(eq_33_out));

	reg [31:0] andOp_34_in0;
	reg [31:0] andOp_34_in1;
	wire [31:0] andOp_34_out;
	andOp #(.WIDTH(32)) andOp_34(.in0(andOp_34_in0), .in1(andOp_34_in1), .out(andOp_34_out));

	reg [31:0] andOp_35_in0;
	reg [31:0] andOp_35_in1;
	wire [31:0] andOp_35_out;
	andOp #(.WIDTH(32)) andOp_35(.in0(andOp_35_in0), .in1(andOp_35_in1), .out(andOp_35_out));

	reg [31:0] eq_36_in0;
	reg [31:0] eq_36_in1;
	wire [0:0] eq_36_out;
	eq #(.WIDTH(32)) eq_36(.in0(eq_36_in0), .in1(eq_36_in1), .out(eq_36_out));

	reg [31:0] andOp_37_in0;
	reg [31:0] andOp_37_in1;
	wire [31:0] andOp_37_out;
	andOp #(.WIDTH(32)) andOp_37(.in0(andOp_37_in0), .in1(andOp_37_in1), .out(andOp_37_out));

	reg [31:0] andOp_38_in0;
	reg [31:0] andOp_38_in1;
	wire [31:0] andOp_38_out;
	andOp #(.WIDTH(32)) andOp_38(.in0(andOp_38_in0), .in1(andOp_38_in1), .out(andOp_38_out));

	reg [31:0] eq_39_in0;
	reg [31:0] eq_39_in1;
	wire [0:0] eq_39_out;
	eq #(.WIDTH(32)) eq_39(.in0(eq_39_in0), .in1(eq_39_in1), .out(eq_39_out));

	reg [31:0] andOp_40_in0;
	reg [31:0] andOp_40_in1;
	wire [31:0] andOp_40_out;
	andOp #(.WIDTH(32)) andOp_40(.in0(andOp_40_in0), .in1(andOp_40_in1), .out(andOp_40_out));

	reg [31:0] andOp_41_in0;
	reg [31:0] andOp_41_in1;
	wire [31:0] andOp_41_out;
	andOp #(.WIDTH(32)) andOp_41(.in0(andOp_41_in0), .in1(andOp_41_in1), .out(andOp_41_out));

	reg [31:0] eq_42_in0;
	reg [31:0] eq_42_in1;
	wire [0:0] eq_42_out;
	eq #(.WIDTH(32)) eq_42(.in0(eq_42_in0), .in1(eq_42_in1), .out(eq_42_out));

	reg [31:0] andOp_43_in0;
	reg [31:0] andOp_43_in1;
	wire [31:0] andOp_43_out;
	andOp #(.WIDTH(32)) andOp_43(.in0(andOp_43_in0), .in1(andOp_43_in1), .out(andOp_43_out));

	reg [31:0] andOp_44_in0;
	reg [31:0] andOp_44_in1;
	wire [31:0] andOp_44_out;
	andOp #(.WIDTH(32)) andOp_44(.in0(andOp_44_in0), .in1(andOp_44_in1), .out(andOp_44_out));

	reg [31:0] eq_45_in0;
	reg [31:0] eq_45_in1;
	wire [0:0] eq_45_out;
	eq #(.WIDTH(32)) eq_45(.in0(eq_45_in0), .in1(eq_45_in1), .out(eq_45_out));

	reg [31:0] andOp_46_in0;
	reg [31:0] andOp_46_in1;
	wire [31:0] andOp_46_out;
	andOp #(.WIDTH(32)) andOp_46(.in0(andOp_46_in0), .in1(andOp_46_in1), .out(andOp_46_out));

	reg [31:0] andOp_47_in0;
	reg [31:0] andOp_47_in1;
	wire [31:0] andOp_47_out;
	andOp #(.WIDTH(32)) andOp_47(.in0(andOp_47_in0), .in1(andOp_47_in1), .out(andOp_47_out));

	reg [31:0] eq_48_in0;
	reg [31:0] eq_48_in1;
	wire [0:0] eq_48_out;
	eq #(.WIDTH(32)) eq_48(.in0(eq_48_in0), .in1(eq_48_in1), .out(eq_48_out));

	reg [31:0] andOp_49_in0;
	reg [31:0] andOp_49_in1;
	wire [31:0] andOp_49_out;
	andOp #(.WIDTH(32)) andOp_49(.in0(andOp_49_in0), .in1(andOp_49_in1), .out(andOp_49_out));

	reg [31:0] andOp_50_in0;
	reg [31:0] andOp_50_in1;
	wire [31:0] andOp_50_out;
	andOp #(.WIDTH(32)) andOp_50(.in0(andOp_50_in0), .in1(andOp_50_in1), .out(andOp_50_out));

	reg [31:0] eq_51_in0;
	reg [31:0] eq_51_in1;
	wire [0:0] eq_51_out;
	eq #(.WIDTH(32)) eq_51(.in0(eq_51_in0), .in1(eq_51_in1), .out(eq_51_out));

	reg [31:0] andOp_52_in0;
	reg [31:0] andOp_52_in1;
	wire [31:0] andOp_52_out;
	andOp #(.WIDTH(32)) andOp_52(.in0(andOp_52_in0), .in1(andOp_52_in1), .out(andOp_52_out));

	reg [31:0] andOp_53_in0;
	reg [31:0] andOp_53_in1;
	wire [31:0] andOp_53_out;
	andOp #(.WIDTH(32)) andOp_53(.in0(andOp_53_in0), .in1(andOp_53_in1), .out(andOp_53_out));

	reg [31:0] eq_54_in0;
	reg [31:0] eq_54_in1;
	wire [0:0] eq_54_out;
	eq #(.WIDTH(32)) eq_54(.in0(eq_54_in0), .in1(eq_54_in1), .out(eq_54_out));

	reg [31:0] andOp_55_in0;
	reg [31:0] andOp_55_in1;
	wire [31:0] andOp_55_out;
	andOp #(.WIDTH(32)) andOp_55(.in0(andOp_55_in0), .in1(andOp_55_in1), .out(andOp_55_out));

	reg [31:0] eq_56_in0;
	reg [31:0] eq_56_in1;
	wire [0:0] eq_56_out;
	eq #(.WIDTH(32)) eq_56(.in0(eq_56_in0), .in1(eq_56_in1), .out(eq_56_out));

	reg [31:0] andOp_57_in0;
	reg [31:0] andOp_57_in1;
	wire [31:0] andOp_57_out;
	andOp #(.WIDTH(32)) andOp_57(.in0(andOp_57_in0), .in1(andOp_57_in1), .out(andOp_57_out));

	reg [31:0] eq_58_in0;
	reg [31:0] eq_58_in1;
	wire [0:0] eq_58_out;
	eq #(.WIDTH(32)) eq_58(.in0(eq_58_in0), .in1(eq_58_in1), .out(eq_58_out));

	reg [31:0] andOp_59_in0;
	reg [31:0] andOp_59_in1;
	wire [31:0] andOp_59_out;
	andOp #(.WIDTH(32)) andOp_59(.in0(andOp_59_in0), .in1(andOp_59_in1), .out(andOp_59_out));

	reg [31:0] eq_60_in0;
	reg [31:0] eq_60_in1;
	wire [0:0] eq_60_out;
	eq #(.WIDTH(32)) eq_60(.in0(eq_60_in0), .in1(eq_60_in1), .out(eq_60_out));

	reg [31:0] andOp_61_in0;
	reg [31:0] andOp_61_in1;
	wire [31:0] andOp_61_out;
	andOp #(.WIDTH(32)) andOp_61(.in0(andOp_61_in0), .in1(andOp_61_in1), .out(andOp_61_out));

	reg [31:0] eq_62_in0;
	reg [31:0] eq_62_in1;
	wire [0:0] eq_62_out;
	eq #(.WIDTH(32)) eq_62(.in0(eq_62_in0), .in1(eq_62_in1), .out(eq_62_out));

	reg [31:0] andOp_63_in0;
	reg [31:0] andOp_63_in1;
	wire [31:0] andOp_63_out;
	andOp #(.WIDTH(32)) andOp_63(.in0(andOp_63_in0), .in1(andOp_63_in1), .out(andOp_63_out));

	reg [31:0] eq_64_in0;
	reg [31:0] eq_64_in1;
	wire [0:0] eq_64_out;
	eq #(.WIDTH(32)) eq_64(.in0(eq_64_in0), .in1(eq_64_in1), .out(eq_64_out));

	reg [31:0] andOp_65_in0;
	reg [31:0] andOp_65_in1;
	wire [31:0] andOp_65_out;
	andOp #(.WIDTH(32)) andOp_65(.in0(andOp_65_in0), .in1(andOp_65_in1), .out(andOp_65_out));

	reg [31:0] eq_66_in0;
	reg [31:0] eq_66_in1;
	wire [0:0] eq_66_out;
	eq #(.WIDTH(32)) eq_66(.in0(eq_66_in0), .in1(eq_66_in1), .out(eq_66_out));

	reg [31:0] eq_67_in0;
	reg [31:0] eq_67_in1;
	wire [0:0] eq_67_out;
	eq #(.WIDTH(32)) eq_67(.in0(eq_67_in0), .in1(eq_67_in1), .out(eq_67_out));

	reg [31:0] eq_68_in0;
	reg [31:0] eq_68_in1;
	wire [0:0] eq_68_out;
	eq #(.WIDTH(32)) eq_68(.in0(eq_68_in0), .in1(eq_68_in1), .out(eq_68_out));

	reg [31:0] eq_69_in0;
	reg [31:0] eq_69_in1;
	wire [0:0] eq_69_out;
	eq #(.WIDTH(32)) eq_69(.in0(eq_69_in0), .in1(eq_69_in1), .out(eq_69_out));

	reg [31:0] andOp_70_in0;
	reg [31:0] andOp_70_in1;
	wire [31:0] andOp_70_out;
	andOp #(.WIDTH(32)) andOp_70(.in0(andOp_70_in0), .in1(andOp_70_in1), .out(andOp_70_out));

	reg [31:0] eq_71_in0;
	reg [31:0] eq_71_in1;
	wire [0:0] eq_71_out;
	eq #(.WIDTH(32)) eq_71(.in0(eq_71_in0), .in1(eq_71_in1), .out(eq_71_out));

	reg [31:0] andOp_72_in0;
	reg [31:0] andOp_72_in1;
	wire [31:0] andOp_72_out;
	andOp #(.WIDTH(32)) andOp_72(.in0(andOp_72_in0), .in1(andOp_72_in1), .out(andOp_72_out));

	reg [31:0] eq_73_in0;
	reg [31:0] eq_73_in1;
	wire [0:0] eq_73_out;
	eq #(.WIDTH(32)) eq_73(.in0(eq_73_in0), .in1(eq_73_in1), .out(eq_73_out));

	reg [31:0] andOp_74_in0;
	reg [31:0] andOp_74_in1;
	wire [31:0] andOp_74_out;
	andOp #(.WIDTH(32)) andOp_74(.in0(andOp_74_in0), .in1(andOp_74_in1), .out(andOp_74_out));

	reg [31:0] andOp_75_in0;
	reg [31:0] andOp_75_in1;
	wire [31:0] andOp_75_out;
	andOp #(.WIDTH(32)) andOp_75(.in0(andOp_75_in0), .in1(andOp_75_in1), .out(andOp_75_out));

	reg [31:0] eq_76_in0;
	reg [31:0] eq_76_in1;
	wire [0:0] eq_76_out;
	eq #(.WIDTH(32)) eq_76(.in0(eq_76_in0), .in1(eq_76_in1), .out(eq_76_out));

	reg [31:0] andOp_77_in0;
	reg [31:0] andOp_77_in1;
	wire [31:0] andOp_77_out;
	andOp #(.WIDTH(32)) andOp_77(.in0(andOp_77_in0), .in1(andOp_77_in1), .out(andOp_77_out));

	reg [31:0] eq_78_in0;
	reg [31:0] eq_78_in1;
	wire [0:0] eq_78_out;
	eq #(.WIDTH(32)) eq_78(.in0(eq_78_in0), .in1(eq_78_in1), .out(eq_78_out));

	reg [31:0] andOp_79_in0;
	reg [31:0] andOp_79_in1;
	wire [31:0] andOp_79_out;
	andOp #(.WIDTH(32)) andOp_79(.in0(andOp_79_in0), .in1(andOp_79_in1), .out(andOp_79_out));

	reg [31:0] eq_80_in0;
	reg [31:0] eq_80_in1;
	wire [0:0] eq_80_out;
	eq #(.WIDTH(32)) eq_80(.in0(eq_80_in0), .in1(eq_80_in1), .out(eq_80_out));

	reg [31:0] andOp_81_in0;
	reg [31:0] andOp_81_in1;
	wire [31:0] andOp_81_out;
	andOp #(.WIDTH(32)) andOp_81(.in0(andOp_81_in0), .in1(andOp_81_in1), .out(andOp_81_out));

	reg [31:0] andOp_82_in0;
	reg [31:0] andOp_82_in1;
	wire [31:0] andOp_82_out;
	andOp #(.WIDTH(32)) andOp_82(.in0(andOp_82_in0), .in1(andOp_82_in1), .out(andOp_82_out));

	reg [31:0] eq_83_in0;
	reg [31:0] eq_83_in1;
	wire [0:0] eq_83_out;
	eq #(.WIDTH(32)) eq_83(.in0(eq_83_in0), .in1(eq_83_in1), .out(eq_83_out));

	reg [31:0] andOp_84_in0;
	reg [31:0] andOp_84_in1;
	wire [31:0] andOp_84_out;
	andOp #(.WIDTH(32)) andOp_84(.in0(andOp_84_in0), .in1(andOp_84_in1), .out(andOp_84_out));

	reg [31:0] andOp_85_in0;
	reg [31:0] andOp_85_in1;
	wire [31:0] andOp_85_out;
	andOp #(.WIDTH(32)) andOp_85(.in0(andOp_85_in0), .in1(andOp_85_in1), .out(andOp_85_out));

	reg [31:0] eq_86_in0;
	reg [31:0] eq_86_in1;
	wire [0:0] eq_86_out;
	eq #(.WIDTH(32)) eq_86(.in0(eq_86_in0), .in1(eq_86_in1), .out(eq_86_out));

	reg [31:0] andOp_87_in0;
	reg [31:0] andOp_87_in1;
	wire [31:0] andOp_87_out;
	andOp #(.WIDTH(32)) andOp_87(.in0(andOp_87_in0), .in1(andOp_87_in1), .out(andOp_87_out));

	reg [31:0] eq_88_in0;
	reg [31:0] eq_88_in1;
	wire [0:0] eq_88_out;
	eq #(.WIDTH(32)) eq_88(.in0(eq_88_in0), .in1(eq_88_in1), .out(eq_88_out));

	reg [31:0] andOp_89_in0;
	reg [31:0] andOp_89_in1;
	wire [31:0] andOp_89_out;
	andOp #(.WIDTH(32)) andOp_89(.in0(andOp_89_in0), .in1(andOp_89_in1), .out(andOp_89_out));

	reg [31:0] eq_90_in0;
	reg [31:0] eq_90_in1;
	wire [0:0] eq_90_out;
	eq #(.WIDTH(32)) eq_90(.in0(eq_90_in0), .in1(eq_90_in1), .out(eq_90_out));

	reg [31:0] eq_91_in0;
	reg [31:0] eq_91_in1;
	wire [0:0] eq_91_out;
	eq #(.WIDTH(32)) eq_91(.in0(eq_91_in0), .in1(eq_91_in1), .out(eq_91_out));

	reg [31:0] eq_92_in0;
	reg [31:0] eq_92_in1;
	wire [0:0] eq_92_out;
	eq #(.WIDTH(32)) eq_92(.in0(eq_92_in0), .in1(eq_92_in1), .out(eq_92_out));

	reg [31:0] eq_93_in0;
	reg [31:0] eq_93_in1;
	wire [0:0] eq_93_out;
	eq #(.WIDTH(32)) eq_93(.in0(eq_93_in0), .in1(eq_93_in1), .out(eq_93_out));

	reg [31:0] andOp_94_in0;
	reg [31:0] andOp_94_in1;
	wire [31:0] andOp_94_out;
	andOp #(.WIDTH(32)) andOp_94(.in0(andOp_94_in0), .in1(andOp_94_in1), .out(andOp_94_out));

	reg [31:0] andOp_95_in0;
	reg [31:0] andOp_95_in1;
	wire [31:0] andOp_95_out;
	andOp #(.WIDTH(32)) andOp_95(.in0(andOp_95_in0), .in1(andOp_95_in1), .out(andOp_95_out));

	reg [31:0] eq_96_in0;
	reg [31:0] eq_96_in1;
	wire [0:0] eq_96_out;
	eq #(.WIDTH(32)) eq_96(.in0(eq_96_in0), .in1(eq_96_in1), .out(eq_96_out));

	reg [31:0] andOp_97_in0;
	reg [31:0] andOp_97_in1;
	wire [31:0] andOp_97_out;
	andOp #(.WIDTH(32)) andOp_97(.in0(andOp_97_in0), .in1(andOp_97_in1), .out(andOp_97_out));

	reg [31:0] andOp_98_in0;
	reg [31:0] andOp_98_in1;
	wire [31:0] andOp_98_out;
	andOp #(.WIDTH(32)) andOp_98(.in0(andOp_98_in0), .in1(andOp_98_in1), .out(andOp_98_out));

	reg [31:0] eq_99_in0;
	reg [31:0] eq_99_in1;
	wire [0:0] eq_99_out;
	eq #(.WIDTH(32)) eq_99(.in0(eq_99_in0), .in1(eq_99_in1), .out(eq_99_out));

	reg [31:0] andOp_100_in0;
	reg [31:0] andOp_100_in1;
	wire [31:0] andOp_100_out;
	andOp #(.WIDTH(32)) andOp_100(.in0(andOp_100_in0), .in1(andOp_100_in1), .out(andOp_100_out));

	reg [31:0] andOp_101_in0;
	reg [31:0] andOp_101_in1;
	wire [31:0] andOp_101_out;
	andOp #(.WIDTH(32)) andOp_101(.in0(andOp_101_in0), .in1(andOp_101_in1), .out(andOp_101_out));

	reg [31:0] eq_102_in0;
	reg [31:0] eq_102_in1;
	wire [0:0] eq_102_out;
	eq #(.WIDTH(32)) eq_102(.in0(eq_102_in0), .in1(eq_102_in1), .out(eq_102_out));

	reg [31:0] eq_103_in0;
	reg [31:0] eq_103_in1;
	wire [0:0] eq_103_out;
	eq #(.WIDTH(32)) eq_103(.in0(eq_103_in0), .in1(eq_103_in1), .out(eq_103_out));

	reg [31:0] eq_104_in0;
	reg [31:0] eq_104_in1;
	wire [0:0] eq_104_out;
	eq #(.WIDTH(32)) eq_104(.in0(eq_104_in0), .in1(eq_104_in1), .out(eq_104_out));

	reg [31:0] eq_105_in0;
	reg [31:0] eq_105_in1;
	wire [0:0] eq_105_out;
	eq #(.WIDTH(32)) eq_105(.in0(eq_105_in0), .in1(eq_105_in1), .out(eq_105_out));

	reg [31:0] eq_106_in0;
	reg [31:0] eq_106_in1;
	wire [0:0] eq_106_out;
	eq #(.WIDTH(32)) eq_106(.in0(eq_106_in0), .in1(eq_106_in1), .out(eq_106_out));

	reg [31:0] eq_107_in0;
	reg [31:0] eq_107_in1;
	wire [0:0] eq_107_out;
	eq #(.WIDTH(32)) eq_107(.in0(eq_107_in0), .in1(eq_107_in1), .out(eq_107_out));

	// End Functional Units

	reg [31:0] add_tmp_3;
	reg [31:0] global_next_block;
	reg [31:0] global_state;
	reg [0:0] icmp_tmp_4;
	reg [31:0] last_BB_reg;
	reg [31:0] load_tmp_2;

	// controller for add_add_14.add_in0_add_14
	// controller for add_add_14.add_in1_add_14
	// Insensitive connections
	always @(*) begin
		add_in0_add_14 = valid ? load_tmp_2 : load_tmp_2;
		add_in1_add_14 = valid ? in_out_data : in_out_data;
	end
	// controller for add_add_9.add_in0_add_9
	// controller for add_add_9.add_in1_add_9
	// Insensitive connections
	always @(*) begin
		add_in0_add_9 = valid ? phi_out_phi_7 : phi_out_phi_7;
		add_in1_add_9 = valid ? (32'd1) : (32'd1);
	end
	// controller for andOp_100.andOp_100_in0
	// controller for andOp_100.andOp_100_in1
	// Insensitive connections
	always @(*) begin
		andOp_100_in0 = valid ? eq_92_out : eq_92_out;
		andOp_100_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_101.andOp_101_in0
	// controller for andOp_101.andOp_101_in1
	// Insensitive connections
	always @(*) begin
		andOp_101_in0 = valid ? andOp_100_out : andOp_100_out;
		andOp_101_in1 = valid ? eq_99_out : eq_99_out;
	end
	// controller for andOp_11.andOp_11_in0
	// controller for andOp_11.andOp_11_in1
	// Insensitive connections
	always @(*) begin
		andOp_11_in0 = valid ? andOp_7_out : andOp_7_out;
		andOp_11_in1 = valid ? notOp_10_out : notOp_10_out;
	end
	// controller for andOp_13.andOp_13_in0
	// controller for andOp_13.andOp_13_in1
	// Insensitive connections
	always @(*) begin
		andOp_13_in0 = valid ? eq_12_out : eq_12_out;
		andOp_13_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_14.andOp_14_in0
	// controller for andOp_14.andOp_14_in1
	// Insensitive connections
	always @(*) begin
		andOp_14_in0 = valid ? andOp_13_out : andOp_13_out;
		andOp_14_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_16.andOp_16_in0
	// controller for andOp_16.andOp_16_in1
	// Insensitive connections
	always @(*) begin
		andOp_16_in0 = valid ? eq_15_out : eq_15_out;
		andOp_16_in1 = valid ? bb_1_active_out_data : bb_1_active_out_data;
	end
	// controller for andOp_18.andOp_18_in0
	// controller for andOp_18.andOp_18_in1
	// Insensitive connections
	always @(*) begin
		andOp_18_in0 = valid ? eq_17_out : eq_17_out;
		andOp_18_in1 = valid ? bb_0_active_out_data : bb_0_active_out_data;
	end
	// controller for andOp_2.andOp_2_in0
	// controller for andOp_2.andOp_2_in1
	// Insensitive connections
	always @(*) begin
		andOp_2_in0 = valid ? bb_0_active_out_data : bb_0_active_out_data;
		andOp_2_in1 = valid ? eq_1_out : eq_1_out;
	end
	// controller for andOp_20.andOp_20_in0
	// controller for andOp_20.andOp_20_in1
	// Insensitive connections
	always @(*) begin
		andOp_20_in0 = valid ? eq_19_out : eq_19_out;
		andOp_20_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_22.andOp_22_in0
	// controller for andOp_22.andOp_22_in1
	// Insensitive connections
	always @(*) begin
		andOp_22_in0 = valid ? eq_21_out : eq_21_out;
		andOp_22_in1 = valid ? bb_0_active_out_data : bb_0_active_out_data;
	end
	// controller for andOp_24.andOp_24_in0
	// controller for andOp_24.andOp_24_in1
	// Insensitive connections
	always @(*) begin
		andOp_24_in0 = valid ? eq_23_out : eq_23_out;
		andOp_24_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_26.andOp_26_in0
	// controller for andOp_26.andOp_26_in1
	// Insensitive connections
	always @(*) begin
		andOp_26_in0 = valid ? eq_25_out : eq_25_out;
		andOp_26_in1 = valid ? bb_0_active_out_data : bb_0_active_out_data;
	end
	// controller for andOp_28.andOp_28_in0
	// controller for andOp_28.andOp_28_in1
	// Insensitive connections
	always @(*) begin
		andOp_28_in0 = valid ? eq_27_out : eq_27_out;
		andOp_28_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_30.andOp_30_in0
	// controller for andOp_30.andOp_30_in1
	// Insensitive connections
	always @(*) begin
		andOp_30_in0 = valid ? eq_29_out : eq_29_out;
		andOp_30_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_32.andOp_32_in0
	// controller for andOp_32.andOp_32_in1
	// Insensitive connections
	always @(*) begin
		andOp_32_in0 = valid ? eq_31_out : eq_31_out;
		andOp_32_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_34.andOp_34_in0
	// controller for andOp_34.andOp_34_in1
	// Insensitive connections
	always @(*) begin
		andOp_34_in0 = valid ? eq_33_out : eq_33_out;
		andOp_34_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_35.andOp_35_in0
	// controller for andOp_35.andOp_35_in1
	// Insensitive connections
	always @(*) begin
		andOp_35_in0 = valid ? andOp_34_out : andOp_34_out;
		andOp_35_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_37.andOp_37_in0
	// controller for andOp_37.andOp_37_in1
	// Insensitive connections
	always @(*) begin
		andOp_37_in0 = valid ? eq_36_out : eq_36_out;
		andOp_37_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_38.andOp_38_in0
	// controller for andOp_38.andOp_38_in1
	// Insensitive connections
	always @(*) begin
		andOp_38_in0 = valid ? andOp_37_out : andOp_37_out;
		andOp_38_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_40.andOp_40_in0
	// controller for andOp_40.andOp_40_in1
	// Insensitive connections
	always @(*) begin
		andOp_40_in0 = valid ? eq_39_out : eq_39_out;
		andOp_40_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_41.andOp_41_in0
	// controller for andOp_41.andOp_41_in1
	// Insensitive connections
	always @(*) begin
		andOp_41_in0 = valid ? andOp_40_out : andOp_40_out;
		andOp_41_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_43.andOp_43_in0
	// controller for andOp_43.andOp_43_in1
	// Insensitive connections
	always @(*) begin
		andOp_43_in0 = valid ? eq_42_out : eq_42_out;
		andOp_43_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_44.andOp_44_in0
	// controller for andOp_44.andOp_44_in1
	// Insensitive connections
	always @(*) begin
		andOp_44_in0 = valid ? andOp_43_out : andOp_43_out;
		andOp_44_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_46.andOp_46_in0
	// controller for andOp_46.andOp_46_in1
	// Insensitive connections
	always @(*) begin
		andOp_46_in0 = valid ? eq_45_out : eq_45_out;
		andOp_46_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_47.andOp_47_in0
	// controller for andOp_47.andOp_47_in1
	// Insensitive connections
	always @(*) begin
		andOp_47_in0 = valid ? andOp_46_out : andOp_46_out;
		andOp_47_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_49.andOp_49_in0
	// controller for andOp_49.andOp_49_in1
	// Insensitive connections
	always @(*) begin
		andOp_49_in0 = valid ? eq_48_out : eq_48_out;
		andOp_49_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_50.andOp_50_in0
	// controller for andOp_50.andOp_50_in1
	// Insensitive connections
	always @(*) begin
		andOp_50_in0 = valid ? andOp_49_out : andOp_49_out;
		andOp_50_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_52.andOp_52_in0
	// controller for andOp_52.andOp_52_in1
	// Insensitive connections
	always @(*) begin
		andOp_52_in0 = valid ? eq_51_out : eq_51_out;
		andOp_52_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_53.andOp_53_in0
	// controller for andOp_53.andOp_53_in1
	// Insensitive connections
	always @(*) begin
		andOp_53_in0 = valid ? andOp_52_out : andOp_52_out;
		andOp_53_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_55.andOp_55_in0
	// controller for andOp_55.andOp_55_in1
	// Insensitive connections
	always @(*) begin
		andOp_55_in0 = valid ? eq_54_out : eq_54_out;
		andOp_55_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_57.andOp_57_in0
	// controller for andOp_57.andOp_57_in1
	// Insensitive connections
	always @(*) begin
		andOp_57_in0 = valid ? eq_56_out : eq_56_out;
		andOp_57_in1 = valid ? bb_2_active_out_data : bb_2_active_out_data;
	end
	// controller for andOp_59.andOp_59_in0
	// controller for andOp_59.andOp_59_in1
	// Insensitive connections
	always @(*) begin
		andOp_59_in0 = valid ? eq_58_out : eq_58_out;
		andOp_59_in1 = valid ? bb_1_active_out_data : bb_1_active_out_data;
	end
	// controller for andOp_61.andOp_61_in0
	// controller for andOp_61.andOp_61_in1
	// Insensitive connections
	always @(*) begin
		andOp_61_in0 = valid ? eq_60_out : eq_60_out;
		andOp_61_in1 = valid ? bb_1_active_out_data : bb_1_active_out_data;
	end
	// controller for andOp_63.andOp_63_in0
	// controller for andOp_63.andOp_63_in1
	// Insensitive connections
	always @(*) begin
		andOp_63_in0 = valid ? eq_62_out : eq_62_out;
		andOp_63_in1 = valid ? bb_1_active_out_data : bb_1_active_out_data;
	end
	// controller for andOp_65.andOp_65_in0
	// controller for andOp_65.andOp_65_in1
	// Insensitive connections
	always @(*) begin
		andOp_65_in0 = valid ? eq_64_out : eq_64_out;
		andOp_65_in1 = valid ? bb_1_active_out_data : bb_1_active_out_data;
	end
	// controller for andOp_7.andOp_7_in0
	// controller for andOp_7.andOp_7_in1
	// Insensitive connections
	always @(*) begin
		andOp_7_in0 = valid ? bb_2_active_out_data : bb_2_active_out_data;
		andOp_7_in1 = valid ? eq_6_out : eq_6_out;
	end
	// controller for andOp_70.andOp_70_in0
	// controller for andOp_70.andOp_70_in1
	// Insensitive connections
	always @(*) begin
		andOp_70_in0 = valid ? eq_69_out : eq_69_out;
		andOp_70_in1 = valid ? 1 : 1;
	end
	// controller for andOp_72.andOp_72_in0
	// controller for andOp_72.andOp_72_in1
	// Insensitive connections
	always @(*) begin
		andOp_72_in0 = valid ? eq_71_out : eq_71_out;
		andOp_72_in1 = valid ? 1 : 1;
	end
	// controller for andOp_74.andOp_74_in0
	// controller for andOp_74.andOp_74_in1
	// Insensitive connections
	always @(*) begin
		andOp_74_in0 = valid ? eq_73_out : eq_73_out;
		andOp_74_in1 = valid ? 1 : 1;
	end
	// controller for andOp_75.andOp_75_in0
	// controller for andOp_75.andOp_75_in1
	// Insensitive connections
	always @(*) begin
		andOp_75_in0 = valid ? andOp_74_out : andOp_74_out;
		andOp_75_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_77.andOp_77_in0
	// controller for andOp_77.andOp_77_in1
	// Insensitive connections
	always @(*) begin
		andOp_77_in0 = valid ? eq_76_out : eq_76_out;
		andOp_77_in1 = valid ? 1 : 1;
	end
	// controller for andOp_79.andOp_79_in0
	// controller for andOp_79.andOp_79_in1
	// Insensitive connections
	always @(*) begin
		andOp_79_in0 = valid ? eq_78_out : eq_78_out;
		andOp_79_in1 = valid ? 1 : 1;
	end
	// controller for andOp_81.andOp_81_in0
	// controller for andOp_81.andOp_81_in1
	// Insensitive connections
	always @(*) begin
		andOp_81_in0 = valid ? eq_80_out : eq_80_out;
		andOp_81_in1 = valid ? (icmp_tmp_4) : (icmp_tmp_4);
	end
	// controller for andOp_82.andOp_82_in0
	// controller for andOp_82.andOp_82_in1
	// Insensitive connections
	always @(*) begin
		andOp_82_in0 = valid ? eq_80_out : eq_80_out;
		andOp_82_in1 = valid ? !(icmp_tmp_4) : !(icmp_tmp_4);
	end
	// controller for andOp_84.andOp_84_in0
	// controller for andOp_84.andOp_84_in1
	// Insensitive connections
	always @(*) begin
		andOp_84_in0 = valid ? eq_83_out : eq_83_out;
		andOp_84_in1 = valid ? 1 : 1;
	end
	// controller for andOp_85.andOp_85_in0
	// controller for andOp_85.andOp_85_in1
	// Insensitive connections
	always @(*) begin
		andOp_85_in0 = valid ? andOp_84_out : andOp_84_out;
		andOp_85_in1 = valid ? out_write_ready : out_write_ready;
	end
	// controller for andOp_87.andOp_87_in0
	// controller for andOp_87.andOp_87_in1
	// Insensitive connections
	always @(*) begin
		andOp_87_in0 = valid ? eq_86_out : eq_86_out;
		andOp_87_in1 = valid ? 1 : 1;
	end
	// controller for andOp_89.andOp_89_in0
	// controller for andOp_89.andOp_89_in1
	// Insensitive connections
	always @(*) begin
		andOp_89_in0 = valid ? eq_88_out : eq_88_out;
		andOp_89_in1 = valid ? 1 : 1;
	end
	// controller for andOp_9.andOp_9_in0
	// controller for andOp_9.andOp_9_in1
	// Insensitive connections
	always @(*) begin
		andOp_9_in0 = valid ? andOp_7_out : andOp_7_out;
		andOp_9_in1 = valid ? icmp_tmp_4 : icmp_tmp_4;
	end
	// controller for andOp_94.andOp_94_in0
	// controller for andOp_94.andOp_94_in1
	// Insensitive connections
	always @(*) begin
		andOp_94_in0 = valid ? eq_92_out : eq_92_out;
		andOp_94_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_95.andOp_95_in0
	// controller for andOp_95.andOp_95_in1
	// Insensitive connections
	always @(*) begin
		andOp_95_in0 = valid ? andOp_94_out : andOp_94_out;
		andOp_95_in1 = valid ? eq_93_out : eq_93_out;
	end
	// controller for andOp_97.andOp_97_in0
	// controller for andOp_97.andOp_97_in1
	// Insensitive connections
	always @(*) begin
		andOp_97_in0 = valid ? eq_92_out : eq_92_out;
		andOp_97_in1 = valid ? in_read_ready : in_read_ready;
	end
	// controller for andOp_98.andOp_98_in0
	// controller for andOp_98.andOp_98_in1
	// Insensitive connections
	always @(*) begin
		andOp_98_in0 = valid ? andOp_97_out : andOp_97_out;
		andOp_98_in1 = valid ? eq_96_out : eq_96_out;
	end
	// controller for bb_0_active.bb_0_active_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_0_active_in_data = eq_0_out;
		end else begin
			bb_0_active_in_data = 0;
		end
	end
	// controller for bb_1_active.bb_1_active_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_1_active_in_data = eq_4_out;
		end else begin
			bb_1_active_in_data = 0;
		end
	end
	// controller for bb_2_active.bb_2_active_in_data
	always @(*) begin
		if (1'd1) begin 
			bb_2_active_in_data = eq_5_out;
		end else begin
			bb_2_active_in_data = 0;
		end
	end
	// controller for br_0_happened.br_0_happened_in_data
	always @(*) begin
		if (andOp_2_out) begin 
			br_0_happened_in_data = 1'd1;
		end else if (notOp_3_out) begin 
			br_0_happened_in_data = 1'd0;
		end else begin
			br_0_happened_in_data = 0;
		end
	end
	// controller for br_2_happened.br_2_happened_in_data
	always @(*) begin
		if (andOp_7_out) begin 
			br_2_happened_in_data = 1'd1;
		end else if (notOp_8_out) begin 
			br_2_happened_in_data = 1'd0;
		end else begin
			br_2_happened_in_data = 0;
		end
	end
	// controller for eq_0.eq_0_in0
	// controller for eq_0.eq_0_in1
	// Insensitive connections
	always @(*) begin
		eq_0_in0 = valid ? 32'd0 : 32'd0;
		eq_0_in1 = valid ? global_next_block : global_next_block;
	end
	// controller for eq_1.eq_1_in0
	// controller for eq_1.eq_1_in1
	// Insensitive connections
	always @(*) begin
		eq_1_in0 = valid ? 32'd1 : 32'd1;
		eq_1_in1 = valid ? global_state : global_state;
	end
	// controller for eq_102.eq_102_in0
	// controller for eq_102.eq_102_in1
	// Insensitive connections
	always @(*) begin
		eq_102_in0 = valid ? 32'd3 : 32'd3;
		eq_102_in1 = valid ? global_state : global_state;
	end
	// controller for eq_103.eq_103_in0
	// controller for eq_103.eq_103_in1
	// Insensitive connections
	always @(*) begin
		eq_103_in0 = valid ? 32'd4 : 32'd4;
		eq_103_in1 = valid ? global_state : global_state;
	end
	// controller for eq_104.eq_104_in0
	// controller for eq_104.eq_104_in1
	// Insensitive connections
	always @(*) begin
		eq_104_in0 = valid ? 32'd5 : 32'd5;
		eq_104_in1 = valid ? global_state : global_state;
	end
	// controller for eq_105.eq_105_in0
	// controller for eq_105.eq_105_in1
	// Insensitive connections
	always @(*) begin
		eq_105_in0 = valid ? 32'd6 : 32'd6;
		eq_105_in1 = valid ? global_state : global_state;
	end
	// controller for eq_106.eq_106_in0
	// controller for eq_106.eq_106_in1
	// Insensitive connections
	always @(*) begin
		eq_106_in0 = valid ? 32'd7 : 32'd7;
		eq_106_in1 = valid ? global_state : global_state;
	end
	// controller for eq_107.eq_107_in0
	// controller for eq_107.eq_107_in1
	// Insensitive connections
	always @(*) begin
		eq_107_in0 = valid ? 32'd8 : 32'd8;
		eq_107_in1 = valid ? global_state : global_state;
	end
	// controller for eq_12.eq_12_in0
	// controller for eq_12.eq_12_in1
	// Insensitive connections
	always @(*) begin
		eq_12_in0 = valid ? 32'd2 : 32'd2;
		eq_12_in1 = valid ? global_state : global_state;
	end
	// controller for eq_15.eq_15_in0
	// controller for eq_15.eq_15_in1
	// Insensitive connections
	always @(*) begin
		eq_15_in0 = valid ? 32'd7 : 32'd7;
		eq_15_in1 = valid ? global_state : global_state;
	end
	// controller for eq_17.eq_17_in0
	// controller for eq_17.eq_17_in1
	// Insensitive connections
	always @(*) begin
		eq_17_in0 = valid ? 32'd0 : 32'd0;
		eq_17_in1 = valid ? global_state : global_state;
	end
	// controller for eq_19.eq_19_in0
	// controller for eq_19.eq_19_in1
	// Insensitive connections
	always @(*) begin
		eq_19_in0 = valid ? 32'd4 : 32'd4;
		eq_19_in1 = valid ? global_state : global_state;
	end
	// controller for eq_21.eq_21_in0
	// controller for eq_21.eq_21_in1
	// Insensitive connections
	always @(*) begin
		eq_21_in0 = valid ? 32'd0 : 32'd0;
		eq_21_in1 = valid ? global_state : global_state;
	end
	// controller for eq_23.eq_23_in0
	// controller for eq_23.eq_23_in1
	// Insensitive connections
	always @(*) begin
		eq_23_in0 = valid ? 32'd4 : 32'd4;
		eq_23_in1 = valid ? global_state : global_state;
	end
	// controller for eq_25.eq_25_in0
	// controller for eq_25.eq_25_in1
	// Insensitive connections
	always @(*) begin
		eq_25_in0 = valid ? 32'd0 : 32'd0;
		eq_25_in1 = valid ? global_state : global_state;
	end
	// controller for eq_27.eq_27_in0
	// controller for eq_27.eq_27_in1
	// Insensitive connections
	always @(*) begin
		eq_27_in0 = valid ? 32'd4 : 32'd4;
		eq_27_in1 = valid ? global_state : global_state;
	end
	// controller for eq_29.eq_29_in0
	// controller for eq_29.eq_29_in1
	// Insensitive connections
	always @(*) begin
		eq_29_in0 = valid ? 32'd3 : 32'd3;
		eq_29_in1 = valid ? global_state : global_state;
	end
	// controller for eq_31.eq_31_in0
	// controller for eq_31.eq_31_in1
	// Insensitive connections
	always @(*) begin
		eq_31_in0 = valid ? 32'd4 : 32'd4;
		eq_31_in1 = valid ? global_state : global_state;
	end
	// controller for eq_33.eq_33_in0
	// controller for eq_33.eq_33_in1
	// Insensitive connections
	always @(*) begin
		eq_33_in0 = valid ? 32'd2 : 32'd2;
		eq_33_in1 = valid ? global_state : global_state;
	end
	// controller for eq_36.eq_36_in0
	// controller for eq_36.eq_36_in1
	// Insensitive connections
	always @(*) begin
		eq_36_in0 = valid ? 32'd2 : 32'd2;
		eq_36_in1 = valid ? global_state : global_state;
	end
	// controller for eq_39.eq_39_in0
	// controller for eq_39.eq_39_in1
	// Insensitive connections
	always @(*) begin
		eq_39_in0 = valid ? 32'd2 : 32'd2;
		eq_39_in1 = valid ? global_state : global_state;
	end
	// controller for eq_4.eq_4_in0
	// controller for eq_4.eq_4_in1
	// Insensitive connections
	always @(*) begin
		eq_4_in0 = valid ? 32'd1 : 32'd1;
		eq_4_in1 = valid ? global_next_block : global_next_block;
	end
	// controller for eq_42.eq_42_in0
	// controller for eq_42.eq_42_in1
	// Insensitive connections
	always @(*) begin
		eq_42_in0 = valid ? 32'd2 : 32'd2;
		eq_42_in1 = valid ? global_state : global_state;
	end
	// controller for eq_45.eq_45_in0
	// controller for eq_45.eq_45_in1
	// Insensitive connections
	always @(*) begin
		eq_45_in0 = valid ? 32'd2 : 32'd2;
		eq_45_in1 = valid ? global_state : global_state;
	end
	// controller for eq_48.eq_48_in0
	// controller for eq_48.eq_48_in1
	// Insensitive connections
	always @(*) begin
		eq_48_in0 = valid ? 32'd2 : 32'd2;
		eq_48_in1 = valid ? global_state : global_state;
	end
	// controller for eq_5.eq_5_in0
	// controller for eq_5.eq_5_in1
	// Insensitive connections
	always @(*) begin
		eq_5_in0 = valid ? 32'd2 : 32'd2;
		eq_5_in1 = valid ? global_next_block : global_next_block;
	end
	// controller for eq_51.eq_51_in0
	// controller for eq_51.eq_51_in1
	// Insensitive connections
	always @(*) begin
		eq_51_in0 = valid ? 32'd2 : 32'd2;
		eq_51_in1 = valid ? global_state : global_state;
	end
	// controller for eq_54.eq_54_in0
	// controller for eq_54.eq_54_in1
	// Insensitive connections
	always @(*) begin
		eq_54_in0 = valid ? 32'd4 : 32'd4;
		eq_54_in1 = valid ? global_state : global_state;
	end
	// controller for eq_56.eq_56_in0
	// controller for eq_56.eq_56_in1
	// Insensitive connections
	always @(*) begin
		eq_56_in0 = valid ? 32'd4 : 32'd4;
		eq_56_in1 = valid ? global_state : global_state;
	end
	// controller for eq_58.eq_58_in0
	// controller for eq_58.eq_58_in1
	// Insensitive connections
	always @(*) begin
		eq_58_in0 = valid ? 32'd7 : 32'd7;
		eq_58_in1 = valid ? global_state : global_state;
	end
	// controller for eq_6.eq_6_in0
	// controller for eq_6.eq_6_in1
	// Insensitive connections
	always @(*) begin
		eq_6_in0 = valid ? 32'd5 : 32'd5;
		eq_6_in1 = valid ? global_state : global_state;
	end
	// controller for eq_60.eq_60_in0
	// controller for eq_60.eq_60_in1
	// Insensitive connections
	always @(*) begin
		eq_60_in0 = valid ? 32'd7 : 32'd7;
		eq_60_in1 = valid ? global_state : global_state;
	end
	// controller for eq_62.eq_62_in0
	// controller for eq_62.eq_62_in1
	// Insensitive connections
	always @(*) begin
		eq_62_in0 = valid ? 32'd8 : 32'd8;
		eq_62_in1 = valid ? global_state : global_state;
	end
	// controller for eq_64.eq_64_in0
	// controller for eq_64.eq_64_in1
	// Insensitive connections
	always @(*) begin
		eq_64_in0 = valid ? 32'd8 : 32'd8;
		eq_64_in1 = valid ? global_state : global_state;
	end
	// controller for eq_66.eq_66_in0
	// controller for eq_66.eq_66_in1
	// Insensitive connections
	always @(*) begin
		eq_66_in0 = valid ? 32'd1 : 32'd1;
		eq_66_in1 = valid ? global_state : global_state;
	end
	// controller for eq_67.eq_67_in0
	// controller for eq_67.eq_67_in1
	// Insensitive connections
	always @(*) begin
		eq_67_in0 = valid ? 32'd5 : 32'd5;
		eq_67_in1 = valid ? global_state : global_state;
	end
	// controller for eq_68.eq_68_in0
	// controller for eq_68.eq_68_in1
	// Insensitive connections
	always @(*) begin
		eq_68_in0 = valid ? 32'd8 : 32'd8;
		eq_68_in1 = valid ? global_state : global_state;
	end
	// controller for eq_69.eq_69_in0
	// controller for eq_69.eq_69_in1
	// Insensitive connections
	always @(*) begin
		eq_69_in0 = valid ? 32'd0 : 32'd0;
		eq_69_in1 = valid ? global_state : global_state;
	end
	// controller for eq_71.eq_71_in0
	// controller for eq_71.eq_71_in1
	// Insensitive connections
	always @(*) begin
		eq_71_in0 = valid ? 32'd1 : 32'd1;
		eq_71_in1 = valid ? global_state : global_state;
	end
	// controller for eq_73.eq_73_in0
	// controller for eq_73.eq_73_in1
	// Insensitive connections
	always @(*) begin
		eq_73_in0 = valid ? 32'd2 : 32'd2;
		eq_73_in1 = valid ? global_state : global_state;
	end
	// controller for eq_76.eq_76_in0
	// controller for eq_76.eq_76_in1
	// Insensitive connections
	always @(*) begin
		eq_76_in0 = valid ? 32'd3 : 32'd3;
		eq_76_in1 = valid ? global_state : global_state;
	end
	// controller for eq_78.eq_78_in0
	// controller for eq_78.eq_78_in1
	// Insensitive connections
	always @(*) begin
		eq_78_in0 = valid ? 32'd4 : 32'd4;
		eq_78_in1 = valid ? global_state : global_state;
	end
	// controller for eq_80.eq_80_in0
	// controller for eq_80.eq_80_in1
	// Insensitive connections
	always @(*) begin
		eq_80_in0 = valid ? 32'd5 : 32'd5;
		eq_80_in1 = valid ? global_state : global_state;
	end
	// controller for eq_83.eq_83_in0
	// controller for eq_83.eq_83_in1
	// Insensitive connections
	always @(*) begin
		eq_83_in0 = valid ? 32'd6 : 32'd6;
		eq_83_in1 = valid ? global_state : global_state;
	end
	// controller for eq_86.eq_86_in0
	// controller for eq_86.eq_86_in1
	// Insensitive connections
	always @(*) begin
		eq_86_in0 = valid ? 32'd7 : 32'd7;
		eq_86_in1 = valid ? global_state : global_state;
	end
	// controller for eq_88.eq_88_in0
	// controller for eq_88.eq_88_in1
	// Insensitive connections
	always @(*) begin
		eq_88_in0 = valid ? 32'd8 : 32'd8;
		eq_88_in1 = valid ? global_state : global_state;
	end
	// controller for eq_90.eq_90_in0
	// controller for eq_90.eq_90_in1
	// Insensitive connections
	always @(*) begin
		eq_90_in0 = valid ? 32'd0 : 32'd0;
		eq_90_in1 = valid ? global_state : global_state;
	end
	// controller for eq_91.eq_91_in0
	// controller for eq_91.eq_91_in1
	// Insensitive connections
	always @(*) begin
		eq_91_in0 = valid ? 32'd1 : 32'd1;
		eq_91_in1 = valid ? global_state : global_state;
	end
	// controller for eq_92.eq_92_in0
	// controller for eq_92.eq_92_in1
	// Insensitive connections
	always @(*) begin
		eq_92_in0 = valid ? 32'd2 : 32'd2;
		eq_92_in1 = valid ? global_state : global_state;
	end
	// controller for eq_93.eq_93_in0
	// controller for eq_93.eq_93_in1
	// Insensitive connections
	always @(*) begin
		eq_93_in0 = valid ? 32'd2 : 32'd2;
		eq_93_in1 = valid ? global_state : global_state;
	end
	// controller for eq_96.eq_96_in0
	// controller for eq_96.eq_96_in1
	// Insensitive connections
	always @(*) begin
		eq_96_in0 = valid ? 32'd2 : 32'd2;
		eq_96_in1 = valid ? global_state : global_state;
	end
	// controller for eq_99.eq_99_in0
	// controller for eq_99.eq_99_in1
	// Insensitive connections
	always @(*) begin
		eq_99_in0 = valid ? 32'd2 : 32'd2;
		eq_99_in1 = valid ? global_state : global_state;
	end
	// controller for icmp_10.cmp_in0_icmp_10
	// controller for icmp_10.cmp_in1_icmp_10
	// Insensitive connections
	always @(*) begin
		cmp_in0_icmp_10 = valid ? add_out_add_9 : add_out_add_9;
		cmp_in1_icmp_10 = valid ? (32'd4) : (32'd4);
	end
	// controller for in.in_read_valid_reg
	always @(*) begin
		if (andOp_30_out) begin 
			in_read_valid_reg = -(1'd1);
		end else if (andOp_32_out) begin 
			in_read_valid_reg = (1'd0);
		end else begin
			in_read_valid_reg = 0;
		end
	end
	// controller for notOp_10.notOp_10_in0
	// Insensitive connections
	always @(*) begin
		notOp_10_in0 = valid ? icmp_tmp_4 : icmp_tmp_4;
	end
	// controller for notOp_3.notOp_3_in0
	// Insensitive connections
	always @(*) begin
		notOp_3_in0 = valid ? andOp_2_out : andOp_2_out;
	end
	// controller for notOp_8.notOp_8_in0
	// Insensitive connections
	always @(*) begin
		notOp_8_in0 = valid ? andOp_7_out : andOp_7_out;
	end
	// controller for out.out_in_data_reg
	// controller for out.out_write_valid_reg
	always @(*) begin
		if (andOp_61_out) begin 
			out_write_valid_reg = -(1'd1);
		end else if (andOp_63_out) begin 
			out_write_valid_reg = (1'd0);
		end else begin
			out_write_valid_reg = 0;
		end
	end
	// Insensitive connections
	always @(*) begin
		out_in_data_reg = valid ? rdata_ram_0 : rdata_ram_0;
	end
	// controller for phi_7.phi_in_phi_7
	// controller for phi_7.phi_last_block_phi_7
	// controller for phi_7.phi_s_phi_7
	// Insensitive connections
	always @(*) begin
		phi_in_phi_7 = valid ? {(32'd0), add_tmp_3} : {(32'd0), add_tmp_3};
		phi_last_block_phi_7 = valid ? last_BB_reg : last_BB_reg;
		phi_s_phi_7 = valid ? {32'd0, 32'd2} : {32'd0, 32'd2};
	end
	// controller for ram_0.raddr_ram_0_reg
	always @(*) begin
		if (andOp_14_out) begin 
			raddr_ram_0_reg = 0;
		end else if (andOp_16_out) begin 
			raddr_ram_0_reg = 0;
		end else begin
			raddr_ram_0_reg = 0;
		end
	end
	// controller for ram_0.waddr_ram_0_reg
	always @(*) begin
		if (andOp_18_out) begin 
			waddr_ram_0_reg = 0;
		end else if (andOp_20_out) begin 
			waddr_ram_0_reg = 0;
		end else begin
			waddr_ram_0_reg = 0;
		end
	end
	// controller for ram_0.wdata_ram_0_reg
	always @(*) begin
		if (andOp_22_out) begin 
			wdata_ram_0_reg = (32'd0);
		end else if (andOp_24_out) begin 
			wdata_ram_0_reg = add_out_add_14;
		end else begin
			wdata_ram_0_reg = 0;
		end
	end
	// controller for ram_0.wen_ram_0_reg
	always @(*) begin
		if (andOp_26_out) begin 
			wen_ram_0_reg = 1;
		end else if (andOp_28_out) begin 
			wen_ram_0_reg = 1;
		end else begin
			wen_ram_0_reg = 0;
		end
	end
	// controller for ret_24.valid_reg
	always @(*) begin
		if (andOp_65_out) begin 
			valid_reg = 1;
		end else begin
			valid_reg = 0;
		end
	end
	// Register controllers
	always @(posedge clk) begin
		if (rst) begin
			add_tmp_3 <= 0;
		end else begin
			if (andOp_98_out) begin
				add_tmp_3 <= add_out_add_9;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			global_next_block <= 0;
		end else begin
			if (andOp_11_out) begin
				global_next_block <= 2;
			end
			if (andOp_9_out) begin
				global_next_block <= 1;
			end
			if (br_0_happened_out_data) begin
				global_next_block <= 2;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			global_state <= 0;
		end else begin
			if (andOp_70_out) begin
				global_state <= 1;
			end
			if (andOp_72_out) begin
				global_state <= 2;
			end
			if (andOp_75_out) begin
				global_state <= 3;
			end
			if (andOp_77_out) begin
				global_state <= 4;
			end
			if (andOp_79_out) begin
				global_state <= 5;
			end
			if (andOp_81_out) begin
				global_state <= 6;
			end
			if (andOp_82_out) begin
				global_state <= 2;
			end
			if (andOp_85_out) begin
				global_state <= 7;
			end
			if (andOp_87_out) begin
				global_state <= 8;
			end
			if (andOp_89_out) begin
				global_state <= 8;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			icmp_tmp_4 <= 0;
		end else begin
			if (andOp_101_out) begin
				icmp_tmp_4 <= cmp_out_icmp_10;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			last_BB_reg <= 0;
		end else begin
			if (eq_66_out) begin
				last_BB_reg <= 0;
			end
			if (eq_67_out) begin
				last_BB_reg <= 2;
			end
			if (eq_68_out) begin
				last_BB_reg <= 1;
			end
		end
	end

	always @(posedge clk) begin
		if (rst) begin
			load_tmp_2 <= 0;
		end else begin
			if (andOp_95_out) begin
				load_tmp_2 <= rdata_ram_0;
			end
		end
	end

endmodule

