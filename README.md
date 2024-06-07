# Robotic-Tool-Handler
# Robotic Tool Handler

## Project Overview

### Introduction
The Robotic Tool Handler project is a sophisticated system designed to automate tool handling, enhancing both efficiency and safety in industrial settings. This innovative project aims to significantly reduce human error and improve productivity in skilled trades by leveraging advanced robotics and artificial intelligence.

### Objectives
- Develop a robotic arm to automate tool or object handling.
![screenshot](https://github/Robotic-Tool-Handler/Doc/Objects1.jpg)
- Increase operational efficiency and safety in industrial tasks.
- Reduce the reliance on human operators in hazardous environments.

## Modules and Architecture
![screenshot](https://github/Robotic-Tool-Handler/Doc/Poster.jpg)

### Perception Module
The Perception Module is the cornerstone of the system, equipped with state-of-the-art sensors and algorithms:
- **Hardware**: Utilizes an Intel RealSense D405 RGBD camera for depth perception.
- **Software**: Employs YOLOv5 for object detection, converting 2D pixel data into 3D coordinates.
- **Algorithms**: Implements RANSAC to segment the table from objects and calculate object centroids and height.
- **Visualization**: Transforms the frame and visualizes points in RViz for real-time feedback.

### Planning Module
The Planning Module calculates the optimal path for the robotic arm using:
- **Kinematics**: Solves inverse kinematics to achieve desired positions, transforming desired poses into joint angles.
- **Orientation**: Computes object orientation using covariance matrices and Eigenvalue decomposition.
- **Path Execution**: Executes planned paths iteratively, adjusting until the error is minimized.

### NLP Handler Module
The NLP Handler Module enhances human-robot interaction by:
- **Language Processing**: Converts natural language commands into actionable instructions for the robotic system.
- **Task Coordination**: Integrates with the main control system to coordinate various tasks based on user inputs.

### Gripper Motor and Touch Feedback
The system incorporates tactile feedback mechanisms:
- **Gripper Motor**: A precise motor system for manipulating objects.
- **Touch Sensors**: Provides feedback to ensure secure gripping and manipulation of tools.

### Project Architecture
The architecture integrates multiple components:
1. **Sensors**: RGB and depth cameras capture environmental data.
2. **Perception**: Processes sensor data to identify and locate objects.
3. **NLP Handler**: Translates user commands into robot actions.
4. **Executive Module**: Coordinates motor actions and feedback systems.
5. **Planner and Simulator**: Plans and simulates movements before execution.

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

