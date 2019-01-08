classdef Attacker < handle
    %ATTACK attaker 干扰者
    % Exogenous attacker
    
    properties
        AttackNum;    %干扰者个数
        Player;
        action;
        n_AttackChannels_1;   % the attakced channels from unjammed channels
        n_AttackChannels_2;   %the attacked channels from jammed channels
    end
    
    
    methods
        function obj = Attacker(Player,AttackNum)
            obj.AttackNum = AttackNum;
            obj.Player = Player;
        end
        
        function action =GetAction(SenseResult,obj)
          
        end
        
        function action = get.action(obj)
            action = [obj.n_AttackChannels_1,obj.n_AttackChannels_2];
        end
    end
    
end

