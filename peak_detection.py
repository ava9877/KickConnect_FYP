final_list= your_signal_segment
peaks,_ = find_peaks(final_list,prominence=0.00549) #prominence=0.00364,prominence=0.00464 (10)
print('Prominence Locations:')
print(peaks)
prominences = peak_prominences(final_list, peaks)[0]
print('Prominence Amplitude:')
print(prominences)
# exit(0)
print('Sum of prominence amplitude:')
print(np.sum(prominences))
plt.plot(final_list)
print(type(peaks))
dtrended=pd.Series(final_list)
plt.plot(peaks, dtrended[peaks],"x")
#plt.vlines(x=peaks, ymin=contour_heights, ymax=dtrended[peaks])
plt.show()
