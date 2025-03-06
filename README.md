# TactileHD: a tactile preception framework based on hyperdimensional (HD) computing
Paper COMMING SOON.  

---

## Content
### d_active
The project of FPGA implementation of the **TactileHD** on [AMD Artix-7 xc7a200tfbg484-2](https://www.amd.com/en/products/adaptive-socs-and-fpgas/fpga/artix-7.html), including tactile data preprocessing (raw data obtained using the [PapillArray](https://contactile.com/products/) tactile sensor), real-time slip detection, grip-force control, object identification with active incremental learning, FPGA system setups and IOs.  

You can open and run this project through the project file "d_active.xpr" in [**Vivado 2023.1**](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html). The HDL source code can be found in "d_active.srcs".  

### d_control_gripper
The project run to obtain grip-force control and object identification data. This project implements an incomplete version of **TactileHD**, excluding object identification and active incremental learning.  

You can also open and run this project through the project file "d_control_gripper.xpr" in **Vivado 2023.1**. The HDL source code can be found in "d_control_gripper.srcs".  

### baseline models
This folder includes the projects of HDL realizations of SVM, MLP, and GRU.

### data
The data collected during real-time experiments. The dataset for offline training the slip detection model can also be found [here](https://zenodo.org/records/13228084). 