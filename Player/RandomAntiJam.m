classdef RandomAntiJam < handle
    %RANDOMANTIJAM 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        Statelist;
        StateIndexlist;
        StateNumlisted;
        ActionIndexSetCom;
        ActionSetCom;
        ActionIndexSetAttack;
        ActionSetAttack;
        StateNum;
    end
    
    methods
        
        function obj = RandomAntiJam()
            obj.StateIndexlist = [];
            obj.Statelist = cell(1,1);
            obj.ActionIndexSetCom = cell(1,1);
            obj.ActionSetCom = cell(1,1);
            obj.ActionIndexSetAttack = cell(1,1);
            obj.ActionSetAttack = cell(1,1);
            obj.StateNum = 0;
        end
        
        function Addstate( obj, state , ActionSetCom , ActionSetAttack)
            stateIndex = state.Index;
            obj.StateIndexlist( obj.StateNum+1 ) = stateIndex;
            obj.Statelist{ obj.StateNum+1 } = state;           
            obj.ActionIndexSetCom{ obj.StateNum+1 } = ActionSetCom{1};
            obj.ActionIndexSetAttack{ obj.StateNum+1 } = ActionSetAttack{1};
            obj.ActionSetCom{ obj.StateNum+1 } = ActionSetCom{2};
            obj.ActionSetAttack{ obj.StateNum+1 } = ActionSetAttack{2};
            obj.StateNum = obj.StateNum+1;
        end
        
        
        function actionChosen = chooseAction( obj, state)
            stateIndex = state.Index;
            stateIndexInlist = find( obj.StateIndexlist==stateIndex,1 );
            action_num = length(obj.ActionIndexSetCom{stateIndexInlist});
            choice = randsrc(1,1,action_num);
            actionChosen.action = transpose( obj.ActionSetCom{stateIndexInlist}(:,choice) );
            actionChosen.Index = obj.ActionIndexSetCom{stateIndexInlist}(choice);
        end

        function UpdatePolicy(obj,CurState,NextState,actions,reward)
            return;
        end
        
    end
    
end

