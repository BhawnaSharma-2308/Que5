# Set up terminal and output
set terminal postscript size 6,6 font 'Arial, 15'
set output "big_matrix_demo.eps"

# Set color palette and plot range
set palette defined (0 "blue", 1 "white", 2 "red")  # Adjust colors as needed
set cbrange [-0.71:6]  # Replace with min/max of demo data for color consistency

# Add grid lines to indicate clusters (adjust spacing as needed)
set xtics 10, 10, 200  # Add tic lines every 10 columns
set ytics 10, 10, 200  # Add tic lines every 10 rows
set grid xtics ytics lw 0.5 lt rgb "black"  # Style for cluster lines

# Plot data
plot 'demo_data.tsv' matrix with image
