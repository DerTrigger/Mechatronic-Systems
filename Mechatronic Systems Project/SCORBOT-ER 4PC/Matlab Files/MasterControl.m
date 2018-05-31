function varargout = MasterControl(varargin)
% MASTERCONTROL MATLAB code for MasterControl.fig
%      MASTERCONTROL, by itself, creates a new MASTERCONTROL or raises the existing
%      singleton*.
%
%      H = MASTERCONTROL returns the handle to a new MASTERCONTROL or the handle to
%      the existing singleton*.
%
%      MASTERCONTROL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MASTERCONTROL.M with the given input arguments.
%
%      MASTERCONTROL('Property','Value',...) creates a new MASTERCONTROL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MasterControl_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MasterControl_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MasterControl

% Last Modified by GUIDE v2.5 28-May-2018 14:21:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MasterControl_OpeningFcn, ...
                   'gui_OutputFcn',  @MasterControl_OutputFcn, ...
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


% --- Executes just before MasterControl is made visible.
function MasterControl_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MasterControl (see VARARGIN)

set_param('SimRobot/baseAngle','value','0');
set_param('SimRobot/arm1Angle','value','0');
set_param('SimRobot/arm2Angle','value','0');
set_param('SimRobot/clawAngle','value','0');
find_system('Name','SimRobot');
open_system('SimRobot');
% Choose default command line output for MasterControl
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

% set_param('SimRobot','SimulationCommand','start');
% set_param('SimRobot', 'SimulationCommand', 'update');
% UIWAIT makes MasterControl wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MasterControl_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function voltTxtbox_Callback(hObject, eventdata, handles)
% hObject    handle to voltTxtbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of voltTxtbox as text
%        str2double(get(hObject,'String')) returns contents of voltTxtbox as a double


% --- Executes during object creation, after setting all properties.
function voltTxtbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to voltTxtbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in voltPushbutton.
function voltPushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to voltPushbutton (see GCBO)
% set_param('SimRobot','SimulationCommand','stop');


% set_param('SimRobot', 'SimulationCommand','update');
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in exitButton.
function exitButton_Callback(hObject, eventdata, handles)
% hObject    handle to exitButton (see GCBO)
close('MasterControl');
set_param('SimRobot','SimulationCommand','stop');
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
set_param('SimRobot/Switch1','Threshold',num2str(...
    abs(str2double(get(handles.voltTxtbox,'string')))));
set_param('SimRobot/Switch2','Threshold',num2str(...
    abs(str2double(get(handles.edit2,'string')))));
set_param('SimRobot/Switch3','Threshold',num2str(...
    abs(str2double(get(handles.edit3,'string')))));
set_param('SimRobot/Switch4','Threshold',num2str(...
    abs(str2double(get(handles.edit4,'string')))));


set_param('SimRobot/baseAngle','value',get(handles.voltTxtbox, 'string'));
set_param('SimRobot/arm1Angle','value',get(handles.edit2, 'string'));
set_param('SimRobot/arm2Angle','value',get(handles.edit3, 'string'));
set_param('SimRobot/clawAngle','value',get(handles.edit4, 'string'));

set_param('SimRobot','SimulationCommand','start');
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in runButton.
function runButton_Callback(hObject, eventdata, handles)
% hObject    handle to runButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
