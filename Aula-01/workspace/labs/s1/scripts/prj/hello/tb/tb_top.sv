module tb_calc4();
  logic [7:0] a;
  logic [7:0] b;
  logic [1:0] op;
  logic [7:0] result;
  
  //variavel
  int errors = 0;

  // dut
  calc4 dut (
    .a(a),
    .b(b),
    .op(op),
    .result(result)
  );

  // Task
  task check(
    input [7:0] i_a, 
    input [7:0] i_b, 
    input [1:0] i_op, 
    input [7:0] expected,
    input string msg
  );
    begin
      a = i_a;
      b = i_b;
      op = i_op;
      
      #5;

      if (result === expected) begin
        $display("[OK!] %s | A:%d B:%d OP:%b | Resultado:%d", msg, a, b, op, result);
      end 
      else begin
        $display("[Erro!] %s | A:%d B:%d OP:%b | Resultado:%d (Esperado:%d)", msg, a, b, op, result, expected);
        errors++;
      end
    end
  endtask
  
  initial begin
    $display ("--- Iniciando verificação ... ---");
    $display("----------------------------------");

    // Case 01 - testes simples
    
    check(8'd15,  8'd10, 2'b00, 8'd25,  "Soma       ");
    check(8'd50,  8'd20, 2'b01, 8'd30,  "Subtracao  ");
    check(8'd10,  8'd8,  2'b10, 8'd80,  "Multiplic. ");
    check(8'd100, 8'd4,  2'b11, 8'd25,  "Divisao    ");
    
    $display("----------------------------------------------");
    
    // cobertura simples
    
    if (errors == 0)
      $display("RESULTADO FINAL: SUCESSO");
    else
      $display("RESULTADO FINAL: FALHA (%0d erros detectados)", errors);
    $display("----------------------------------------------");
    
    $finish;
  end
endmodule