// wheel flat or circled
//with rubber tire

// Created in 2021 by W.Stolle
// This work is released with CC0 into the public domain.
//https://creativecommons.org/publicdomain/zero/1.0/
//use on Your own risk

/*[Wheel]*/
//inner diameter
india=20;
//outer diameter
outdia=80;
//width
wdh=30;
//flat or half circle (flat=0)
fhcc=0;
/*[Tire]*/
//outer diameter
toutdia=120;
/*[Show]*/
//show assembled  (yes=0)
showa=0;

fhc=(fhcc==0)? 0:1;
show=(showa==0)? 0:1;

//Tire
translate([toutdia*show,0,0])
if(fhc>0)
    union()
    {
        ring(toutdia,wdh);
        wheel(wdh,toutdia,outdia);
        ring(outdia,wdh);
    }
else
    difference()
{
    union()
    {
        ring(toutdia,wdh);
        cylinder(wdh,d=toutdia,center=true);
    }
    cylinder(wdh+2,d=outdia,center=true);
}
//end tire
// Wheel
translate([-india*show,0,0])
color("pink")
if(fhc>0)
    difference()
{
    wheel(wdh,outdia,india);
    ring(outdia,wdh-2);
}
else
    wheel(wdh,outdia,india);
//end wheel
module ring(outdiam,width)
{
rotate_extrude(angle=360,$fn=80)
translate([outdiam/2,0])
circle(d=width);
}
module wheel(width,outdiam,indiam)
{
difference()
{
    cylinder(width,d=outdiam,center=true,$fn=80);
    cylinder(width+2,d=indiam,center=true,$fn=80);
}
}