

function result = miniMario(me, DS)

%all the cases I win

if (strcmp(me,'Yoshi')&strcmp(DS,'Peach'))|(strcmp(me,'Peach')&strcmp(DS,'Bowser'))|(strcmp(me,'Luigi')&strcmp(DS,'Peach'))|(strcmp(me,'Luigi')&strcmp(DS,'Yoshi'))|(strcmp(me,'Mario')&strcmp(DS,'Toad'))|(strcmp(me,'Mario')&strcmp(DS,'Yoshi'))|(strcmp(me,'Mario')&strcmp(DS,'Peach'))|(strcmp(me,'Mario')&strcmp(DS,'Luigi'))|(strcmp(me,'Bowser')&strcmp(DS,'Yoshi'))|(strcmp(me,'Bowser')&strcmp(DS,'Luigi'))|(strcmp(me,'Bowser')&strcmp(DS,'Mario'))     
  
    result = sprintf('I won against %s! This is a clear demonstration of my superior skill.',DS)
    
%all the cases I lost, which are symmetrical to all the cases I win
    
elseif(strcmp(DS,'Yoshi')&strcmp(me,'Peach'))|(strcmp(DS,'Peach')&strcmp(me,'Bowser'))|(strcmp(DS,'Luigi')&strcmp(me,'Peach'))|(strcmp(DS,'Luigi')&strcmp(me,'Yoshi'))|(strcmp(DS,'Mario')&strcmp(me,'Toad'))|(strcmp(DS,'Mario')&strcmp(me,'Yoshi'))|(strcmp(DS,'Mario')&strcmp(me,'Peach'))|(strcmp(DS,'Mario')&strcmp(me,'Luigi'))|(strcmp(DS,'Bowser')&strcmp(me,'Yoshi'))|(strcmp(DS,'Bowser')&strcmp(me,'Luigi'))|(strcmp(DS,'Bowser')&strcmp(me,'Mario'))
    
    result = sprintf('I lost against %s. This is a clear demonstration of a rigged game.',DS)
    
%all the cases I tied, which are the rest cases
    
else result = sprintf('I tied against %s.',DS)
end
    
end