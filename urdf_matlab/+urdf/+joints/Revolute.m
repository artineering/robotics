classdef Revolute < urdf.Joint
    % urdf.joints.Revolute class implements the revolute joint which has
    % properties such as lower, upper, effort and velocity.
    
    methods
        function obj = Revolute(name, parentLink, childLink, lower, upper, effort, velocity)
            obj@urdf.Joint(name, 'revolute', parentLink, childLink);

            limit = urdf.URDFTag('limit');
            limit.addAttribute('lower', num2str(lower));
            limit.addAttribute('upper', num2str(upper));
            limit.addAttribute('effort', num2str(effort));
            limit.addAttribute('velocity', num2str(velocity));

            obj.addChild(limit);
        end
    end
end

