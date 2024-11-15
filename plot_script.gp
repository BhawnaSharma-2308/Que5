# Set up terminal and output
set terminal postscript size 6,6 font 'Arial, 15'
set output "big_matrix.eps"

# Set color palette and plot range
set palette defined (0 "blue", 1 "white", 2 "red")  # Adjust colors as needed
set cbrange [-1.839:6]  # Replace with min/max of demo data for color consistency

# Add grid lines to indicate clusters (adjust spacing as needed)
set xtics 500, 500, 2500  # Add tic lines every 200 columns
set ytics 20000, 20000, 120000  # Add tic lines every 20000 rows
set grid xtics ytics lw 0.5 lt rgb "black"  # Style for cluster lines

# Plot data
plot 'big_data.tsv' matrix with image

"""
Final Commands -
gnuplot plot_script.gp
ps2pdf big_matrix.eps big_matrix.pdf 

"""
