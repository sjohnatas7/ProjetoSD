/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "src/maquina_de_estados.v:1" *)
module maquina_de_estados(ck, inicio, Vint_z, enb_3, enb_0, rst_s, ch_vm, ch_ref, ch_zr, ld);
  (* src = "src/maquina_de_estados.v:48" *)
  wire _000_;
  (* src = "src/maquina_de_estados.v:48" *)
  wire _001_;
  (* src = "src/maquina_de_estados.v:48" *)
  wire _002_;
  (* src = "src/maquina_de_estados.v:48" *)
  wire _003_;
  (* src = "src/maquina_de_estados.v:48" *)
  wire _004_;
  (* src = "src/maquina_de_estados.v:25" *)
  wire [2:0] _005_;
  (* src = "src/maquina_de_estados.v:48" *)
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire [1:0] _012_;
  wire _013_;
  wire [1:0] _014_;
  wire _015_;
  wire [1:0] _016_;
  wire _017_;
  wire [1:0] _018_;
  wire _019_;
  wire _020_;
  wire [2:0] _021_;
  wire [2:0] _022_;
  wire [2:0] _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  (* src = "src/maquina_de_estados.v:58|src/maquina_de_estados.v:49|<techmap.v>:432" *)
  wire [1:0] _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  (* src = "src/maquina_de_estados.v:68|src/maquina_de_estados.v:49|<techmap.v>:432" *)
  wire [1:0] _032_;
  (* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:432" *)
  wire [14:0] _033_;
  (* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:428" *)
  wire [2:0] _034_;
  wire [2:0] _035_;
  wire [2:0] _036_;
  wire [2:0] _037_;
  (* src = "src/maquina_de_estados.v:58|src/maquina_de_estados.v:49|<techmap.v>:445" *)
  wire _038_;
  (* src = "src/maquina_de_estados.v:68|src/maquina_de_estados.v:49|<techmap.v>:445" *)
  wire _039_;
  (* src = "src/maquina_de_estados.v:55|src/maquina_de_estados.v:49|<techmap.v>:445" *)
  wire _040_;
  (* src = "src/maquina_de_estados.v:64|src/maquina_de_estados.v:49|<techmap.v>:445" *)
  wire _041_;
  (* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:445" *)
  wire _042_;
  (* src = "src/maquina_de_estados.v:68|src/maquina_de_estados.v:49|<techmap.v>:445" *)
  wire _043_;
  (* src = "src/maquina_de_estados.v:3" *)
  input Vint_z;
  (* src = "src/maquina_de_estados.v:8" *)
  output ch_ref;
  reg ch_ref;
  (* src = "src/maquina_de_estados.v:7" *)
  output ch_vm;
  reg ch_vm;
  (* src = "src/maquina_de_estados.v:9" *)
  output ch_zr;
  reg ch_zr;
  (* src = "src/maquina_de_estados.v:1" *)
  input ck;
  (* src = "src/maquina_de_estados.v:5" *)
  output enb_0;
  reg enb_0;
  (* src = "src/maquina_de_estados.v:4" *)
  input enb_3;
  (* src = "src/maquina_de_estados.v:2" *)
  input inicio;
  (* src = "src/maquina_de_estados.v:10" *)
  output ld;
  reg ld;
  (* init = 3'h0 *)
  (* src = "src/maquina_de_estados.v:14" *)
  reg [2:0] next_state = 3'h0;
  (* src = "src/maquina_de_estados.v:6" *)
  output rst_s;
  reg rst_s;
  (* init = 3'h0 *)
  (* src = "src/maquina_de_estados.v:14" *)
  reg [2:0] state = 3'h0;
  assign _007_ = _030_ | _028_[1];
  assign _008_ = state[0] |(* src = "src/maquina_de_estados.v:58|src/maquina_de_estados.v:49" *)  _021_[1];
  assign _024_ = _008_ |(* src = "src/maquina_de_estados.v:58|src/maquina_de_estados.v:49" *)  state[2];
  assign _009_ = state[0] |(* src = "src/maquina_de_estados.v:68|src/maquina_de_estados.v:49" *)  state[1];
  assign _025_ = _009_ |(* src = "src/maquina_de_estados.v:68|src/maquina_de_estados.v:49" *)  _022_[2];
  assign _010_ = _023_[0] |(* src = "src/maquina_de_estados.v:55|src/maquina_de_estados.v:49" *)  state[1];
  assign _026_ = _010_ |(* src = "src/maquina_de_estados.v:55|src/maquina_de_estados.v:49" *)  state[2];
  assign _011_ = _023_[0] |(* src = "src/maquina_de_estados.v:64|src/maquina_de_estados.v:49" *)  _021_[1];
  assign _027_ = _011_ |(* src = "src/maquina_de_estados.v:64|src/maquina_de_estados.v:49" *)  state[2];
  assign _043_ = _007_ |(* src = "src/maquina_de_estados.v:68|src/maquina_de_estados.v:49|<techmap.v>:445" *)  _029_;
  assign _038_ = _029_ |(* src = "src/maquina_de_estados.v:58|src/maquina_de_estados.v:49|<techmap.v>:445" *)  _028_[1];
  assign _039_ = _030_ |(* src = "src/maquina_de_estados.v:68|src/maquina_de_estados.v:49|<techmap.v>:445" *)  _029_;
  assign _040_ = _031_ |(* src = "src/maquina_de_estados.v:55|src/maquina_de_estados.v:49|<techmap.v>:445" *)  _028_[1];
  assign _041_ = _032_[1] |(* src = "src/maquina_de_estados.v:64|src/maquina_de_estados.v:49|<techmap.v>:445" *)  _029_;
  assign _012_[1] = _033_[6] |(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:441" *)  _033_[9];
  assign _013_ = _012_[0] |(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:441" *)  _012_[1];
  assign _034_[0] = _013_ |(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:441" *)  _028_[1];
  assign _014_[1] = _033_[8] |(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:441" *)  _033_[11];
  assign _015_ = _014_[0] |(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:441" *)  _014_[1];
  assign _016_[1] = _033_[7] |(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:441" *)  _033_[10];
  assign _017_ = _016_[0] |(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:441" *)  _016_[1];
  assign _018_[0] = _030_ |(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:445" *)  _032_[1];
  assign _018_[1] = _029_ |(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:445" *)  _031_;
  assign _019_ = _018_[0] |(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:445" *)  _018_[1];
  assign _042_ = _019_ |(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:445" *)  _028_[1];
  assign _020_ = _009_ |(* src = "src/maquina_de_estados.v:50|src/maquina_de_estados.v:49" *)  state[2];
  assign _029_ = ~(* src = "src/maquina_de_estados.v:58|src/maquina_de_estados.v:49" *) _024_;
  assign _028_[1] = ~(* src = "src/maquina_de_estados.v:50|src/maquina_de_estados.v:49" *) _020_;
  assign _030_ = ~(* src = "src/maquina_de_estados.v:68|src/maquina_de_estados.v:49" *) _025_;
  assign _031_ = ~(* src = "src/maquina_de_estados.v:55|src/maquina_de_estados.v:49" *) _026_;
  assign _032_[1] = ~(* src = "src/maquina_de_estados.v:64|src/maquina_de_estados.v:49" *) _027_;
  assign _036_[0] = enb_3 ? (* src = "src/maquina_de_estados.v:35" *) 1'h1 : next_state[0];
  assign _036_[1] = enb_3 ? (* src = "src/maquina_de_estados.v:35" *) 1'h1 : next_state[1];
  assign _036_[2] = enb_3 ? (* src = "src/maquina_de_estados.v:35" *) 1'h0 : next_state[2];
  assign _035_[0] = Vint_z ? (* src = "src/maquina_de_estados.v:39" *) 1'h0 : next_state[0];
  assign _035_[1] = Vint_z ? (* src = "src/maquina_de_estados.v:39" *) 1'h0 : next_state[1];
  assign _035_[2] = Vint_z ? (* src = "src/maquina_de_estados.v:39" *) 1'h1 : next_state[2];
  assign _037_[0] = inicio ? (* src = "src/maquina_de_estados.v:31" *) 1'h0 : next_state[0];
  assign _037_[1] = inicio ? (* src = "src/maquina_de_estados.v:31" *) 1'h1 : next_state[1];
  assign _037_[2] = inicio ? (* src = "src/maquina_de_estados.v:31" *) 1'h0 : next_state[2];
  assign _004_ = _043_ ? (* src = "src/maquina_de_estados.v:68|src/maquina_de_estados.v:49|<techmap.v>:445" *) _029_ : ld;
  assign _006_ = _038_ ? (* src = "src/maquina_de_estados.v:58|src/maquina_de_estados.v:49|<techmap.v>:445" *) _028_[1] : rst_s;
  assign _003_ = _039_ ? (* src = "src/maquina_de_estados.v:68|src/maquina_de_estados.v:49|<techmap.v>:445" *) _029_ : enb_0;
  assign _002_ = _040_ ? (* src = "src/maquina_de_estados.v:55|src/maquina_de_estados.v:49|<techmap.v>:445" *) _028_[1] : ch_zr;
  assign _000_ = _018_[0] ? (* src = "src/maquina_de_estados.v:68|src/maquina_de_estados.v:49|<techmap.v>:445" *) _032_[1] : ch_ref;
  assign _001_ = _041_ ? (* src = "src/maquina_de_estados.v:64|src/maquina_de_estados.v:49|<techmap.v>:445" *) _029_ : ch_vm;
  assign _005_[0] = _042_ ? (* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:445" *) _034_[0] : next_state[0];
  assign _005_[1] = _042_ ? (* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:445" *) _017_ : next_state[1];
  assign _005_[2] = _042_ ? (* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:445" *) _015_ : next_state[2];
  (* src = "src/maquina_de_estados.v:48" *)
  always @(posedge ck)
      ch_vm <= _001_;
  (* src = "src/maquina_de_estados.v:48" *)
  always @(posedge ck)
      ch_ref <= _000_;
  (* src = "src/maquina_de_estados.v:48" *)
  always @(posedge ck)
      ch_zr <= _002_;
  (* src = "src/maquina_de_estados.v:48" *)
  always @(posedge ck)
      enb_0 <= _003_;
  (* src = "src/maquina_de_estados.v:48" *)
  always @(posedge ck)
      rst_s <= _006_;
  (* src = "src/maquina_de_estados.v:48" *)
  always @(posedge ck)
      ld <= _004_;
  (* src = "src/maquina_de_estados.v:25" *)
  always @(negedge ck)
      next_state[0] <= _005_[0];
  (* src = "src/maquina_de_estados.v:25" *)
  always @(negedge ck)
      next_state[1] <= _005_[1];
  (* src = "src/maquina_de_estados.v:25" *)
  always @(negedge ck)
      next_state[2] <= _005_[2];
  (* src = "src/maquina_de_estados.v:21" *)
  always @(posedge ck)
      state[0] <= next_state[0];
  (* src = "src/maquina_de_estados.v:21" *)
  always @(posedge ck)
      state[1] <= next_state[1];
  (* src = "src/maquina_de_estados.v:21" *)
  always @(posedge ck)
      state[2] <= next_state[2];
  assign _022_[2] = state[2] ^(* src = "src/maquina_de_estados.v:68|src/maquina_de_estados.v:49" *)  1'h1;
  assign _023_[0] = state[0] ^(* src = "src/maquina_de_estados.v:64|src/maquina_de_estados.v:49" *)  1'h1;
  assign _021_[1] = state[1] ^(* src = "src/maquina_de_estados.v:64|src/maquina_de_estados.v:49" *)  1'h1;
  assign _033_[9] = _037_[0] &(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:434" *)  _031_;
  assign _033_[10] = _037_[1] &(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:434" *)  _031_;
  assign _033_[11] = _037_[2] &(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:434" *)  _031_;
  assign _033_[6] = _036_[0] &(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:434" *)  _029_;
  assign _033_[7] = _036_[1] &(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:434" *)  _029_;
  assign _033_[8] = _036_[2] &(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:434" *)  _029_;
  assign _012_[0] = _035_[0] &(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:434" *)  _032_[1];
  assign _016_[0] = _035_[1] &(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:434" *)  _032_[1];
  assign _014_[0] = _035_[2] &(* src = "src/maquina_de_estados.v:42|src/maquina_de_estados.v:26|<techmap.v>:434" *)  _032_[1];
  assign _028_[0] = 1'h0;
  assign { _033_[14:12], _033_[5:0] } = { 2'h0, _028_[1], _014_[0], _016_[0], _012_[0], 3'h0 };
  assign _034_[2:1] = { _015_, _017_ };
  assign _023_[2:1] = state[2:1];
  assign { _021_[2], _021_[0] } = { state[2], state[0] };
  assign _022_[1:0] = state[1:0];
  assign _032_[0] = 1'h0;
endmodule
