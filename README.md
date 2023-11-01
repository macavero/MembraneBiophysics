# MembraneBiophysics

### Basic operations that are needed in cell membrane biophysics
Includes solution to Nernst and Goldman equations, number of ions that a cell can save as a capacitor (number of leaked ions), Ohm's law, and more.

### Exponential fit and IV plot
There are two different functions that are still under improvement, FitChannel gives back the opening an closing constants (alpha an beta) from an array in a csv file with current values from single channel patch clamp. The IVplotConductance makes linear regression to the IV curve from 0 to 40 mV. Then calculates reversal potential and conductance, and plots it. The input is a csv file with voltage in the first column and current in the second column.