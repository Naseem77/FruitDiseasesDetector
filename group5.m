fprintf("Please pick one of 3 options\n");
fprintf("1- Normal User\n");
fprintf("2- statistic\n");
fprintf("3- manager\n");
pickuser = input('enter a pick: ');
if(pickuser == 1)%normal user
    fprintf("Welcome to fruits analyze\n");
    fprintf("Program will request from the user to input one of the fruits list\nthere will be a camera which require upload a picture from the user\nplus entering the size and the color from a list\nafter that will be image processing and for the uploaded pictures by user\nshowing the pictures for the user after the scan\nat the end there will be an option for checking another type of fruits\n");
    fprintf("1- Apple\n2- Banana\n3-Strawberry\n4-Pear\n5-Pineapple");
    pickfruit = input('Pick a fruit between 1 to 5: \n');
    if (pickfruit == 1)
      
      
    end
elseif(pickuser == 2)%statistic
   username1 = 'admin';
    password = 1;
    prompt = 'Enter the username ';
    username2 = input(prompt,'s');
    tf = strcmp(username1,username2);

    prompt = 'Enter the password ';
    password2 = input(prompt,'s');
    flag1 = 0;
    if (tf == 0 && password ~= password2)
        fprintf("false\n");
    else
        fprintf("true\n");
        flag1=1;

    end
    if(flag1==1)
        fprintf("Documents\n");
        fprintf("1- Reports about users amount\n2- Reports about furits useable\n3- Reports about money\n4- Reports about furits unuseable\n");
        pickreport = input('Pick a report between 1 to 4: \n');
        if(pickreport==1)
             fileID = fopen('test_name.txt','r');
            if fileID <0
                 fprintf('error');
                 return
            end
              line = fgets(fileID);
              fprintf(1,"%s",line);
              fclose(fileID);
        elseif(pickreport == 2)
            fprintf("2\n");
        elseif(pickreport == 3)
            fprintf("3\n");
        elseif(pickreport == 4)
            fprintf("4\n");

        end

    end

elseif(pickuser == 3)%manager
    username3 = 'admin2';
    password3 = 12;
    prompt = 'Enter the username ';
    username4 = input(prompt,'s');
    tf2 = strcmp(username3,username4);

    prompt = 'Enter the password ';
    password4 = input(prompt,'s');
    if (tf2 == 0 && password3 ~= password4)
        fprintf("false");
    else
        fprintf("true");

    end  


end
 
  