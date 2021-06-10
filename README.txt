SFND - Radar Target Generation and Detection

Implementation steps for 2D CFAR:
- The program moves the CFAR mask through the Range Doppler map row by row
- For each position, the noise levels in the target cells of the 2D CFAR 
mask are converted from logarithmic to linear and summed.
- The noise level is then averaged over all training cells
- The offset is added to the average noise level
- The noise level is converted again to logarithmic
- If the signal in the CUT is lower than the threshold, it is set 0, otherwise to 1

Selection of training cells, guard cells and offset
- Different values for the number of training cells, guard cells and offset were 
tested, since their effect is dependant on the given environment. 
- Since there is only one vehicle and no traffic, relatively high values of 
8 training cells in the doppler direction and 10 in the range direction with an
offset of 8 delivered the desired results and managed to filter out all 
the noise along the RD map
-The guard cells in the doppler direction were chosen higher than in the range direction, in order 
to avoid the signal leaking into the CFAR cells, since the signal is wider in the doppler direction

Steps taken to suppress the non-thresholded cells at the edges

- After performing the 2D CFAR, the algorithm loops again through the rows and columns of the 
RD map and removes all signal values within the border that was not included in 
the CFAR mask