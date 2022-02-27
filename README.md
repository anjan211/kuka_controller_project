# Digital Engineering Project


Our main aim for this project was to validate the effectivity and correctness of the modeling of RCS module in the simulation environment for the robot manufactured by KUKA with the KUKA KRC4 controller on Agilus 3.

We have designed and performed certain set of experiments related to the robot motion types namely:
#### 1. Point to Point(PTP)
#### 2. Linear
#### 3. Circular

We have also divided PTP motion into mainly 2 categories:
#### 1. PTP Axis Isolation Experiments : ####
It was mainly done to validate the performance of each axes of the robot in the simulation and the real environment without the influence of any other axes or parameter.
#### 2. PTP Combined Axes Movements : ####
Here, we mainly combined one axes with the others and analysed their performance with varied instructions of angular displacements, with same, higher and lower commands.

Linear and Circular were the two types of continuous path motion types which were considered and we designed the experiments under the constraint of the workspace. In case of linear, we had designed a cuboid which included three types of linear movements namely: horizontal, vertical and diagonal.

#### Linear Experiment:

![Linear_test_proposed](https://user-images.githubusercontent.com/56831972/155883775-450dfdbc-9124-4efa-a5cf-711c22c92941.jpg)

As we can see, there were four planned movements on the cuboid designed in the workspace , with two of them tracing the front and the back faces with consequent horizontal and vertical movement. Whereas, the latter two combinations were more related to the diagonal movements across the vertices.



#### Circular Experiment:
In circular we had designed three orthogonal complete circular movements, which being similar to a gyroscopic layout and we named them Roll, Pitch and Yaw.

![Circular_Experiment](https://user-images.githubusercontent.com/56831972/155883093-cb1257f2-8d34-43b7-8646-c9648939a587.PNG)

One thing that was taken into consideration, was that the TCP was operated under a constant orientation over the entire continuous path motion.


Comparison strategy and results were collectively demonstrated on our final report which is also , present in the repository and can be easily referred to.
