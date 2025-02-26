count = 6;
spacing = 17;
r = 0.8;
stl ="./Choc_Chicago_Steno_R3.stl";

union() {
    for (i = [0:count - 1]) {
      translate([0, i * spacing, 0]) import(stl);
    }

    translate([0 , -spacing / 2 * 0.9, - 0.9 * r])
    rotate ([270, 0, 0])
    cylinder(h = (count) * spacing - spacing * 0.1, r = r, $fn=15)
    ;
};
