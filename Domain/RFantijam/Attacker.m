classdef Attacker < handle
    %ATTACK attaker ������
    % Exogenous attacker
    
    properties
        AttackNum;    %�����߸���
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
