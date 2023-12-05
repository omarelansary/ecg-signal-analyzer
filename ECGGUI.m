function varargout = ECGGUI(varargin)
% ECGGUI M-file for ECGGUI.fig
%      ECGGUI, by itself, creates a new ECGGUI or raises the existing
%      singleton*.
%
%      H = ECGGUI returns the handle to a new ECGGUI or the handle to
%      the existing singleton*.
%
%      ECGGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ECGGUI.M with the given input arguments.
%
%      ECGGUI('Property','Value',...) creates a new ECGGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ECGGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ECGGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ECGGUI

% Last Modified by GUIDE v2.5 18-Dec-2020 11:18:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ECGGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @ECGGUI_OutputFcn, ...
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


% --- Executes just before ECGGUI is made visible.
function ECGGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ECGGUI (see VARARGIN)

% Choose default command line output for ECGGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ECGGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ECGGUI_OutputFcn(hObject, eventdata, handles) 
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
global n
n=1;




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
global n
n=1;
disp(n);
[Filename,Pathname]=uigetfile('*.txt','File Selector');
name=strcat(Pathname,Filename);
A=dlmread(name');
[r c]=size(A);
x=A(:,1);
y=A(:,2);
for i=1:r
 while n==0
   global n;
 end
  plot(x(i),y(i)) 
  hold on
  plot(x(1:i),y(1:i))
  xlabel('Time (M)');
  ylabel('ECG (MV)');
  axis([0 10 -0.9 1.75])
  pause(0.03)
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n
n=0;




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


