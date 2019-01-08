classdef Com < handle
    %通信方，包含transmitter 以及 receiver
    
    properties
        SUnum;
        n_Data_1; % data channels chosen from unjammed channels at the end of 
        % time slot t
        n_Data_2;% data channels chosen from jammed channels at the end of
        % time slot t 
        n_Control_1; %control channels chosen from unjammed channels at the
        %end of time slot t
        n_Control_2; %control channels chosen from jammed channels at the
        %end of time slot t
        Player;   %the player policy
        action;
    end

    
    methods
        function obj = Com(Player)   %constructor
            obj.Player = Player;
        end
        
        function action = GetAction(obj,state)   %Output the action
            action = zeros(1,4);
            bandState = state(1);
            channelGain = state(2);
            if(bandState==1)   %if the Pu is active
                action=0;
                return;
            else
                
                
            end
        end
        
    
    end
    
end

