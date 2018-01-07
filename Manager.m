function varargout = Manager(varargin)
% MANAGER MATLAB code for Manager.fig
%      MANAGER, by itself, creates a new MANAGER or raises the existing
%      singleton*.
%
%      H = MANAGER returns the handle to a new MANAGER or the handle to
%      the existing singleton*.
%
%      MANAGER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MANAGER.M with the given input arguments.
%
%      MANAGER('Property','Value',...) creates a new MANAGER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Manager_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Manager_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Manager

% Last Modified by GUIDE v2.5 06-Jan-2018 17:09:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Manager_OpeningFcn, ...
                   'gui_OutputFcn',  @Manager_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Manager is made visible.
function Manager_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Manager (see VARARGIN)

% Choose default command line output for Manager
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
set(handles.listbox1,'Visible','off')
set(handles.text4, 'Visible','off')
set(handles.pushbutton5,'Visible','off')
axes(handles.axes1)
matlabImage = imread('Desktop\manger.jpg');
imshow(matlabImage);
axis off
% UIWAIT makes Manager wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Manager_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'Visible','off')
set(handles.pushbutton2,'Visible','off')
set(handles.pushbutton3,'Visible','off')
set(handles.pushbutton5,'Visible','on')
set(handles.text4, 'Visible','on')

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'Visible','on')
set(handles.pushbutton2,'Visible','on')
set(handles.pushbutton3,'Visible','on')
run 'reports.m'

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'Visible','off')
set(handles.pushbutton2,'Visible','off')
set(handles.pushbutton3,'Visible','off')
set(handles.listbox1,'Visible','on')
set(handles.pushbutton5,'Visible','on')



% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
val = get(handles.listbox1,'Value');
   if val == 1
        delete(findall(findall(gcf,'Type','axe'),'Type','text'))
        set(handles.togglebutton1,'Visible','off')
        set(handles.togglebutton2,'Visible','off')
        set(handles.togglebutton3,'Visible','off')
        set(handles.togglebutton4,'Visible','off')
        set(handles.text14,'Visible','off');
        set(handles.text4,'Visible','off')
        set(handles.text5,'Visible','off')
        set(handles.text6,'Visible','off')
        set(handles.text7,'Visible','off')
        set(handles.text8, 'Visible','off');
        set(handles.text9, 'Visible','off');
        set(handles.text10, 'Visible','off');
        set(handles.text11, 'Visible','off');
        set(get(handles.axes1,'children'),'Visible','off')
   elseif val == 2
        open start.m
   elseif val == 3       
        open userselect.m
   elseif val == 4       
        open instructions.m
   elseif val == 5        
        open main.m
   elseif val == 6       
        open statisticlogin.m
   elseif val == 7        
        open reports.m
   elseif val == 8        
        open userlogin.m
   elseif val == 9        
        open advertisement.m
   elseif val == 10        
        open Manager.m
   elseif val == 11        
        open CalcFruit.m
   elseif val == 12        
        open Fruit.m
   elseif val == 13      
        open Shape.m
   elseif val == 14
        open SizeInPixels.m
   end

% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'Visible','on')
set(handles.pushbutton2,'Visible','on')
set(handles.pushbutton3,'Visible','on')
set(handles.listbox1,'Visible','off')
set(handles.pushbutton5,'Visible','off')
set(handles.text3, 'Visible','off');
set(handles.text4, 'Visible','off')
imshow('Desktop/manger.jpg');


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run 'userselect.m'
close(Manager)
