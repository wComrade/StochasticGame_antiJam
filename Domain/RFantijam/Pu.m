classdef Pu < handle
    %PU primary user
    
    properties
        PUnum;
        bandState;
        PuState;
        ProbTran;   %P{1->0}=P{1->1}=P{0->0}=P{0->1}=0.5
        PuStateSet;
    end
    
    methods
        function obj = Pu()
            obj.ProbTran = [0.5,0.5];
            obj.PuStateSet = [0,1];
            obj.PuState = 0;
        end
        
        function Init(obj)
            obj.PuState = 0;
        end
        
        function StateVariate(obj)
            RandChoice = rand;
            choice = 1;
            while RandChoice>sum(obj.ProbTran(1:choice))
                choice = choice + 1;
            end
            obj.PuState = obj.PuStateSet(choice);
        end
        
    end
    
end

