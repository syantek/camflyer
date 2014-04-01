mode(0)
in2cm = 2.54;
rad2deg = 180/%pi;

// span
b_leco_in = 33 + 5/8; // span at leading edge of chord, in
b_teco_in = 33; // span at trailing edge o chord, in
b_in = (b_leco_in + b_teco_in)/2;
b_cm = b_in*in2cm;
b_cm_2 = b_cm/2

// chord
c_i_angled_in = 10; // inner chord, along wing angle, in
c_o_angled_in = 5 + 6/8; // outer chord, along wing angle, in
c_i_in = 10 + 2/8; // inner projected chord, in
c_i_cm = c_i_in *in2cm
c_o_cm = c_o_angled_in*cos(tilt_rad)*in2cm

// wing fuselage
wf_le_i_in = 2 + 1/2; // fuselage width at inner chord, leading edge, in
wf_te_i_in = 1 + 7/8; // fuselage width at inner chord, trailing edge, in

// wing tilt
tilt_rad = asin((wf_le_i_in - wf_te_i_in)/2/c_i_angled_in);
tilt_deg = tilt_rad*rad2deg

// check of wing tilt
tilt_check_rad = asin((b_leco_in - b_teco_in)/2/c_i_angled_in);
tilt_check_deg = tilt_check_rad*rad2deg;

// elevator
el_c_in = 1.5; // elevator chord, in
el_i_in = 3 + 5/8; // spanwise position, inner, in
el_o_in = b_teco_in/2; // spanwise position, outer, in
el_i_cm = el_i_in*in2cm
el_o_cm = el_o_in*in2cm

// wing offset
wing_offset_in = 8.5; // offset from wing leading edge to trailing edge
wing_sweep_rad = asin(wing_offset_in/(b_leco_in/2));
wing_sweep_deg = wing_sweep_rad*rad2deg
wing_offset_cm = wing_offset_in*in2cm

// chord with elevator
c_t_o_cm = c_o_cm + el_c_in*cos(tilt_rad)*in2cm
c_t_i_cm = c_i_cm + el_c_in*cos(tilt_rad)*in2cm
