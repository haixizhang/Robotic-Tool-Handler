# Robotic-Tool-Handler

## Project Overview

### Introduction
The Robotic Tool Handler project is a sophisticated system designed to automate tool handling, enhancing both efficiency and safety in industrial settings. This innovative project aims to significantly reduce human error and improve productivity in skilled trades by leveraging advanced robotics and artificial intelligence.

### Objectives
- Develop a robotic arm to automate tool or object handling.
![screenshot]https://github.com/haixizhang/Robotic-Tool-Handler/blob/main/Doc/Objects1.jpg
- Increase operational efficiency and safety in industrial tasks.
- Reduce the reliance on human operators in hazardous environments.

## Materials Used
0. All the code is working in the ROS 1 Noetic, Ubuntu 20.04 version.
1. [Intel RealSense D405](https://www.intelrealsense.com/depth-camera-d405/)
2. Robot Hand (with 2 movable fingers and one back plate)
![screenshot]https://github.com/haixizhang/Robotic-Tool-Handler/blob/main/Doc/Robot.jpg
3. [Micro Maestro 6-Channel USB Servo Controller](https://www.pololu.com/product/1350)
4. [2* High-Torque Servo Motor](https://www.pololu.com/product/3429)
5. [Force Sensitive Resistor (feedback control signal)](https://cdn-learn.adafruit.com/downloads/pdf/force-sensitive-resistor-fsr.pdf)
6. Recorded voice or USB-microphone input

## Modules and Architecture
The architecture integrates multiple components:
1. **Sensors**: RGB and depth cameras ([Intel RealSense D405](https://www.intelrealsense.com/depth-camera-d405/)) capture environmental data.
2. **Perception**: Processes sensor data to identify and locate objects.
3. **NLP Handler**: Translates user commands into robot actions.
4. **Executive Module**: Coordinates motor actions and feedback systems.
5. **Planner and Simulator**: Plans and simulates movements before execution.
![screenshot]https://github.com/haixizhang/Robotic-Tool-Handler/blob/main/Doc/arch.png

### Perception Module
![screenshot]https://github.com/haixizhang/Robotic-Tool-Handler/blob/main/Doc/perception.jpg
![screenshot]https://github.com/haixizhang/Robotic-Tool-Handler/blob/main/Doc/yolo.png

### Planning Module
The Planning Module calculates the optimal path for the robotic arm using:
- **Kinematics**: Solves inverse kinematics to achieve desired positions, transforming desired poses into joint angles.
- **Orientation**: Computes object orientation using covariance matrices and Eigenvalue decomposition.
- **Path Execution**: Executes planned paths iteratively, adjusting until the error is minimized.
![screenshot]https://github.com/haixizhang/Robotic-Tool-Handler/blob/main/Doc/plan.png

### NLP Handler Module
The NLP Handler Module enhances human-robot interaction by:
- **Language Processing**: Converts natural language commands into actionable instructions for the robotic system.
- **Task Coordination**: Integrates with the main control system to coordinate various tasks based on user inputs.
![screenshot]https://github.com/haixizhang/Robotic-Tool-Handler/blob/main/Doc/nlp.png

### Gripper Motor and Touch Feedback
The system incorporates tactile feedback mechanisms:
- **Gripper Motor**: A precise motor system for manipulating objects.
- **Touch Sensors**: Provides feedback to ensure secure gripping and manipulation of tools.
![screenshot]https://github.com/haixizhang/Robotic-Tool-Handler/blob/main/Doc/motor.png

## Achievements
- Successfully implemented a robust human-robot interaction system.
- Demonstrated efficient tool handling and error reduction.
- Accurately detected and manipulated objects using RGBD cameras.
- Solved complex kinematics for precise robotic arm movements.
- Achieved reliable object gripping with integrated touch feedback.

## Future Directions
- **YOLO Model Fine-Tuning**: Enhance the YOLO model for broader object recognition.
- **Environment Interaction**: Enable more complex interactions with the environment.
- **Incorporate Feedback**: Improve touch feedback for better handling precision.
- **Docker Container**: Ensure compatibility with various tools and environments.

## Conclusion
The Robotic Tool Handler project has achieved significant milestones in automating tool handling through advanced robotics and AI. By continuously refining the system and exploring new directions, the project aims to set new standards in industrial automation and safety.

