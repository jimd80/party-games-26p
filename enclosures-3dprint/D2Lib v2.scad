// Function library
// Parameter names: x,y,z, w=width X, l=length Y, h=height Z, d=diameter

// extra margain for preview
q = .1;
q2 = q*2;


// Draw solid block with certain offset and width,length and height
//   beam(x=,y=,z=,w=,l=,h=);
module beam_wlh(x,y,z,w,l,h) { translate([x,y,z]) cube([w,l,h]); }

// Draw solid block with start and end coordinates
module beam_xyz(x1,x2,y1,y2,z1,z2) { translate([x1,y1,z1]) cube([x2-x1,y2-y1,z2-z1]); }

module beam_xyz_slopedz(x1,x2,y1,y2,z1,z2,slope)
{
    CubePoints = [
      [ x1,  y1,  z1 ],  //0
      [ x2,  y1,  z1 ],  //1
      [ x2,  y2,  z1 ],  //2
      [ x1,  y2,  z1 ],  //3
      [ x1 + slope,  y1 + slope,  z2 ],  //4
      [ x2 - slope,  y1 + slope,  z2 ],  //5
      [ x2 - slope,  y2 - slope,  z2 ],  //6
      [ x1 + slope,  y2 - slope,  z2 ]]; //7
      
    CubeFaces = [
      [0,1,2,3],  // bottom
      [4,5,1,0],  // front
      [7,6,5,4],  // top
      [5,6,2,1],  // right
      [6,7,3,2],  // back
      [7,4,0,3]]; // left
      
    polyhedron( CubePoints, CubeFaces );   
}

module beam_xyz_slopedz4(x1,x2,y1,y2,z1,z2,slope1,slope2,slope3,slope4)
{
    CubePoints = [
      [ x1,  y1,  z1 ],  //0
      [ x2,  y1,  z1 ],  //1
      [ x2,  y2,  z1 ],  //2
      [ x1,  y2,  z1 ],  //3
      [ x1 + slope1,  y1 + slope3,  z2 ],  //4
      [ x2 - slope2,  y1 + slope3,  z2 ],  //5
      [ x2 - slope2,  y2 - slope4,  z2 ],  //6
      [ x1 + slope1,  y2 - slope4,  z2 ]]; //7
      
    CubeFaces = [
      [0,1,2,3],  // bottom
      [4,5,1,0],  // front
      [7,6,5,4],  // top
      [5,6,2,1],  // right
      [6,7,3,2],  // back
      [7,4,0,3]]; // left
      
    polyhedron( CubePoints, CubeFaces );   
}

module beam_xy_sloped(x,y,z,w,l,h,slope) { translate([0,0,z]) linear_extrude(height=h) polygon([[x+slope,y],[x+w-slope,y],[x+w,y+slope],[x+w,y+l-slope],[x+w-slope,y+l],[x+slope,y+l],[x,y+l-slope],[x,y+slope]]); }

module beam_xy_rounded(x,y,z,w,l,h,r)
{
   union()
   {
      beam_xy_sloped(x=x,y=y,z=z,w=w,l=l,h=h,slope=r);
      cylinder_z(x=x+r,y=y+r,z=z,d=r*2,h=h);
      cylinder_z(x=x+w-r,y=y+r,z=z,d=r*2,h=h);
      cylinder_z(x=x+r,y=y+l-r,z=z,d=r*2,h=h);
      cylinder_z(x=x+w-r,y=y+l-r,z=z,d=r*2,h=h);
   }
}

module sloped_beamxy(x,y,z,w,l,h,slope) { translate([0,0,z]) linear_extrude(height=h) polygon([[x+slope,y],[x+w-slope,y],[x+w,y+slope],[x+w,y+l-slope],[x+w-slope,y+l],[x+slope,y+l],[x,y+l-slope],[x,y+slope]]); }

// Draw cilinder with height in x-axis (y,z=center position)
module cylinder_x(x,y,z,d,h) { translate([x,y,z]) rotate([0,90,0]) cylinder(h=h,d=d); }

// Draw cilinder with height in y-axis (x,z=center position)
module cylinder_y(x,y,z,d,h) { translate([x,y,z]) rotate([-90,0,0]) cylinder(h=h,d=d); }

// Draw cilinder with height in z-axis (x,y=center position)
module cylinder_z(x,y,z,d,h) { translate([x,y,z]) cylinder(h=h,d=d); }

