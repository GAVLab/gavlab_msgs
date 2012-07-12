# This message represents emphemeris data from one satellite
# The names and descriptions come from the Novatel firmware reference manual,
# which starts on page 337, and the ICD-GPS-200.  To obtain copies of ICD-GPS-
# 200, refer to ARINC in the Standards and References section of the GNSS 
# Reference Book, available on this web site:
# 
# http://www.novatel.com/support/docupdates.htm.
# 

# Standard ROS header, for computer timestamp and sequence number
Header      header

# Satellite PRN number
uint32      psuedo_random_number

# Time stamp of subframe 0 (seconds)
float64     time_of_week

# Health status
#  a 6-bit health code as defined in ICD-GPS-200
uint32      health

# Issue of ephemeris data 1
uint32      IODE1

# Issue of ephemeris data 2
uint32      IODE2

# GPS week number
uint32      week

# Z count week number.
#  This is the week number from subframe 1 of the ephemeris.
#  The ‘toe week’ (field #7) is derived from this to account for rollover.
uint32      z_week

# Reference time for ephemeris, seconds
float64     time_of_ephemeris

# Semi-major axis, metres
float64     semi_major_axis

# Mean motion difference, radians/second
float64     mean_motion_difference

# Mean anomaly of reference time, radians
float64     mean_anomaly_of_reference_time

# Eccentricity, dimensionless
#  quantity defined for a conic section where e= 0 is a circle,
#  e = 1 is a parabola, 0<e<1 is an ellipse and e>1 is a hyperbola.
float64     eccentricity

# Argument of perigee, radians
#  measurement along the orbital path from the ascending node to the
#  point where the SV is closest to the Earth, in the direction of the
#  SV's motion.
float64     perigee

# Argument of latitude (amplitude of cosine, radians)
float64     latitude_cosine

# Argument of latitude (amplitude of sine, radians)
float64     latitude_sine

# Orbit radius (amplitude of cosine, metres)
float64     orbit_radius_cosine

# Orbit radius (amplitude of sine, metres)
float64     orbit_radius_sine

# Inclination (amplitude of cosine, radians)
float64     inclination_cosine

# Inclination (amplitude of sine, radians)
float64     inclination_sine

# Inclination angle at reference time, radians
float64     inclination_angle

# Rate of inclination angle, radians/second
float64     inclination_angle_rate

# Right ascension, radians
float64     right_ascension

# Rate of right ascension, radians/second
float64     right_ascension_rate

# Issue of data clock
uint32      issue_of_data_clock

# SV clock correction term, seconds
float64     clock_correction

# Estimated group delay difference, seconds
float64     group_delay_difference

# Clock aging parameter, seconds (s)
float64     clock_aging

# Clock aging rate parameter, (s/s)
float64     clock_aging_rate

# Clock aging accerlation parameter, (s/s/s)
float64     clock_aging_acceleration

# Anti-spoofing on:
#  0 = FALSE
#  1 = TRUE
bool        ANTI_SPOOFING_ON  = 1
bool        ANTI_SPOOFING_OFF = 0
bool        anti_spoofing

# Corrected mean motion, radians/second
float64     corrected_mean_motion

# User Range Accuracy variance, m^2
#  The ICD specifies that the URA index transmitted in the ephemerides can 
#  be converted to a nominal standard deviation value using an algorithm 
#  listed there. We publish the square of the nominal value (variance). The 
#  correspondence between the original URA index and the value output is shown 
#  in Table 62.
float64     user_range_accuracy_variance

