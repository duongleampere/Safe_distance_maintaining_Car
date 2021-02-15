function varargout = GUI_DO_AN_7_3(varargin)
% GUI_DO_AN_7_3 MATLAB code for GUI_DO_AN_7_3.fig
%      GUI_DO_AN_7_3, by itself, creates a new GUI_DO_AN_7_3 or raises the existing
%      singleton*.
%
%      H = GUI_DO_AN_7_3 returns the handle to a new GUI_DO_AN_7_3 or the handle to
%      the existing singleton*.
%
%      GUI_DO_AN_7_3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_DO_AN_7_3.M with the given input arguments.
%
%      GUI_DO_AN_7_3('Property','Value',...) creates a new GUI_DO_AN_7_3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_DO_AN_7_3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_DO_AN_7_3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_DO_AN_7_3

% Last Modified by GUIDE v2.5 03-Jul-2020 21:42:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_DO_AN_7_3_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_DO_AN_7_3_OutputFcn, ...
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


% --- Executes just before GUI_DO_AN_7_3 is made visible.
function GUI_DO_AN_7_3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_DO_AN_7_3 (see VARARGIN)

% Choose default command line output for GUI_DO_AN_7_3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_DO_AN_7_3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_DO_AN_7_3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
axes(handles.axes3);
imshow(imread('h1.png'));
axes(handles.axes4);
imshow(imread('h2.png'));
axes(handles.axes1);


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%clear all;
time = str2num(get(handles.edit1,'string'))*2;
blah = get(handles.uibuttongroup2,'SelectedObject');
blah1 = get(blah,'String');
blah2 = get(handles.checkbox1,'value');
 %set(handles.text2,'string',time);
 %%%%%%%%%%%%%%%%%%%%%%%%
 global mode;
 mode = (get(handles.popupmenu3,'value'));
 %%%%%%%%%%%%%%%%%%%%%%%
global a;
global b;
global i;
if(blah1 == '1')
sp = 15;
end
if(blah1 == '2')
sp = 27;
end
delete(instrfind) % xoa cong port dang co
a = serial('COM3','BaudRate',9600,'Timeout',10);
x = 0; i = 0;
t = [1:300]*0.5;
y = ones(1,300)*20;
b = ones(1,300)*20;
%index = 1;
fopen(a);
if(mode == 2)  
    fwrite(a,220);
    %ylim([0,30])
end
if(mode == 1) 
    fwrite(a,120);
end
for i = 1:time
    if(a.Status(1) == 'o')
    if(mode == 3)   
        if(i > 295)
           fwrite(a,020);
        end
       if(blah1 == '1')
       if(i == 30 || i == 60)
           sp = sp + 6;
       end
       if(i == 90||i == 120||i == 150||i == 180)
           sp = sp - 4;
       end
       if(i == 210|| i == 240 || i == 270 || i == 300)
           sp = sp + 5;
       end
       end
       if(blah1 == '2')
       if(i == 30 || i == 60||i == 90||i == 120)
           sp = sp - 4;
       end
       if(i == 150 || i == 180 || i == 210)
           sp = sp + 5;
       end
       if(i == 240 || i == 270)
           sp = sp - 4;
       end
       if(i == 300)
           sp = sp + 6;
       end
       end
       if(i == 1||i == 30 || i == 60 || i == 90||i == 120||i == 150 || i == 180 || i == 210||i == 240 || i == 270||i == 300)
          % if(sp == 15 || sp == 27)
         %   fwrite(a, 100 + sp); 
        %   end
        % if(sp ~= 15 && sp ~= 27)
             fwrite(a, 100 + sp);
         %end
       end
        %end
        b1 = ones(1,300)*sp;
        b(i:300) = b1(i:300);
    end    
    dis = fscanf(a);
    if(dis)
    if(dis(1) == 'd')
    dis = str2double(dis(2:(length(dis)-1)));
    if(dis ~= 0)
        fwrite(a,255);
    end
    end
    set(handles.text2,'string',dis);
    x= [x,dis];
    if(mode == 2)
    plot(t,y,'b','linewidth',4);
    hold on
    end
    if(mode == 1 || mode == 3)
    plot(t(1:i),b(1:i),'b','linewidth',5);
    hold on
    end
    plot(t(1:i),x(1:i),'r','LineWidth',1)
     if(blah2 == 1)
       grid on;
     end
     if(blah2 == 0)
       grid off;
    end
    %grid on;
    hold off
    %ylim([0,30])
    if(mode == 1 || mode == 3)  
    %fwrite(a,120);
    ylim([-20,45])
    xlim([0,time/2 + 30])
    end
    if(mode == 2) 
    %fwrite(a,220);
    ylim([-50,80])
    end
    xlabel('Time \rightarrow')
    ylabel('distance\rightarrow');
    title('Real-Time Distance Plot');
    drawnow
    end
    end
    if(a.Status(1) == 'c')
        break;
    end
end
    fwrite(a,020);
    pause(5);
   % fclose(a);
    return;
%    hold off





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


% --- Executes on button press in send.
function send_Callback(hObject, eventdata, handles)
% hObject    handle to send (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global distance;
global b;
global i;
distance = (get(handles.set,'string'));
b1 = ones(1,300)*str2num(distance);
b(i:300) = b1(i:300);
 %set(handles.text2,'string',time);
global a;
global mode;
%delete(instrfind) % xoa cong port dang co
%a = serial('COM7','BaudRate',9600,'Timeout',10);  
%fopen(a);
  % if(distance <= '9') distance = strcat('10',distance);
  if(str2double(distance) >= 10) 
      distance = strcat('1',distance);
  end
  if(str2double(distance) < 10)
       distance = strcat('10',distance);
  end
    dis1 = str2num(distance);
   if(mode == 1) 
       fwrite(a, dis1);
   end
    %fclose(a);



function set_Callback(hObject, eventdata, handles)
% hObject    handle to set (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of set as text
%        str2double(get(hObject,'String')) returns contents of set as a double


% --- Executes during object creation, after setting all properties.
function set_CreateFcn(hObject, eventdata, handles)
% hObject    handle to set (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes4


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  global a;
  global i;
  %i = 150;
 %fwrite(a,020);
  fclose(a);
 return;


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1
