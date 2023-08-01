    % testBigMilk    Tests the code in the bigMilk function
    %    check = testBigMilk  tests the bigMilk function using 20 test cases. Returns a string showing the number of test cases passed.
    %    
    %    check = testBigMilk(N)  tests the bigMilk function using N test cases. Returns a string showing the number of test cases passed.
    %
    %    check = testBigMilk(N,'all')  tests the bigMilk function using N test cases. Saves all the test cases into the current folder as excel files. Returns a string showing the number of test cases passed.
    %
    %    check = testBigMilk(N,'incorrect')  tests the bigMilk function using N test cases. Saves the test cases you didn't pass into the current folder as excel files. Returns a string showing the number of test cases passed.
    %
    %    check = testBigMilk(N,'error')  tests the bigMilk function using N test cases. Saves the test cases that lead to error into the current folder as excel files. Returns a string showing the number of test cases passed.
    %
    %    check = testBigMilk('delete')  Deletes all the excel files created by this function. Returns 'Files successfully deleted'.
    %
    %    Example: check = testBigMilk(10,'incorrect')
    %             check --> 'Your code passed 9/10 test cases.'
    %             A file named testBigMilktc6.xlsx is saved to your current folder.
    %
    %    Notes: 
    %    - For this function to work, it must be in the same folder as bigMilk.m and bigMilk_soln.p.
    %    - The test cases are not hard coded in the function; they are randomly generated. Feel free to use this function multiple times to get different test cases. 
    %    - This function defaults to 20 test cases because testing 100 cases takes a long time (due to the constant creation/deletion of excel files). For the same reason, avoid passing inputs greater than 50 into this function.
    %    - If your bigMilk function is prone to going into an infinite loop, fix the loop before using this function. This function does NOT stop/prevent/override infinite loops. 
    %    - Every time this function is used, it deletes the excel files previously created by this function. To permanently save the files created by this function, move them to a different folder or rename them so that they are no longer in the format of 'testBigMilktc___.xlsx'.
    %    - The number of rows and columns in the test cases range from 6 to 25.
    %    - The char values in the test cases have ASCII values ranging from 58 to 126. 
    %    - The number of "connected" char values in the test cases range from 2 to 110. There may be more "unconnected" char values.
    %
    
     
    % testBonesButNotTheTVShow    Tests the code in the bonesButNotTheTVShow function
    %    check = testBonesButNotTheTVShow  tests the bonesButNotTheTVShow function using 20 test cases. Returns a string showing the number of test cases passed.
    %    
    %    check = testBonesButNotTheTVShow(N)  tests the bonesButNotTheTVShow function using N test cases. Returns a string showing the number of test cases passed.
    %
    %    check = testBonesButNotTheTVShow(N,'all')  tests the bonesButNotTheTVShow function using N test cases. Saves all the test cases into the current folder as excel files. Saves another excel file containing the second inputs of the test cases. Returns a string showing the number of test cases passed.
    %
    %    check = testBonesButNotTheTVShow(N,'incorrect')  tests the bonesButNotTheTVShow function using N test cases. Saves the test cases you didn't pass into the current folder as excel files. Saves another excel file containing the second inputs of the incorrect test cases. Returns a string showing the number of test cases passed.
    %
    %    check = testBonesButNotTheTVShow(N,'error')  tests the bonesButNotTheTVShow function using N test cases. Saves the test cases that lead to error into the current folder as excel files. Saves another excel file containing the second inputs of the errored test cases. Returns a string showing the number of test cases passed.
    %
    %    check = testBonesButNotTheTVShow('delete')  Deletes all the excel files created by this function. Returns 'Files successfully deleted'.
    %
    %    Example: check = testBonesButNotTheTVShow(10,'incorrect')
    %             check --> 'Your code passed 9/10 test cases.'
    %             A file named testBonesButNotTheTVShowtc6.xlsx is saved to your current folder.
    %
    %    Notes: 
    %    - For this function to work, it must be in the same folder as bonesButNotTheTVShow.m and bonesButNotTheTVShow_soln.p.
    %    - The test cases are not hard coded in the function; they are randomly generated. Feel free to use this function multiple times to get different test cases. 
    %    - This function defaults to 20 test cases because testing 100 cases takes a long time (due to the constant creation/deletion of excel files). For the same reason, avoid passing inputs greater than 50 into this function.
    %    - Every time this function is used, it deletes all excel files previously created by this function. To permanently save the files created by this function, move them to a different folder or rename them so that they are no longer in the format of 'testBonesButNotTheTVShowtc___.xlsx'.
    %    - The number of rows in the test cases range from 2 to 11.
    %    - The costume names and themes in the test cases are between 3 and 12 characters long and may contain spaces and/or numbers.
    %    - The inventories in the test cases range from 0 to 4.
    %
    
    
    % testHipaaViolator  Tests the code in the hipaaViolator function
    %    check = testHipaaViolator  tests the hipaaViolator function using 20 test cases. Returns a string showing the number of test cases passed.
    %    
    %    check = testHipaaViolator(N)  tests the hipaaViolator function using N test cases. Returns a string showing the number of test cases passed.
    %
    %    check = testHipaaViolator(N,'all')  tests the hipaaViolator function using N test cases. Saves all the test cases into the current folder as excel files. Returns a string showing the number of test cases passed.
    %
    %    check = testHipaaViolator(N,'incorrect')  tests the hipaaViolator function using N test cases. Saves the test cases you didn't pass into the current folder as excel files. Returns a string showing the number of test cases passed.
    %
    %    check = testHipaaViolator(N,'error')  tests the hipaaViolator function using N test cases. Saves the test cases that lead to error into the current folder as excel files. Returns a string showing the number of test cases passed.
    %
    %    check = testHipaaViolator('delete')  Deletes all the excel files created by this function. Returns 'Files successfully deleted'.
    %
    %    Example: check = testHipaaViolator(10,'incorrect')
    %             check --> 'Your code passed 9/10 test cases.'
    %             A file named testHipaaViolatortc6.xlsx is saved to your current folder.
    %
    %    Notes: 
    %    - For this function to work, it must be in the same folder as hipaaViolator.m and hipaaViolator_soln.p.
    %    - The test cases are not hard coded in the function; they are randomly generated. Feel free to use this function multiple times to get different test cases. 
    %    - This function defaults to 20 test cases because testing 100 cases takes a long time (due to the constant creation/deletion of excel files). For the same reason, avoid passing inputs greater than 50 into this function.
    %    - Every time this function is used, it deletes all excel files previously created by this function. To permanently save the files created by this function, move them to a different folder or rename them so that they are no longer in the format of 'testHipaaViolatortc___.xlsx'.
    %    - The number of rows in the test cases range from 4 to 15.
    %    - The names in the test cases are between 3 and 12 characters long and may contain spaces and/or numbers.
    %    - The savings and salaries in the test cases are between 0 and 150 and 0 and 200, respectively. 
    %