# 3D Cloth Simulation in Processing

Welcome to the `3dCloth` repository! This project demonstrates a 3D animated cloth simulation built in Processing, utilizing verlet physics principles. The simulation models cloth dynamics through interconnected particles and springs, achieving realistic motion effects. This implementation leverages the toxiclibs library for physics calculations and 3D rendering capabilities.

## Prerequisites

- Processing 3 or newer.
- The toxiclibs library installed in your Processing libraries folder.

## Setup and Running

1. Install Processing: Download and install Processing from [processing.org](https://processing.org/download/).

2. Install toxiclibs: Download the toxiclibs release from [http://toxiclibs.org/](http://toxiclibs.org/) and extract it to your Processing libraries folder, typically located at `Documents/Processing/libraries`.

3. Clone the Repository: Clone this repository to your local machine:

git clone https://github.com/Marqui-13/3dCloth.git

4. Open the Sketch: Open Processing, navigate to the directory where you cloned the repository, and open any of the `.pde` files in the `3dCloth` project.

5. Run the Sketch: Press the "Play" button or use the `Ctrl + R` shortcut. The 3D cloth simulation will start, showcasing a piece of cloth reacting to gravity and other forces in a 3D space.

## Exploring the Simulation

The project is structured around several key classes: `Particle` represents the cloth's individual points, `Spring` models the connections between particles, and the main `clothSim.pde` file integrates these components with the toxiclibs physics engine. You can adjust parameters such as cloth size, particle density, and physics behaviors to explore different simulation outcomes.

## Contributing

Contributions to improve the simulation's performance, add features, or enhance documentation are welcome. Please fork the repository, create your changes, and submit a pull request for review.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- The toxiclibs team for their comprehensive physics library and contributions to the Processing community.
- The Processing Foundation for providing a flexible platform for creative coding and digital art.