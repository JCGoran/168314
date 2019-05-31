rem This batch file is used to run multiple seeds.  It reads all the seed numbers in the file \inputs\seeds.txt and runs the neuron simulation for each seed.
REM PLEASE note that the folder path for the two files below need to be updated to match your current setup. 
@echo off
SetLocal EnableDelayedExpansion

Set _InputFile=C:\Users\Ali\Dropbox\Neuron\Ali\inputs\seeds.txt

For /F "tokens=*" %%I IN (%_InputFile%) DO (
echo %%I > seed.txt


C:\nrn73\bin\neuron.exe C:\Users\Ali\Dropbox\Neuron\Ali\Hipp.hoc

timeout /t 20
)

EndLocal