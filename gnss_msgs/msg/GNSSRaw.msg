# This message encapsulates "raw" GNSS data about each satellite like:
#  Carrier Phase Measurements
#  Pseudorange Measurements
#  Doppler Measurements

# Standard ROS Header
# The frame_id can be used to specify the GNSS receiver if otherwise unused
Header		header				# Timestamp, frame_id, and sequence number

int32 		time_of_week		# GPS time of week as a integer in ms
int16 		week         		# GPS week number as a 16-bit integer
uint8 		number_of_sats		# Number of satellites

# Array of GNSSRawSat msgs of length `number_of_sats` which contain
# Pseudorange, Doppler, Carrier Phase, etc. about each satellite
GNSSRawSat[] satellites
