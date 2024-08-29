classdef Link < urdf.URDFTag
    %LINK class represents the LINK node in the URDF file.
    %   Link node represents a physical element in the robot.
    properties
        visual
        inertial
    end
    methods
        function obj = Link(name)
            obj@urdf.URDFTag('link', name);
            obj.visual = urdf.Visual();
            obj.inertial = urdf.Inertial();
            obj.addChild(obj.inertial);
            obj.addChild(obj.visual);
        end

        function addVisualComponent(obj, element)
            obj.visual.addVisualComponent(element);
        end

        function setOrigin(obj, roll, pitch, yaw, x, y, z)
            obj.inertial.setOrigin(roll, pitch, yaw, x, y, z);
            obj.visual.setOrigin(roll, pitch, yaw, x, y, z);
        end

        function setMass(obj, mass)
            obj.inertial.setMass(mass);
        end

        function setInertia(obj, ixx, iyy, izz)
            obj.inertial.setInertia(ixx, iyy, izz);
        end
    end
end