// Draw cilinder with height in z-axis (x,y=center position)
module tube_z(x,y,z,innerd,outerd,h) { translate([x,y,z]) difference() { cylinder(h=h,d=outerd); cylinder(h=h,d=innerd); } }

// Draw cone with height in x-axis (y,z=center position)
module cone_x(x,y,z,h,d1,d2) { translate([x,y,z]) rotate([0,90,0]) cylinder(h=h,d1=d1,d2=d2); }

// Draw cone with height in y-axis (x,z=center position)
module cone_y(x,y,z,h,d1,d2) { translate([x,y,z]) rotate([-90,0,0]) cylinder(h=h,d1=d1,d2=d2); }

// Draw cone with height in z-axis (x,y=center position)
module cone_z(x,y,z,h,d1,d2) { translate([x,y,z]) cylinder(h=h,d1=d1,d2=d2); }

// Draw donut in the xy plane (x,y=center position)
module donut_xy(x,y,z,innerd,outerd) { translate([x,y,z]) rotate_extrude() translate([(innerd+outerd) / 4, 0, 0]) circle(r = (outerd-innerd)/4); }

// Draw pie in the xy plane (a1,a2 = from,to angle)
module pie_xy(x,y,z,d,h,a1,a2) { translate([x,y,z]) rotate([0,0,a1]) rotate_extrude(angle=a2-a1) square([d/2,h]); }

module elliptic_sphere(x1,x2,y1,y2,z1,z2)
{
    translate([x1,y1,z1])
        scale([x2-x1,y2-y1,z2-z1])
            translate([.5,.5,.5])
                sphere(.5);
}

module polyhedron_xy(x1,y1,x2,y2,x3,y3,x4,y4,z1,x5,y5,x6,y6,x7,y7,x8,y8,z2)
{
    CubePoints = [
      [  x1,  y1,  z1 ],  //0
      [  x2,  y2,  z1 ],  //1
      [  x3,  y3,  z1 ],  //2
      [  x4,  y4,  z1 ],  //3
      [  x5,  y5,  z2 ],  //4
      [  x6,  y6,  z2 ],  //5
      [  x7,  y7,  z2 ],  //6
      [  x8,  y8,  z2 ]]; //7
      
    CubeFaces = [
      [0,1,2,3],  // bottom
      [4,5,1,0],  // front
      [7,6,5,4],  // top
      [5,6,2,1],  // right
      [6,7,3,2],  // back
      [7,4,0,3]]; // left
      
    polyhedron( CubePoints, CubeFaces );    
}


module polyhedron_xyz(x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4,x5,y5,z5,x6,y6,z6,x7,y7,z7,x8,y8,z8)
{
    CubePoints = [
      [  x1,  y1,  z1 ],  //0
      [  x2,  y2,  z2 ],  //1
      [  x3,  y3,  z3 ],  //2
      [  x4,  y4,  z4 ],  //3
      [  x5,  y5,  z5 ],  //4
      [  x6,  y6,  z6 ],  //5
      [  x7,  y7,  z7 ],  //6
      [  x8,  y8,  z8 ]]; //7
      
    CubeFaces = [
      [0,1,2,3],  // bottom
      [4,5,1,0],  // front
      [7,6,5,4],  // top
      [5,6,2,1],  // right
      [6,7,3,2],  // back
      [7,4,0,3]]; // left
      
    polyhedron( CubePoints, CubeFaces );    
}

//Transforms a two dimmensional object in the XY plane to a spiral extrusion with a cross section perpendicular to the extrusion of the original two dimmensional object.
// Radius is the inital radius of the spiral.
// EndRadius is the final radius of the spiral. If not specified, it is the same as Radius.
// Spiral proceeds counter clockwise from start radius to end radius.
// Pitch is the change in Z per revolution of the spiral (this can be negative) unless Height is zero, in which case Pitch is the change in Radius/revolution.
// Starts is the number of spirals.
// Height is the total height of the spiral (this should be positive), can be zero. If pitch is positive, height goes up, if pitch is negative, height goes down
// StepsPerRev is the number of linear extruded segments per revolution of the spiral. A larger number generates a smoother spiral

    //Wraper function for backwords compatibility.
module spiral_extrude(Radius=1,EndRadius=-1,Pitch=50,Starts=1,Height=1,StepsPerRev=50){
    Angle=abs((Height!=0)?360*Height/Pitch:360*(Radius-EndRadius)/Pitch);
    ZPitch=(Height!=0)?Pitch:0;
    RPitch=(Height!=0)?((EndRadius!=-1)?(EndRadius-Radius)/abs(Height/Pitch):0):Pitch;
    
