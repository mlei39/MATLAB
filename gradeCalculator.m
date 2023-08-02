
knowledgeHomeworkAverage = 92                
skillsHomeworkAverage = 102                  
quizHomeworkAverage = 100                    

tests = [91 93 79]                           
finalExam = 0                           

extraCreditSeminars = [80 100 90 100 80]          
extraCreditHW = 0                        

courseGrade = gradeCalc(knowledgeHomeworkAverage,skillsHomeworkAverage,...
                        quizHomeworkAverage,tests,finalExam,...
                        extraCreditSeminars,extraCreditHW)
                    
function courseGrade = gradeCalc(kHW,sHW,qHW,tests,final,ecS,ecHW)
    % Homework Grade Calculation
    hw = .05 * kHW + .15 * sHW + .05 * qHW;
    
    % Extra Credit Homework Calculation
    echw = ceil(((ecHW * 100 / 1300) * .15) * 100) / 100;
    % ^ Calculated as addition to final grade, because hw is calculated as 
    % final score (e.g. hw max. is 25%)
    hw = hw + echw;
    
    % Regular Distribution
    distribution1Grade = sum(.125*tests) + hw + .375 * final;
    
    % No Final Exam Distribution
    distribution3Grade = sum(.25*tests) + hw;
    
    % Lowest Exam Dropped Distribution
    [~,ind] = min(tests);
    tests(ind) = [];
    distribution2Grade = sum(.125*tests) + hw + .50*final;
    
    % Course Grade
    courseGrade = max([distribution1Grade distribution2Grade distribution3Grade]);
    
    % Extra Credit Seminar Factor
    courseGrade = courseGrade + sum(.25 * (ecS >= 70));
end

