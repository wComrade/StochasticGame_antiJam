clear all;
close all;
clc;
s = RandStream('mt19937ar','seed',2);
RandStream.setGlobalStream(s);
addpath('../RFantijam/');
channelNum = 8;
Channel = channel(1,channelNum);
Pu = Pu();
AntiJam = RFAntiJamtester(Channel,Pu);
actionA = [1,1,0,0];
actionB = [4,0];
AntiJam.playRound( actionA,actionB );
actionA = [3,1,1,1];
actionB = [2,2];
AntiJam.playRound( actionA,actionB );
Com = Com();
ActionSet = Com.findAvaliableAction([0,1,1,1],channelNum);