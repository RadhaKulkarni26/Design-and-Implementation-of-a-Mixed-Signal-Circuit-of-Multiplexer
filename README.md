# DESIGN AND IMPLEMENTATION OF A MIXED SIGNAL CIRCUIT 2:1 MUX

- The purpose of this project is to design a **Mixed Signal Circuit of 2:1 MUX** using an Opensource EDA Tool called **eSim**, and **Makerchip** software.
- To explore the project, you can git clone using the command: git clone https://github.com/RadhaKulkarni26/Design-and-Implementation-of-a-Mixed-Signal-Circuit-of-Multiplexer.git
## Table of Contents:

1. INTRODUCTION
2. WHAT ARE MIXED SIGNAL CIRCUITS?
3. WHAT IS VERILOG AND TL-VERILOG?
4. INSTALLATION OF TOOLS
5. CIRCUIT DESIGN
   1. REFERENCE CIRCUIT DIAGRAM
      - Digital Block Diagram
      - Analog Block Diagram
   3. REFERENCE CIRCUIT WAVEFORM
6. IMPLEMENTATION
7. REFERENCE

### 1. INTRODUCTION
***
In this project, I am going to Design and Implement a **Mixed Signal Circuit of 2:1 Mux**. Design and Implementation will be done using **esim** and **Makerchip** software. Mixed signal circuits contain both **Digital and Analog blocks** of a given circuit. **MUX** is a data selector which will give single output from several data inputs. Here we have implemented 2 input MUX which will give single output based on select line input. As this is a mixed signal circuit we will have complete implementation from **HDL** code to **schematic** implementation and. We can **verify** the **output** using **Circuit Waveforms**. This complete design and implementation is done using VLSI technology which has features such as high speed, low power, low cost, and small size.

### 2. WHAT ARE MIXED SIGNAL CIRCUITS?

A **Mixed signal integrated circuit** is any integrated circuit that has **both** **analog circuits** and **digital circuits** on a single semiconductor die. A signal which continously varies with time is an **Analog Signal**. An analog signal can generally be represented as a function of time (f(t)).The signals which are basically generated from the nature are analog in nature. Similarly, signals which have discrete values are called Digital signals. These are represented in binary form (0 and 1). Mixed Signal Circuits contain both analog and digital signals. The below diagram shows basic block diagram of Mixed Signal Circuiits:

