classdef Geometry < urdf.URDFTag
    %GEOMETRY Summary of this class goes here
    %   Detailed explanation goes here
    
    methods
        function obj = Geometry()
            %GEOMETRY Construct an instance of this class
            obj@urdf.URDFTag('geometry');
        end
        
        function addVisualComponent(obj, element)
            obj.addChild(element);
        end
    end
end

