function [scenario, egoVehicle] = Scenario()
% createDrivingScenario Returns the drivingScenario defined in the Designer

% Generated by MATLAB(R) 24.2 (R2024b) and Automated Driving Toolbox 24.2 (R2024b).
% Generated on: 16-Dec-2024 19:10:22

% Construct a drivingScenario object.
scenario = drivingScenario;

% Add all road segments
roadCenters = [352.6 198.7 0;
    76.7 63.7 0;
    -47.1 41 0;
    -142.5 30.4 0];
marking = [laneMarking('Solid', 'Color', [0.98 0.86 0.36])
    laneMarking('Dashed', 'Color', [0 1 1])
    laneMarking('Dashed', 'Color', [0 1 1])
    laneMarking('Solid')
    laneMarking('Dashed', 'Color', [0 1 1])
    laneMarking('Dashed', 'Color', [0 1 1])
    laneMarking('Solid')];
laneSpecification = lanespec(6, 'Width', 4, 'Marking', marking);
road(scenario, roadCenters, 'Lanes', laneSpecification, 'Name', 'Road');

% Add the ego vehicle
egoVehicle = vehicle(scenario, ...
    'ClassID', 1, ...
    'Length', 4.848, ...
    'Width', 1.842, ...
    'Height', 1.517, ...
    'Position', [-140.4 24.3 0], ...
    'RearOverhang', 1.119, ...
    'FrontOverhang', 0.911, ...
    'Mesh', driving.scenario.carMesh, ...
    'PlotColor', [0.494 0.184 0.556], ...
    'Name', 'Car');
waypoints = [-140.4 24.3 0;
    -131.2 24.6 0;
    -120.3 25.4 0;
    -107.7 26.5 0;
    -90.1 28.2 0;
    -76.3 29.8 0;
    -58.8 32.3 0;
    -14.2 37.6 0;
    5.2 41.1 0;
    71.2 55.2 0;
    119.7 68.9 0;
    159.6 86.1 0;
    193.3 101.5 0;
    272.3 142.1 0;
    342 183.4 0];
speed = [25;25;25;25;25;25;25;25;25;25;25;25;25;25;25];
trajectory(egoVehicle, waypoints, speed);

% Add the non-ego actors
car1 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Length', 4.848, ...
    'Width', 1.842, ...
    'Height', 1.517, ...
    'Position', [231.362121182254 129.299202642507 0], ...
    'RearOverhang', 1.119, ...
    'FrontOverhang', 0.911, ...
    'Mesh', driving.scenario.carMesh, ...
    'PlotColor', [0.466 0.674 0.188], ...
    'Name', 'Car1');
waypoints = [225.5 136.6 0;
    117.3 83.6 0;
    42 63 0;
    -52.8 47.6 0;
    -135.6 38.9 0];
speed = [16;16;16;16;16];
trajectory(car1, waypoints, speed);

car2 = vehicle(scenario, ...
    'ClassID', 1, ...
    'Length', 4.848, ...
    'Width', 1.842, ...
    'Height', 1.517, ...
    'Position', [-62.2975825376297 31.5901590015612 0], ...
    'RearOverhang', 1.119, ...
    'FrontOverhang', 0.911, ...
    'Mesh', driving.scenario.carMesh, ...
    'PlotColor', [0.301 0.745 0.933], ...
    'Name', 'Car2');
waypoints = [-62.2975825376297 31.5901590015612 0;
    19.1 44 0;
    71.3 55 0;
    120.2 69.7 0;
    142.7 84.2 0;
    197.5 108.9 0;
    232.1 127 0;
    257.9 140.9 0;
    304.4 168.5 0];
speed = [14;14;14;14;14;14;14;14;14];
trajectory(car2, waypoints, speed);

