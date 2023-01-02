import toxi.physics3d.*;
import toxi.physics3d.behaviors.*;
import toxi.physics3d.constraints.*;
import toxi.geom.*;

int cols = 40;
int rows = 40;

Particle[][] particles = new Particle[cols][rows];
ArrayList<Spring> springs;

float w = 10;

VerletPhysics3D physics;

void setup() {
  size(600, 600, P3D);
  springs = new ArrayList<Spring>();
  
  physics = new VerletPhysics3D();
  Vec3D gravity = new Vec3D(0, 1, 0);
  GravityBehavior3D gb = new GravityBehavior3D(gravity);
  physics.addBehavior(gb);
  
  float x = -200;
  for (int i = 0; i < cols; i++) {
    float z = -350;
    for (int j = 0; j < rows; j++) {
      Particle p = new Particle(x, -200, z); 
      particles[i][j] = p;
      physics.addParticle(p);
      z = z + w;
    }
    x = x + w;
  }
  
  for (int i = 0; i < cols - 1; i++) {
    for (int j = 0; j < rows - 1; j++) {
      Particle a = particles[i][j];
      Particle b1 = particles[i + 1][j];
      Particle b2 = particles[i][j + 1];
      //Particle b3 = particles[i + 1][j + 1];
      Spring s1 = new Spring(a, b1);
      springs.add(s1);
      physics.addSpring(s1);
      Spring s2 = new Spring(a, b2);
      springs.add(s2);
      physics.addSpring(s2);
      //Spring s3 = new Spring(a, b3);
      //springs.add(s3);
      //physics.addSpring(s3);
    }
  }
  
  particles[0][0].lock();
  particles[cols - 1][0].lock();
  //particles[0][rows - 1].lock();
  //particles[cols - 2][rows - 2].lock();
}

float angle = 0;
void draw() {
  background(51);
  translate( width / 2, height / 2);
  //rotateX(angle);
  angle += 0.01;
  physics.update();
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      //particles[i][j].display ();
    }
  }
  
  for (Spring s : springs) {
    s.display();
  }
}
