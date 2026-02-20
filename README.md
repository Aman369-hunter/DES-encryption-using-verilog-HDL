# DES Encryption in Verilog

## Overview

This project implements the **Data Encryption Standard (DES)** algorithm using **Verilog HDL**. It includes the **full 16-round DES key schedule**, initial permutation (IP), expansion, S-box substitutions, permutation functions, and final permutation (IP⁻¹).

The design is intended for **FPGA/ASIC simulation and synthesis** and can be used as a reference for **hardware-based cryptography** or educational purposes.

---

## Features

* Complete **16-round DES encryption**
* **Key generation module** with:

  * PC-1 (Parity drop)
  * Key splitting
  * Left shifts per round
  * PC-2 (Subkey generation)
* **DES round function (f-function)** implementation:

  * Expansion (E)
  * Substitution (S-boxes)
  * Permutation (P)
* Configurable for **64-bit input plaintext** and **64-bit key**
* Outputs **64-bit ciphertext**
* Modular design suitable for FPGA implementation

---

## File Structure

| File                         | Description                                     |
| ---------------------------- | ----------------------------------------------- |
| `key_top_module_16_rounds.v` | Top-level module for 16-round key generation    |
| `key_pc1.v`                  | Parity-drop (PC-1) module                       |
| `key_split_28.v`             | Splits 56-bit key into C0 & D0                  |
| `key_after_round1.v`         | Left shift module for each round                |
| `key_pc2.v`                  | Compression permutation (PC-2) to 48-bit subkey |
| `des_top_module.v`           | Top-level DES encryption module                 |
| `des_round.v`                | Single DES round function (f-function)          |
| `tb_des.v`                   | Testbench for verifying DES encryption          |

---

## How DES Works (Summary)

1. **Key Schedule**: 64-bit key → 56-bit parity drop → split into C0 & D0 → 16 rounds of left shifts → 16 subkeys (48-bit each)
2. **Initial Permutation (IP)**: Reorders plaintext bits
3. **16 Rounds**: Each round uses:

   * Expansion (32 → 48 bits)
   * XOR with subkey
   * S-box substitution (48 → 32 bits)
   * Permutation (P)
4. **Final Permutation (IP⁻¹)**: Reorders bits to produce ciphertext

---

## Simulation

1. Open your **Verilog simulator** (Vivado, ModelSim, or Icarus Verilog)
2. Compile all Verilog modules:

   ```bash
   iverilog -o des_tb des_top_module.v key_top_module_16_rounds.v key_pc1.v key_split_28.v key_after_round1.v key_pc2.v des_round.v tb_des.v
   ```
3. Run simulation:

   ```bash
   vvp des_tb
   ```
4. Check **waveform or console output** for plaintext, key, and encrypted ciphertext.

---

## Example Usage

```verilog
module tb_des_example;
    reg [63:0] plaintext;
    reg [63:0] key;
    wire [63:0] ciphertext;

    des_top_module DES (
        .plain_text(plaintext),
        .key_in(key),
        .cipher_text(ciphertext)
    );

    initial begin
        plaintext = 64'h0123456789ABCDEF;
        key       = 64'h133457799BBCDFF1;
        #10;
        $display("Ciphertext: %h", ciphertext);
    end
endmodule
```

---

## Project Workflow

1. Generate 16 subkeys using `key_top_module_16_rounds`
2. Feed the plaintext and subkeys into DES rounds
3. Obtain the final ciphertext after 16 rounds + final permutation

---

## References

* FIPS PUB 46-3: Data Encryption Standard (DES) specification
* [Verilog HDL Reference](https://www.verilog.com/)
* Practical FPGA DES implementations and tutorials

---

## Author

**Anil Kumar** – Final Year ECE Student

* GitHub: [Aman369-hunter](https://github.com/Aman369-hunter)
* Email: *[Your Email]*

---

## License

This project is licensed under **MIT License** – see the LICENSE file for details.

---

I can also **make a shorter, eye-catching version** with **shields for language, license, and build status** so it looks very professional on GitHub if you want.

Do you want me to do that?
