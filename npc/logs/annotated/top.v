//      // verilator_coverage annotation
        module top(
 000015   input a,
 000015   input b,
 000018   output f
        );
          assign f = a ^ b;
        
%000001    initial begin
%000000       if ($test$plusargs("trace") != 0) begin
%000001          $display("[%0t] Tracing to logs/vlt_dump.vcd...\n", $time);
%000001          $dumpfile("logs/vlt_dump.vcd");
%000001          $dumpvars();
              end
%000001       $display("[%0t] Model running...\n", $time);
           end
        endmodule
        
