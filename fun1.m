function [outputArg1,outputArg2] = persiFun(inputArg1,inputArg2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

persistent pvar

if isempty(pvar)
    pvar = 1;
else 
    pvar = pvar + 1;
    
end

outputArg1 = inputArg1 + pvar;
outputArg2 = inputArg2;
end

