% To use these test case generators, downloaded them into your HW08 folder and call them in the command window. 

% testMascotDarts    Tests the code in the mascotDarts function
    %    check = testMascotDarts  tests the mascotDarts function using 300 test cases. Returns a string showing the number of test cases passed.
    %    
    %    check = testMascotDarts(N)  tests the mascotDarts function using N test cases. Returns a string showing the number of test cases passed.
    %
    %    check = testMascotDarts(N,true)  tests the mascotDarts function using N test cases. Prints each test case into the command window along with a string detailing whether the code passed the test case. This might be useful for debugging. Returns a string showing the number of test cases passed.
    %
    %    Example: check = testMascotDarts(50)
    %             check --> 'Your code passed 50/50 test cases.'
    %
    %    Notes: 
    %    - For this function to work, it must be in the same folder as mascotDarts.m and mascotDarts_soln.p.
    %    - The test cases are not hard coded in the function; they are randomly generated. Feel free to use this function multiple times to get different test cases. 
    %    - The number of values in the test cases range from 8 to 24.
    %    - The values in the test cases include out, 5, 10, 15, 20, 25, 30, 35, 40, 45, and bullseye.
    %

    
% testFlashPass    Tests the code in the flashPass function
    %    check = testFlashPass  tests the flashPass function using 100 test cases. Returns a string showing the number of test cases passed.
    %    
    %    check = testFlashPass(N)  tests the flashPass function using N test cases. Returns a string showing the number of test cases passed.
    %
    %    check = testFlashPass(N,true)  tests the flashPass function using N test cases. Prints each test case into the command window along with a string detailing whether the code passed the test case. This might be useful for debugging. Returns a string showing the number of test cases passed.
    %
    %    Example: check = testFlashPass(50)
    %             check --> 'Your code passed 50/50 test cases.'
    %
    %    Notes: 
    %    - For this function to work, it must be in the same folder as flashPass.m and flashPass_soln.p.
    %    - The test cases are not hard coded in the function; they are randomly generated. Feel free to use this function multiple times to get different test cases. 
    %    - The rides' names in the test cases are between 1 and 20 letters long and may include lower & upper case letters, numbers, and special characters.
    %    - Each test case contains 1 to 10 rides.
    %
    
    
% testIHateLines    Tests the code in the iHateLines function
    %    check = testIHateLines  tests the iHateLines function using 100 test cases. Returns a string showing the number of test cases passed.
    %    
    %    check = testIHateLines(N)  tests the iHateLines function using N test cases. Returns a string showing the number of test cases passed.
    %
    %    check = testIHateLines(N,true)  tests the iHateLines function using N test cases. Prints each test case into the command window along with a string detailing whether the code passed the test case. This might be useful for debugging. Returns a string showing the number of test cases passed.
    %
    %    Example: check = testIHateLines(50)
    %             check --> 'Your code passed 50/50 test cases.'
    %
    %    Notes: 
    %    - For this function to work, it must be in the same folder as iHateLines.m and iHateLines_soln.p.
    %    - The test cases are not hard coded in the function; they are randomly generated. Feel free to use this function multiple times to get different test cases. 
    %    - The wait times in the test cases range from 1 to 90000. 
    %    - The number of wait times in the test cases range from 4 to 25.
    %
    
    
% testGtNightAtSixFlags.mat
% 
% This file is NOT a function. It is a collection of variables containing 2 edge test cases. To use it, copy & paste the following into the command window. You could also simply run this script.
%

load('testGtNightAtSixFlags.mat')

[finalMap4, route4] = gtNightAtSixFlags(map4, attractions4, directions4);
[finalMap4_soln, route4_soln] = gtNightAtSixFlags_soln(map4, attractions4, directions4);
check4 = isequal(finalMap4, finalMap4_soln) & isequal(route4, route4_soln)

[finalMap5, route5] = gtNightAtSixFlags(map5, attractions5, directions5);
[finalMap5_soln, route5_soln] = gtNightAtSixFlags_soln(map5, attractions5, directions5);
check5 = isequal(finalMap5, finalMap5_soln) & isequal(route5, route5_soln)


