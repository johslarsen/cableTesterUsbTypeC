margin = 0.1;

l = 30 + 2*margin;
w = 29 + 2*margin;
d = 7;
slit = 1 + 2*margin;
thickness = 1;

module box(t=thickness) {
    L = l + 2*t;
    W = w + 2*t;
    H = d + 2*t;

    difference() {
        cube([L,W,H]);
        translate([t+slit,t+slit,t]) cube([L,w-2*slit,H]);
        hull() {
            translate([t,t,t+d-slit]) cube([l,w,slit/2]);
            translate([t+slit,t+slit,t+d-slit]) cube([l-slit,w-2*slit,slit]);
        }
        hull() {
            translate([t+l,t+slit,t+d-slit]) cube([.01,w-2*slit,slit]);
            translate([L+.01,t,t+d-slit]) cube([.01,w,slit]);
        }

    }
}
box();
