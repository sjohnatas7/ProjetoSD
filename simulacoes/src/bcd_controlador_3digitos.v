/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* dynports =  1  *)
(* src = "src/counters/bcd_contador.v:8" *)
module \$paramod\bcd_contador\width=4\max_value=9 (cnt_max, q, enb, rst_s, ck);
  (* src = "src/counters/bcd_contador.v:17" *)
  wire _00_;
  (* src = "src/counters/bcd_contador.v:17" *)
  wire [3:0] _01_;
  (* src = "src/counters/bcd_contador.v:17" *)
  wire [3:0] _02_;
  (* src = "src/counters/bcd_contador.v:17" *)
  wire [3:0] _03_;
  (* src = "src/counters/bcd_contador.v:28" *)
  (* unused_bits = "4" *)
  wire [31:0] _04_;
  wire [1:0] _05_;
  wire [1:0] _06_;
  wire [3:0] _07_;
  wire [3:0] _08_;
  wire _09_;
  wire _10_;
  (* src = "src/counters/bcd_contador.v:28|<techmap.v>:260|<techmap.v>:203" *)
  (* unused_bits = "3" *)
  wire [31:0] _11_;
  (* src = "src/counters/bcd_contador.v:9" *)
  input ck;
  (* init = 1'h0 *)
  (* src = "src/counters/bcd_contador.v:9" *)
  output cnt_max;
  reg cnt_max = 1'h0;
  (* src = "src/counters/bcd_contador.v:9" *)
  input enb;
  (* init = 4'h0 *)
  (* src = "src/counters/bcd_contador.v:9" *)
  output [3:0] q;
  reg [3:0] q = 4'h0;
  (* src = "src/counters/bcd_contador.v:9" *)
  input rst_s;
  assign _05_[0] = _04_[0] |(* src = "src/counters/bcd_contador.v:25" *)  q[1];
  assign _05_[1] = q[2] |(* src = "src/counters/bcd_contador.v:25" *)  _07_[3];
  assign _09_ = _05_[0] |(* src = "src/counters/bcd_contador.v:25" *)  _05_[1];
  assign _06_[0] = _08_[0] |(* src = "src/counters/bcd_contador.v:32" *)  _01_[1];
  assign _06_[1] = _01_[2] |(* src = "src/counters/bcd_contador.v:32" *)  _08_[3];
  assign _10_ = _06_[0] |(* src = "src/counters/bcd_contador.v:32" *)  _06_[1];
  assign _00_ = ~(* src = "src/counters/bcd_contador.v:32" *) _10_;
  assign _03_[0] = _09_ ? (* src = "src/counters/bcd_contador.v:25" *) _04_[0] : 1'h0;
  assign _03_[1] = _09_ ? (* src = "src/counters/bcd_contador.v:25" *) _04_[1] : 1'h0;
  assign _03_[2] = _09_ ? (* src = "src/counters/bcd_contador.v:25" *) _04_[2] : 1'h0;
  assign _03_[3] = _09_ ? (* src = "src/counters/bcd_contador.v:25" *) _04_[3] : 1'h0;
  assign _02_[0] = enb ? (* src = "src/counters/bcd_contador.v:23" *) _03_[0] : q[0];
  assign _02_[1] = enb ? (* src = "src/counters/bcd_contador.v:23" *) _03_[1] : q[1];
  assign _02_[2] = enb ? (* src = "src/counters/bcd_contador.v:23" *) _03_[2] : q[2];
  assign _02_[3] = enb ? (* src = "src/counters/bcd_contador.v:23" *) _03_[3] : q[3];
  assign _01_[0] = rst_s ? (* src = "src/counters/bcd_contador.v:19" *) 1'h0 : _02_[0];
  assign _01_[1] = rst_s ? (* src = "src/counters/bcd_contador.v:19" *) 1'h0 : _02_[1];
  assign _01_[2] = rst_s ? (* src = "src/counters/bcd_contador.v:19" *) 1'h0 : _02_[2];
  assign _01_[3] = rst_s ? (* src = "src/counters/bcd_contador.v:19" *) 1'h0 : _02_[3];
  (* src = "src/counters/bcd_contador.v:17" *)
  always @(negedge ck)
      cnt_max <= _00_;
  (* src = "src/counters/bcd_contador.v:17" *)
  always @(negedge ck)
      q[0] <= _01_[0];
  (* src = "src/counters/bcd_contador.v:17" *)
  always @(negedge ck)
      q[1] <= _01_[1];
  (* src = "src/counters/bcd_contador.v:17" *)
  always @(negedge ck)
      q[2] <= _01_[2];
  (* src = "src/counters/bcd_contador.v:17" *)
  always @(negedge ck)
      q[3] <= _01_[3];
  assign _07_[3] = q[3] ^(* src = "src/counters/bcd_contador.v:25" *)  1'h1;
  assign _08_[0] = _01_[0] ^(* src = "src/counters/bcd_contador.v:32" *)  1'h1;
  assign _08_[3] = _01_[3] ^(* src = "src/counters/bcd_contador.v:32" *)  1'h1;
  assign _04_[1] = q[1] ^(* src = "src/counters/bcd_contador.v:28|<techmap.v>:263" *)  q[0];
  assign _04_[2] = q[2] ^(* src = "src/counters/bcd_contador.v:28|<techmap.v>:263" *)  _11_[1];
  assign _04_[3] = q[3] ^(* src = "src/counters/bcd_contador.v:28|<techmap.v>:263" *)  _11_[2];
  assign _04_[0] = q[0] ^(* src = "src/counters/bcd_contador.v:28|<techmap.v>:262" *)  1'h1;
  assign _11_[1] = q[1] &(* src = "src/counters/bcd_contador.v:28|<techmap.v>:260|<techmap.v>:221" *)  q[0];
  assign _11_[2] = q[2] &(* src = "src/counters/bcd_contador.v:28|<techmap.v>:260|<techmap.v>:229" *)  _11_[1];
  assign _04_[31:5] = 27'h0000000;
  assign _07_[2:0] = { q[2:1], _04_[0] };
  assign _08_[2:1] = _01_[2:1];
  assign { _11_[31:3], _11_[0] } = { 28'h0000000, _04_[4], q[0] };
endmodule

(* src = "src/bcd_bloco.v:11" *)
module bcd_bloco(ck, rst_s, enb, ld, sgm, cnt_max);
  (* src = "src/bcd_bloco.v:11" *)
  input ck;
  (* src = "src/bcd_bloco.v:16" *)
  output cnt_max;
  (* src = "src/bcd_bloco.v:13" *)
  input enb;
  (* src = "src/bcd_bloco.v:14" *)
  input ld;
  (* src = "src/bcd_bloco.v:18" *)
  wire [3:0] qs;
  (* src = "src/bcd_bloco.v:17" *)
  wire [3:0] qx;
  (* src = "src/bcd_bloco.v:12" *)
  input rst_s;
  (* src = "src/bcd_bloco.v:15" *)
  output [6:0] sgm;
  (* src = "src/bcd_bloco.v:19" *)
  \$paramod\bcd_contador\width=4\max_value=9  contador (
    .ck(ck),
    .cnt_max(cnt_max),
    .enb(enb),
    .q(qx),
    .rst_s(rst_s)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "src/bcd_bloco.v:27" *)
  bcd_sgm conversor (
    .bcd(qs),
    .sgm(sgm)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "src/bcd_bloco.v:26" *)
  bcd_registrador registrador (
    .ck(ck),
    .d(qx),
    .ld(ld),
    .q(qs)
  );
endmodule

(* top =  1  *)
(* src = "src/bcd_controlador_3digitos.v:9" *)
module bcd_controlador_3digitos(ck, enb_0, rst_s, ld, sgm0, sgm1, sgm2, enb_3);
  (* src = "src/bcd_controlador_3digitos.v:18" *)
  wire aux_1;
  (* src = "src/bcd_controlador_3digitos.v:25" *)
  wire aux_2;
  (* src = "src/bcd_controlador_3digitos.v:9" *)
  input ck;
  (* src = "src/bcd_controlador_3digitos.v:10" *)
  input enb_0;
  (* src = "src/bcd_controlador_3digitos.v:18" *)
  wire enb_1;
  (* src = "src/bcd_controlador_3digitos.v:25" *)
  wire enb_2;
  (* src = "src/bcd_controlador_3digitos.v:16" *)
  output enb_3;
  (* src = "src/bcd_controlador_3digitos.v:12" *)
  input ld;
  (* src = "src/bcd_controlador_3digitos.v:11" *)
  input rst_s;
  (* src = "src/bcd_controlador_3digitos.v:13" *)
  output [6:0] sgm0;
  (* src = "src/bcd_controlador_3digitos.v:14" *)
  output [6:0] sgm1;
  (* src = "src/bcd_controlador_3digitos.v:15" *)
  output [6:0] sgm2;
  assign enb_2 = enb_1 &(* src = "src/bcd_controlador_3digitos.v:26" *)  aux_1;
  assign enb_3 = enb_2 &(* src = "src/bcd_controlador_3digitos.v:29" *)  aux_2;
  (* module_not_derived = 32'd1 *)
  (* src = "src/bcd_controlador_3digitos.v:19" *)
  bcd_bloco bloco1 (
    .ck(ck),
    .cnt_max(enb_1),
    .enb(enb_0),
    .ld(ld),
    .rst_s(rst_s),
    .sgm(sgm0)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "src/bcd_controlador_3digitos.v:22" *)
  bcd_bloco bloco2 (
    .ck(ck),
    .cnt_max(aux_1),
    .enb(enb_1),
    .ld(ld),
    .rst_s(rst_s),
    .sgm(sgm1)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "src/bcd_controlador_3digitos.v:27" *)
  bcd_bloco bloco3 (
    .ck(ck),
    .cnt_max(aux_2),
    .enb(enb_2),
    .ld(ld),
    .rst_s(rst_s),
    .sgm(sgm2)
  );
endmodule

(* src = "src/bcd_registrador.v:9" *)
module bcd_registrador(ck, ld, d, q);
  (* src = "src/bcd_registrador.v:20" *)
  wire [3:0] _0_;
  (* src = "src/bcd_registrador.v:10" *)
  input ck;
  (* src = "src/bcd_registrador.v:12" *)
  input [3:0] d;
  (* src = "src/bcd_registrador.v:11" *)
  input ld;
  (* init = 4'h0 *)
  (* src = "src/bcd_registrador.v:13" *)
  output [3:0] q;
  reg [3:0] q = 4'h0;
  assign _0_[0] = ld ? (* src = "src/bcd_registrador.v:22" *) d[0] : q[0];
  assign _0_[1] = ld ? (* src = "src/bcd_registrador.v:22" *) d[1] : q[1];
  assign _0_[2] = ld ? (* src = "src/bcd_registrador.v:22" *) d[2] : q[2];
  assign _0_[3] = ld ? (* src = "src/bcd_registrador.v:22" *) d[3] : q[3];
  (* src = "src/bcd_registrador.v:20" *)
  always @(negedge ck)
      q[0] <= _0_[0];
  (* src = "src/bcd_registrador.v:20" *)
  always @(negedge ck)
      q[1] <= _0_[1];
  (* src = "src/bcd_registrador.v:20" *)
  always @(negedge ck)
      q[2] <= _0_[2];
  (* src = "src/bcd_registrador.v:20" *)
  always @(negedge ck)
      q[3] <= _0_[3];
endmodule

(* src = "src/bcd_sgm.v:9" *)
module bcd_sgm(bcd, sgm);
  wire [1:0] _000_;
  wire [1:0] _001_;
  wire [1:0] _002_;
  wire [1:0] _003_;
  wire [1:0] _004_;
  wire [4:0] _005_;
  wire [1:0] _006_;
  wire _007_;
  wire [4:0] _008_;
  wire [1:0] _009_;
  wire _010_;
  wire [4:0] _011_;
  wire [1:0] _012_;
  wire _013_;
  wire [4:0] _014_;
  wire [1:0] _015_;
  wire _016_;
  wire _017_;
  wire [4:0] _018_;
  wire [1:0] _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire [3:0] _024_;
  wire [3:0] _025_;
  wire [3:0] _026_;
  wire [3:0] _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  (* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:432" *)
  wire [69:0] _037_;
  (* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:428" *)
  wire [6:0] _038_;
  (* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:445" *)
  wire _039_;
  (* src = "src/bcd_sgm.v:10" *)
  input [3:0] bcd;
  (* src = "src/bcd_sgm.v:11" *)
  output [6:0] sgm;
  assign _028_ = _000_[0] |(* src = "src/bcd_sgm.v:18|src/bcd_sgm.v:15" *)  _000_[1];
  assign _029_ = _001_[0] |(* src = "src/bcd_sgm.v:19|src/bcd_sgm.v:15" *)  _000_[1];
  assign _030_ = _002_[0] |(* src = "src/bcd_sgm.v:21|src/bcd_sgm.v:15" *)  _002_[1];
  assign _000_[0] = bcd[0] |(* src = "src/bcd_sgm.v:22|src/bcd_sgm.v:15" *)  _024_[1];
  assign _031_ = _000_[0] |(* src = "src/bcd_sgm.v:22|src/bcd_sgm.v:15" *)  _002_[1];
  assign _001_[0] = _025_[0] |(* src = "src/bcd_sgm.v:23|src/bcd_sgm.v:15" *)  _024_[1];
  assign _032_ = _001_[0] |(* src = "src/bcd_sgm.v:23|src/bcd_sgm.v:15" *)  _002_[1];
  assign _002_[1] = _026_[2] |(* src = "src/bcd_sgm.v:20|src/bcd_sgm.v:15" *)  bcd[3];
  assign _033_ = _003_[0] |(* src = "src/bcd_sgm.v:20|src/bcd_sgm.v:15" *)  _002_[1];
  assign _004_[1] = bcd[2] |(* src = "src/bcd_sgm.v:24|src/bcd_sgm.v:15" *)  _027_[3];
  assign _034_ = _003_[0] |(* src = "src/bcd_sgm.v:24|src/bcd_sgm.v:15" *)  _004_[1];
  assign _035_ = _002_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15" *)  _004_[1];
  assign _002_[0] = _025_[0] |(* src = "src/bcd_sgm.v:17|src/bcd_sgm.v:15" *)  bcd[1];
  assign _036_ = _002_[0] |(* src = "src/bcd_sgm.v:17|src/bcd_sgm.v:15" *)  _000_[1];
  assign _005_[2] = _008_[2] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _011_[2];
  assign _006_[1] = _005_[2] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _005_[3];
  assign _007_ = _006_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _006_[1];
  assign _008_[1] = _011_[1] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _005_[1];
  assign _009_[0] = _005_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _008_[1];
  assign _010_ = _009_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _009_[1];
  assign _038_[6] = _010_ |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _008_[4];
  assign _005_[0] = _037_[6] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _018_[0];
  assign _012_[0] = _005_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _011_[1];
  assign _012_[1] = _011_[2] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _005_[3];
  assign _013_ = _012_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _012_[1];
  assign _038_[5] = _013_ |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _011_[4];
  assign _011_[4] = _037_[61] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _008_[4];
  assign _015_[1] = _005_[2] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _014_[3];
  assign _016_ = _009_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _015_[1];
  assign _038_[4] = _016_ |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _011_[4];
  assign _006_[0] = _005_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _005_[1];
  assign _009_[1] = _008_[2] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _005_[3];
  assign _017_ = _006_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _009_[1];
  assign _038_[3] = _017_ |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _008_[4];
  assign _019_[0] = _018_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _005_[1];
  assign _020_ = _019_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _018_[3];
  assign _038_[2] = _020_ |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _008_[4];
  assign _021_ = _006_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _005_[2];
  assign _038_[1] = _021_ |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:441" *)  _008_[4];
  assign _005_[3] = _014_[3] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:445" *)  _018_[3];
  assign _022_ = _009_[0] |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:445" *)  _006_[1];
  assign _039_ = _022_ |(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:445" *)  _011_[4];
  assign _003_[0] = bcd[0] |(* src = "src/bcd_sgm.v:16|src/bcd_sgm.v:15" *)  bcd[1];
  assign _000_[1] = bcd[2] |(* src = "src/bcd_sgm.v:16|src/bcd_sgm.v:15" *)  bcd[3];
  assign _023_ = _003_[0] |(* src = "src/bcd_sgm.v:16|src/bcd_sgm.v:15" *)  _000_[1];
  assign _018_[3] = ~(* src = "src/bcd_sgm.v:18|src/bcd_sgm.v:15" *) _028_;
  assign _014_[3] = ~(* src = "src/bcd_sgm.v:19|src/bcd_sgm.v:15" *) _029_;
  assign _008_[2] = ~(* src = "src/bcd_sgm.v:21|src/bcd_sgm.v:15" *) _030_;
  assign _005_[1] = ~(* src = "src/bcd_sgm.v:22|src/bcd_sgm.v:15" *) _031_;
  assign _011_[1] = ~(* src = "src/bcd_sgm.v:23|src/bcd_sgm.v:15" *) _032_;
  assign _011_[2] = ~(* src = "src/bcd_sgm.v:20|src/bcd_sgm.v:15" *) _033_;
  assign _018_[0] = ~(* src = "src/bcd_sgm.v:24|src/bcd_sgm.v:15" *) _034_;
  assign _037_[6] = ~(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15" *) _035_;
  assign _037_[61] = ~(* src = "src/bcd_sgm.v:17|src/bcd_sgm.v:15" *) _036_;
  assign _008_[4] = ~(* src = "src/bcd_sgm.v:16|src/bcd_sgm.v:15" *) _023_;
  assign sgm[0] = _039_ ? (* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:445" *) _007_ : 1'h0;
  assign sgm[1] = _039_ ? (* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:445" *) _038_[1] : 1'h0;
  assign sgm[2] = _039_ ? (* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:445" *) _038_[2] : 1'h0;
  assign sgm[3] = _039_ ? (* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:445" *) _038_[3] : 1'h0;
  assign sgm[4] = _039_ ? (* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:445" *) _038_[4] : 1'h0;
  assign sgm[5] = _039_ ? (* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:445" *) _038_[5] : 1'h0;
  assign sgm[6] = _039_ ? (* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15|<techmap.v>:445" *) _038_[6] : 1'h0;
  assign _024_[1] = bcd[1] ^(* src = "src/bcd_sgm.v:23|src/bcd_sgm.v:15" *)  1'h1;
  assign _026_[2] = bcd[2] ^(* src = "src/bcd_sgm.v:20|src/bcd_sgm.v:15" *)  1'h1;
  assign _027_[3] = bcd[3] ^(* src = "src/bcd_sgm.v:25|src/bcd_sgm.v:15" *)  1'h1;
  assign _025_[0] = bcd[0] ^(* src = "src/bcd_sgm.v:17|src/bcd_sgm.v:15" *)  1'h1;
  assign _001_[1] = _000_[1];
  assign _003_[1] = _002_[1];
  assign _004_[0] = _003_[0];
  assign _005_[4] = 1'h0;
  assign { _008_[3], _008_[0] } = { _005_[3], _005_[0] };
  assign { _011_[3], _011_[0] } = { _005_[3], _005_[0] };
  assign { _014_[4], _014_[2:0] } = { _011_[4], _005_[2], _008_[1], _005_[0] };
  assign _015_[0] = _009_[0];
  assign { _018_[4], _018_[2:1] } = { _008_[4], 1'h0, _005_[1] };
  assign _019_[1] = _018_[3];
  assign { _024_[3:2], _024_[0] } = { bcd[3:2], bcd[0] };
  assign _025_[3:1] = { bcd[3:2], _024_[1] };
  assign { _026_[3], _026_[1:0] } = { bcd[3], bcd[1], _025_[0] };
  assign _027_[2:0] = bcd[2:0];
  assign { _037_[69:62], _037_[60:7], _037_[5:0] } = { _008_[4], _008_[4], _008_[4], _008_[4], _008_[4], _008_[4], 2'h0, _037_[61], 4'h0, _018_[3], _018_[3], 1'h0, _018_[3], _018_[3], 1'h0, _018_[3], _014_[3], _014_[3], _014_[3], _014_[3], 2'h0, _014_[3], 1'h0, _011_[2], _011_[2], 2'h0, _011_[2], _011_[2], _008_[2], 1'h0, _008_[2], _008_[2], 1'h0, _008_[2], _008_[2], _005_[1], 1'h0, _005_[1], _005_[1], _005_[1], _005_[1], _005_[1], _011_[1], _011_[1], _011_[1], 4'h0, _018_[0], _018_[0], _018_[0], _018_[0], _018_[0], _018_[0], _018_[0], _037_[6], _037_[6], _037_[6], 1'h0, _037_[6], _037_[6] };
  assign _038_[0] = _007_;
endmodule