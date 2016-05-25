size=20;
detail=100;

$fn=detail;

difference() {
    intersection() {
        cube(size, center=true);
        sphere(r=sin(45) * size * 1.02);
    }
    rotate([0, 0, 0]) one();
    rotate([180, 0, 0]) thirteen();
    rotate([-90, 0, 0]) two();
    rotate([90, 0, 0]) eight();
    rotate([0, -90, 0]) three();
    rotate([0, 90, 0]) five();
}

module one() {
    dot();
}

module two() {
    translate([-size / 4, -size / 4, 0]) dot();
    translate([size / 4, size / 4, 0]) dot();
}

module three() {
    translate([-size / 4, -size / 4, 0]) dot();
    translate([size / 4, size / 4, 0]) dot();
    dot();
}

module four() {
    translate([-size / 4, -size / 4, 0]) dot();
    translate([-size / 4, size / 4, 0]) dot();
    translate([size / 4, -size / 4, 0]) dot();
    translate([size / 4, size / 4, 0]) dot();
}

module five() {
    translate([-size / 4, -size / 4, 0]) dot();
    translate([-size / 4, size / 4, 0]) dot();
    translate([size / 4, -size / 4, 0]) dot();
    translate([size / 4, size / 4, 0]) dot();
    dot();
}

module six() {
    translate([-size / 4, -size / 4, 0]) dot();
    translate([-size / 4, size / 4, 0]) dot();
    translate([size / 4, -size / 4, 0]) dot();
    translate([size / 4, size / 4, 0]) dot();
    translate([-size / 4, 0, 0]) dot();
    translate([size / 4, 0, 0]) dot();
}

module eight() {
    translate([-size / 4, -size / 4, 0]) dot();
    translate([-size / 4, size / 4, 0]) dot();
    translate([size / 4, -size / 4, 0]) dot();
    translate([size / 4, size / 4, 0]) dot();
    translate([-size / 4, 0, 0]) dot();
    translate([size / 4, 0, 0]) dot();
    translate([0, -size / 4, 0]) dot();
    translate([0, size / 4, 0]) dot();
}

module thirteen() {
    translate([-size / 4, -size / 4, 0]) dot();
    translate([-size / 4, size / 4, 0]) dot();
    translate([size / 4, -size / 4, 0]) dot();
    translate([size / 4, size / 4, 0]) dot();
    translate([-size / 4, 0, 0]) dot();
    translate([size / 4, 0, 0]) dot();
    translate([0, -size / 4, 0]) dot();
    translate([0, size / 4, 0]) dot();
    dot();
    translate([-size / 8, -size / 8, 0]) dot();
    translate([-size / 8, size / 8, 0]) dot();
    translate([size / 8, -size / 8, 0]) dot();
    translate([size / 8, size / 8, 0]) dot();
}

module dot() {
    translate([0, 0, size / 2]) sphere(r=size / 10, $fn=detail/5);
}