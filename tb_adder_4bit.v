module tb_adder_4bit;
    reg  [3:0] a, b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    adder_4bit uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_adder_4bit);

        a = 4'd3;  b = 4'd5;  cin = 0; #10;
        a = 4'd7;  b = 4'd7;  cin = 0; #10;
        a = 4'd15; b = 4'd1;  cin = 0; #10;
        a = 4'd0;  b = 4'd0;  cin = 1; #10;
        a = 4'd9;  b = 4'd6;  cin = 0; #10;

        $display("All tests done!");
        $finish;
    end

    initial begin
        $monitor("Time=%0t | a=%d b=%d cin=%b => sum=%d cout=%b",
                  $time, a, b, cin, sum, cout);
    end
endmodule