![Mixed Circuit Block Diagram](https://user-images.githubusercontent.com/70748543/156620690-34b289cc-e1a2-4dab-a8d7-a816f5fa6d88.JPG)

**For more information:** https://en.wikipedia.org/wiki/Mixed-signal_integrated_circuit

### 3. WHAT IS VERILOG AND TL-VERILOG?

- **VERILOG** or **Verify Logic** is an Hardware Description Language commonly used in VLSI Design to create electronic circuits.

**For more information:** https://en.wikipedia.org/wiki/Verilog

- **TL-Verilog** or **Transaction-Level Verilog** is an extension to SystemVerilog that supports a new design methodology, called transaction-level design

**For more information:** https://www.redwoodeda.com/tl-verilog

### 4. INSTALLATION OF TOOLS
***
#### esim:
esim is an open-source EDA tool used for circuit design and simulation. Using esim we can draw circuit using Kicad, generate netlist and simulate using Ngspice.

**For more information:** <https://esim.fossee.in/home>

The **Download link** for above eSim software is: <https://esim.fossee.in/downloads>

#### Makerchip:
Makerchip provides free and instant access to the latest tools from your browser and from your desktop. This includes open-source tools and proprietary ones.

**For more information:** <https://www.makerchip.com/>

### 5. CIRCUIT DESIGN
***
**Multiplexer (MUX)** is a data selector which will send **single input** data at the **output** based on **select line input**. Here we have implemented a 2:1 MUX which has **2 inputs** (A and B), **1 output** (Y) and **1 select line** (S). Output Y will be **A or B** based on **0 or 1** input at the select line (S). If the select line is **“0”** output Y will be **A** and if the select line is **“1”** then output Y will be **B**. The complete design is divided into two parts **Digital Block** and **Analog Block**. Here, we will be using **Verilog** Hardware Description Language for implementation. We will implement the **code** using **Makerchip** software and implement the Circuit **schematic** using **esim** software. We know that **mixed signals** contain **both** analog and digital blocks hence we need **ADC** and **DAC** blocks to convert the signals from analog to digital. Figure 1 shows the Digital Block of the circuit and Figure 2 shows the Circuit Schematic i.e., Analog Block of the circuit. In the Circuit Waveform, we will verify the above implementation using clock pulse. Output Y will have the same clock pulse sequence as A when S will be “0” and it will have the same clock pulse sequence as B when S will be “1”.

#### 5.1 REFERENCE CIRCUIT DIAGRAM

- **Digital Block Diagram:** 

![new digital block](https://user-images.githubusercontent.com/70748543/156618869-ef3a2285-08f9-4b9a-bc1b-887f9dd0e329.jpeg)

- **Analog Block Diagram:**

 ![reference circuit diagram](https://user-images.githubusercontent.com/70748543/153011605-bb606d89-6c5e-4095-ae4b-e7dd460a38a8.JPG)


#### 5.2 REFERENCE CIRCUIT WAVEFORM
  ![reference circuit waveform](https://user-images.githubusercontent.com/70748543/153012012-14c1b291-9ef8-41dc-b98e-81b1410ff54e.JPG)
  

### 6. IMPLEMENTATION
***
## Step-1:

**The Verilog code of 2:1 MUX is as follows:**
   
   module radha_mux (input i0 , input i1 , input sel , output reg y);
always @ (*)
begin
	if(sel)
		y <= i0;
	else 
		y <= i1;
end
endmodule
  
Initially we add the verilog file to Makerchip and run the code to get the expected waveform. Makerchip will itself create a TVL file and run the code.
  
**Below is the .tvl code which will be generated by Makerchip.**
  
\TLV_version 1d: tl-x.org

\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/   /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/  /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/  

//Your Verilog/System Verilog Code Starts Here:

module radha_mux (input i0 , input i1 , input sel , output reg y);

always @ (*)

begin

if(sel)

y <= i0;

else 

y <= i1;

end

endmodule

//Top Module Code Starts here:

module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);

logic  i0;//input

logic  i1;//input

logic  sel;//input

logic  y;//output

//The $random() can be replaced if user wants to assign values

assign i0 = $random();

assign i1 = $random();

assign sel = $random();

radha_mux radha_mux(.i0(i0), .i1(i1), .sel(sel), .y(y));

\TLV

//Add \TLV here if desired                                     

\SV

endmodule
  
  ![Makerchip window](https://user-images.githubusercontent.com/70748543/156612151-8583061c-da42-4f75-ad6d-c022424f9287.JPG)
  
  The below diagram shows output waveform on Makerchip window:

  ![makerchip](https://user-images.githubusercontent.com/70748543/156612256-e12d7d26-93e2-445f-b93e-25efba1e4808.JPG)

## Step-2 : 
After debugging the verilog code we open the **NgVeri** tab and select **Add Verilog to NgSpice converter** to create the Mux model.

![Model Created Successfully](https://user-images.githubusercontent.com/70748543/156612412-2619224a-8ee7-4050-b253-9a662c7502a8.JPG)

## Step-3 : 

After successfully creating the model we create the schematic as shown in the below **schematic diagram**:

![Final Circuit Diagram](https://user-images.githubusercontent.com/70748543/156612545-6603e363-6712-42af-b80c-e862e861b059.JPG)

## Step-4 : 

Create **netlist** and run kicad to ngspice converter. After giving the required timing parameters we will get a **.cir.out** file.

*/home/radhadk260501/esim-workspace/mixed_circuit_mux/mixed_circuit_mux.cir

*u4  net-_u4-pad1_ net-_u4-pad2_ net-_u4-pad3_ net-_u4-pad4_ radha_mux

*u5  i0 i1 sel net-_u4-pad1_ net-_u4-pad2_ net-_u4-pad3_ adc_bridge_3

*u6  net-_u4-pad4_ net-_r3-pad1_ dac_bridge_1

v1  i0 gnd pulse(0 5 1m 1m 1m 5 10)

v2  i1 gnd pulse(0 5 1m 1m 1m 2.5 5)

v3  sel gnd pulse(0 5 1m 1m 1m 10 20)

*u1  i0 plot_db

*u2  i1 plot_db

r3  net-_r3-pad1_ y 1k

c1  y gnd 1u

*u7  y plot_db

*u3  sel plot_db

a1 [net-_u4-pad1_ ] [net-_u4-pad2_ ] [net-_u4-pad3_ ] [net-_u4-pad4_ ] u4

a2 [i0 i1 sel ] [net-_u4-pad1_ net-_u4-pad2_ net-_u4-pad3_ ] u5

a3 [net-_u4-pad4_ ] [net-_r3-pad1_ ] u6

*Schematic Name:                             radha_mux, NgSpice Name: radha_mux

.model u4 radha_mux(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 

*Schematic Name:                             adc_bridge_3, NgSpice Name: adc_bridge

.model u5 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 

*Schematic Name:                             dac_bridge_1, NgSpice Name: dac_bridge

.model u6 dac_bridge(out_low=0.0 out_high=5.0 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 

.tran 1e-00 40e-00 0e-00

*Control Statements 

.control

run

print allv > plot_data_v.txt

print alli > plot_data_i.txt

plot db(i0)

plot db(i1)

plot db(y)

plot db(sel)

.endc

.end

## Step-5 : 

Now, we simulate the circuit using NgSpice to verify the logic of the circuit. 

We will get **waveforms** as follows:

![Final Waveform](https://user-images.githubusercontent.com/70748543/156618361-9c54b4d8-bfdc-45f9-8619-3bf7c09c200b.JPG)

The below table shows the **Truth Table** of 2:1 MUX. We can verify the truth table with the waveform.

![TRUTH TABLE](https://user-images.githubusercontent.com/70748543/153012502-61603109-a4de-4e3c-87f8-8e0b7268358c.JPG)

In this way we Design and implement a Mixed Signal Circuit.

### 7. REFERENCES:
***
[1] D. S. D. R. A. Rose V Anugraha. Design and performance analysis of 2:1 multiplexer using multiple logic families at 180nmtechnology.https://ieeexplore.ieee.org/abstract/document/8256918. 

[2] S. J. Anjum Aara. Design and implementation of cmos and cnt based 2:1 multiplexer at 32nm technology. www.irjet.net.
