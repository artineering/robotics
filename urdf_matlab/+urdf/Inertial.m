classdef Inertial < urdf.URDFTag
    %INERTIAL Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        origin
        mass
        inertia
    end
    
    methods
        function obj = Inertial()
            obj@urdf.URDFTag('inertial');

            % Create the mandatory child nodes.
            obj.origin = urdf.Origin();
            obj.mass = urdf.URDFTag('mass');
            obj.inertia = urdf.URDFTag('inertia');
            obj.addChild(obj.origin);
            obj.addChild(obj.mass);
            obj.addChild(obj.inertia);

            % Set defaults.
            obj.setOrigin(0,0,0,0,0,0);
            obj.mass.addAttribute('value', '1');
            obj.setInertia(1,1,1,1,1,1);
        end

        function setOrigin(obj, roll, pitch, yaw, x, y, z)
            obj.origin.reset(roll, pitch, yaw, x, y, z);
        end

        function setMass(obj, mass)
            obj.mass.addAttribute('value', mass);
        end

        function setInertia(obj, ixx, iyy, izz, ixy, iyz, ixz)
            obj.inertia.addAttribute('ixx', num2str(ixx));
            obj.inertia.addAttribute('iyy', num2str(iyy));
            obj.inertia.addAttribute('izz', num2str(izz));
            obj.inertia.addAttribute('ixy', num2str(ixy));
            obj.inertia.addAttribute('iyz', num2str(iyz));
            obj.inertia.addAttribute('ixz', num2str(ixz));
        end
    end
end

