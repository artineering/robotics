classdef Cylinder < urdf.URDFTag
    %CYLINDER Summary of this class goes here
    %   Detailed explanation goes here
    
    methods
        function obj = Cylinder(radius, length)
            obj@urdf.URDFTag('cylinder');
            obj.addAttribute('radius', num2str(radius));
            obj.addAttribute('length', num2str(length));
        end
    end
end

