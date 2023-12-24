clear
clc
%% SHAHIN77HB December 2023
%%
n=input('How many rounds you want to play ? : ');
HumanWin=0;
ComputerWin=0;
i=1;
while i<n+1
    iHumanPlay=input('Choose 1 for rock, 2 for paper, or 3 for scissors.');
    if iHumanPlay ~= 1 & iHumanPlay ~= 2 & iHumanPlay ~= 3
        disp('Please Choose 1 for rock, 2 for paper, or 3 for scissors.')
    else
    iComputerPlay=randi(3);
    
    switch iHumanPlay
        case 1
            if iComputerPlay == 1
                gameResult = 'Tie!'
            elseif iComputerPlay == 2
                gameResult = 'You lose!'
                ComputerWin=ComputerWin+1;
                i=i+1;
            else
                gameResult = 'You win!'
                HumanWin=HumanWin+1;
                i=i+1;
            end
        case 2
            if iComputerPlay == 1
                gameResult = 'You win!'
                HumanWin=HumanWin+1;
                i=i+1;
            elseif iComputerPlay == 2
                gameResult = 'Tie!'
            else
                gameResult = 'You lose!'
                ComputerWin=ComputerWin+1;
                i=i+1;
            end
        case 3
            if iComputerPlay == 1
                gameResult = 'You lose!'
                ComputerWin=ComputerWin+1;
                i=i+1;
            elseif iComputerPlay == 2
                gameResult = 'You win!'
                HumanWin=HumanWin+1;
                i=i+1;
            else
                gameResult = 'Tie!'
            end     
    end
end
end

disp('--------------------------------------')
fprintf('You won %d times.\n',HumanWin);
fprintf('Computer won %d times.\n\n ',ComputerWin);
if HumanWin>ComputerWin
    fprintf('The winner is : YOU ! \n');
elseif HumanWin<ComputerWin
    fprintf('The winner is : Computer ! \n');
else
    fprintf('Game ended as a TIE !!!\n');
end





