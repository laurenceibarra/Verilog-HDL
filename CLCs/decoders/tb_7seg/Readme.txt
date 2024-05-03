The circuit produces 4 to 1 Multiplexer
which is displayed on LED[0]

In this demo:

-- data_in is the value of SW[5:2]
-- sel is the value of SW[1:0]

The selection signal (sel) determines which input is chosen:
If sel = 00, then the data_in value from SW[5:2] corresponding to the 0th position is selected.
If sel = 01, then the data_in value from SW[5:2] corresponding to the 1st position is selected.
If sel = 10, then the data_in value from SW[5:2] corresponding to the 2nd position is selected.
If sel = 11, then the data_in value from SW[5:2] corresponding to the 3rd position is selected.
The output of the selected data_in is then displayed on LED[0].

To use:

Adjust the values of switches SW[5:2] to provide different input data.
Set switches SW[1:0] to change the selection signal (sel) and observe how it affects the output displayed on LED[0].