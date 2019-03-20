class ram {

  input_32 wdata;
  input_5 waddr;
  input_1 wen;

  input_5 raddr;
  output_32 rdata;  

  void write(bit_5 addr, bit_32 data) {
  set_wen:
    set_port(wen, 1);
  set_wdata:
    set_port(wdata, data);
  set_waddr:
    set_port(waddr, addr);

  ret: return;

    add_constraint(start(set_wen) == start(set_wdata));
    add_constraint(start(set_wen) == start(set_waddr));
    add_constraint(start(set_wen) + 3 == start(ret));
  }

  bit_32 read(bit_5 addr) {
  set_addr:
    set_port(raddr, addr);

    bit_32 res;

  read_data:
    res = read_port(rdata);

    add_constraint(start(read_data) + 1 == end(set_addr));
  }

};

void filter_ram(ram& mem) {
  bit_32 a;
  a = mem->read(0) + mem->read(1);
  mem->write(10, a);
}
