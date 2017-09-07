%% Clear command window and variables
clc, clear

%% Define ThingSpeak channel and write API key
delete(instrfindall);

ThingSpeak_channel = '325023';      % Set ThingSpeak Channel
Write_API_Key = 'GZWUL9NFMPGKR5UU'; % Set Write_API_Key
a = serial('COM3'); % connect to the arduino in order to read information. Check the Port to ensure the arduino is connected.
fopen(a);           % Open data from arduino



%% Build the ThingSpeak Web API call url and send data up to ThingSpeak.com

API='https://api.thingspeak.com/update?api_key='; % 1st part of url
field_equals1='&field1=';                         % 3rd part of url

while (1==1) % continuous loop
data_point = fscanf(a, '%f'); % reads the data from the arduino code
data_point=num2str(data_point); % Changes data to a string

url= [ API, Write_API_Key, field_equals1, data_point ]; % Combine the 4 parts for the url

% can post data to ThingSpeak.com every 15 seconds
webread(url); % send the url to Thingspeak to post the data
% ans = **number** will be retured, where **number** indicates
% the Entry ID of the data point uploaded.
% This Entry ID will be different for each data point uploaded


disp(['Using ThingSpeak Channel: ', ThingSpeak_channel])   % Display ThingSpeak Channel
disp(['Using Write API Key: ', Write_API_Key])             % Display write_api_key
disp(['Using Data Point: ', data_point])                   % Display light level
disp(['Sent API request: ',url])                           % Display the full url
pause(1) % wait 1 second for the response, ThingSpeak.com's response is not instant
disp(['Request Successful! Data Saved as entry ID: ',ans]) % Display ID entry
pause(14) % pause for 14 seconds

end
