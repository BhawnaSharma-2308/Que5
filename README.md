1. First create a demo file with the command; zcat big_data.tsv.gz | head -n 200 | cut -f1-50 > demo_data.tsv

2. Calculate minimum and maximum values with the command; 

awk '{
    for(i=1;i<=NF;i++) {
        if($i+0 < min || min == "") min = $i
        if($i+0 > max || max == "") max = $i
    }
} 
END {print "Min:", min, "Max:", max}' demo_data.tsv

3. gnuplot plot_script.gp

4. ps2pdf big_matrix_demo.eps big_matrix_demo.pdf

5. Calculate no. of rows and columns in the big_data.tsv file (first gunzip that) with the command; 

row_count=$(zcat big_data.tsv.gz | wc -l)  # Count number of rows

column_count=$(zcat big_data.tsv.gz | head -n 1 | awk '{print NF}')  # Count number of columns

6. The above .gp modified for big_data.tsv 