    extrude_spiral(StartRadius=Radius, Angle=Angle, ZPitch=ZPitch, RPitch=RPitch, StepsPerRev=StepsPerRev,Starts=Starts)children();
}


    // Start radius is the radius at which the extrude will start.
    // Angle is the number of degrees of rotation of the extrusion. This is always counter clock wise about the z axis.
    // ZPitch is the change in height per revolution, can be negative.
    // RPitch is the change in radius per revolution, can be negative.
    // StepsPerRev is the number of segments that will be drawn per revolution. Note that the last segment can be a partial segment.
    // Starts is the number of equally spaced copies of the spiral that will be drawn.
module extrude_spiral(StartRadius=10,Angle=360,ZPitch=0,RPitch=0,StepsPerRev=50,Starts=1){
    NumberOfSteps=ceil(Angle/360*StepsPerRev)-1;
        //Number of degrees of last step to use.
    Remainder=((Angle/360*StepsPerRev)-floor(Angle/360*StepsPerRev));
    for(i=[0:NumberOfSteps]){
        for(j=[0:Starts-1]){
            rotate([0,0,360*i/StepsPerRev+360*j/Starts]){
                    //Current Radius
                LocRadius=StartRadius+i*RPitch/StepsPerRev;
                    //Radius at next junction
                LocRadiusJoint=LocRadius/cos(360/(2*StepsPerRev))-RPitch*360/StepsPerRev/2;
                    //Length of line connecting endpoints of the current radius and the radius of the next joint
                TaperLen=sqrt(pow(LocRadius,2)+pow(LocRadiusJoint,2)-2*LocRadius*LocRadiusJoint*cos(360/(2*StepsPerRev)));
                    //Angle of above line relative to the current radius
                TaperAngle=90-asin(max(min(sin(360/(2*StepsPerRev))*LocRadiusJoint/TaperLen,1),-1));
 
                translate([LocRadius,0,i*ZPitch/StepsPerRev]){
                    segment(Radius=LocRadius, ZPitch=ZPitch, StepsPerRev=StepsPerRev, First=i==0, Last=(i==NumberOfSteps)?Remainder:0,RPitch=RPitch)children();
                }
            }
        }
    }
}

    //This module builds the segments that make up the spiral
module segment(Radius=1, ZPitch=1, StepsPerRev=10,First=false,Last=false,RPitch=0){
    render(){
            //Length of the extrusion needed to cover the angle determined by StepsPerRev
        LengthOfSegment=Radius*2*sin(360/(2*StepsPerRev))/cos(atan2(ZPitch,(2*PI*Radius)));
        
            //angle of extrusion relative to the XY plane
        SlopeAngle=atan2(ZPitch,(2*PI*Radius));
        
            //Radius Change per step
        RChange=RPitch/StepsPerRev;
            //Angle change per step
        StepAngle=360/StepsPerRev;
            //Stuff for calculating the angle relative to a radial line
        Opposite=Radius-(Radius+RChange)*cos(StepAngle);
        Adjacent=(Radius+RChange)*sin(StepAngle);
        
        SpiralAngle=atan2(Opposite,Adjacent);
            
        difference(){
            rotate([90+SlopeAngle,0,SpiralAngle]){
                
                    //Make extrusion 20 times as long as the gap to allow trimming to proper angle
                    //twist 20 times as much to account for 20 times the length
                    //I think the twist should be -20*360/StepsPerRev*sin(SlopeAngle), but for some reason -18 works better.
                rotate([0,0,-0.5*19*360/StepsPerRev*sin(SlopeAngle)])linear_extrude(center=true,height=20*LengthOfSegment,twist=-13.5*360/StepsPerRev*sin(SlopeAngle),convexity=10)children();
            }
                //Cut the ends of the extrusion to the proper angle for mating. Cubes are really big because I can't figure out how to ask OpenSCAD how big the 2D object is that I am extruding.
            translate([0,Last?Radius*tan(Last*360/StepsPerRev):Radius*tan(360/StepsPerRev),Last?Last*ZPitch/StepsPerRev:ZPitch/StepsPerRev])rotate([SlopeAngle,0,Last?Last*360/StepsPerRev:360/StepsPerRev]) translate([-5000,0,-5000])cube(10000);
            translate([0,0,0])rotate([SlopeAngle,0,0]) translate([0,-5000.01,0])cube(10000,center=true);
        }    
    }
}