# This message represents the raw tracking data from each satellite

# This is the space vehicle number
# a.k.a. PRN for GPS and slot number for GLONASS
uint8   vehicle_number      # Space vehicle number

# Pseudorange measurement to the satellite
float64 pseudorange         # In meters
# This is the standard deviation on the PR
# This can be calculated using the PR and the signal_strength
# If you don't have this, or do not want to populate it set it to -1
float64 pseudorange_stdev   # In meters

# Carrier Phase measurement
# a.k.a. the ADR (accumulated Doppler range)
float64 carrier_phase       # In cycles
# This is the standard deviation on the CP
# This can be calculated using the CP and the signal_strength
# If you don't have this, or do not want to populate it set it to -1
float64 carrier_phase_stdev # In cycles

# Instantaneous carrier Doppler frequency
float64 doppler             # In Hz

# Channel Tracking Status
# a.k.a. tracking mode, quality indicator
# This is not consistent among receivers, generally it describes the various
# states of the tracking loop.  Below are some typical states, if your receiver
# has more detailed states feel free to use them.
int8    IDLE        = 100   # The Channel is Idle
int8    SEARCHING   = 101   # The Channel is Searching
int8    ACQUIRED    = 102   # The Channel has been acquired
int8    LOCKED      = 103   # The Channel is locked, the CP(ADR) is valid
# In addition to the states, there is a distinction between L1 and L2 signals
int8    L1          = 0     # L1 channel offset
int8    L2          = 10    # L2 channel offset
# To assign the tracking_state, first determine the channel level (L1 or L2)
# and then figure out the best state.  Then do the assignment by adding the 
# channel offset (L1 or L2) to the state.  For example ACQUIRED and L1 (in Python):
#   tracking_state = GPSRawSat.L1 + GPSRawSat.ACQUIRED
# Thus 102 will be L1+ACQUIRED, and 112 would be L2+ACQUIRED
# Since the default states start at 100, they should not collide with custom
# states given by receivers
int8    tracking_state      # Set to -1 if unused

# Signal Strength
# a.k.a. Carrier to Noise ratio
int8    signal_strength     # In dbHz

# Loss of lock indicator
uint8   loss_of_lock
