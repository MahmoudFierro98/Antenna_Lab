function varargout = Antennas_Bonus(varargin)
% ANTENNAS_BONUS MATLAB code for Antennas_Bonus.fig
%      ANTENNAS_BONUS, by itself, creates a new ANTENNAS_BONUS or raises the existing
%      singleton*.
%
%      H = ANTENNAS_BONUS returns the handle to a new ANTENNAS_BONUS or the handle to
%      the existing singleton*.
%
%      ANTENNAS_BONUS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ANTENNAS_BONUS.M with the given input arguments.
%
%      ANTENNAS_BONUS('Property','Value',...) creates a new ANTENNAS_BONUS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Antennas_Bonus_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Antennas_Bonus_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Antennas_Bonus

% Last Modified by GUIDE v2.5 01-Jan-2021 06:52:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Antennas_Bonus_OpeningFcn, ...
                   'gui_OutputFcn',  @Antennas_Bonus_OutputFcn, ...
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


% --- Executes just before Antennas_Bonus is made visible.
function Antennas_Bonus_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Antennas_Bonus (see VARARGIN)

% Choose default command line output for Antennas_Bonus
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Antennas_Bonus wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Antennas_Bonus_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in select.
function select_Callback(hObject, eventdata, handles)
select = get(handles.select,'Value');
set(handles.part1,        'Visible','off');
set(handles.part2,        'Visible','off');
set(handles.part3a,       'Visible','off');
set(handles.part3b,       'Visible','off');
set(handles.special_case, 'Visible','off');
set(handles.s1p,          'Visible','off');
set(handles.s2p,          'Visible','off');
set(handles.s3p,          'Visible','off');
set(handles.str,          'Visible','off');
set(handles.l_1,     'String','0');
set(handles.d_2,     'String','0');
set(handles.N_2,     'String','0');
set(handles.alpha_2, 'String','0');
set(handles.d_3a,    'String','0');
set(handles.N_3a,    'String','0');
set(handles.alpha_3a,'String','0');
set(handles.d_3b,    'String','0');
set(handles.N_3b,    'String','0');
set(handles.alpha_3b,'String','0');
set(handles.Ro_3b,   'String','0');
switch select
    case 1
        set(handles.part1,        'Visible', 'on');
        set(handles.special_case, 'Visible', 'on');
    case 2
        set(handles.part2, 'Visible', 'on');
    case 3
        set(handles.part3a,'Visible', 'on');
    case 4
        set(handles.part3b,'Visible', 'on');
end

% --- Executes during object creation, after setting all properties.
function select_CreateFcn(hObject, eventdata, handles)
% hObject    handle to select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_1_Callback(hObject, eventdata, handles)
% hObject    handle to l_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_1 as text
%        str2double(get(hObject,'String')) returns contents of l_1 as a double


% --- Executes during object creation, after setting all properties.
function l_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha_3a_Callback(hObject, eventdata, handles)
% hObject    handle to alpha_3a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha_3a as text
%        str2double(get(hObject,'String')) returns contents of alpha_3a as a double


% --- Executes during object creation, after setting all properties.
function alpha_3a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to alpha_3a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function N_3a_Callback(hObject, eventdata, handles)
% hObject    handle to N_3a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of N_3a as text
%        str2double(get(hObject,'String')) returns contents of N_3a as a double


% --- Executes during object creation, after setting all properties.
function N_3a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N_3a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_3a_Callback(hObject, eventdata, handles)
% hObject    handle to d_3a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d_3a as text
%        str2double(get(hObject,'String')) returns contents of d_3a as a double


% --- Executes during object creation, after setting all properties.
function d_3a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d_3a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_2_Callback(hObject, eventdata, handles)
% hObject    handle to d_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d_2 as text
%        str2double(get(hObject,'String')) returns contents of d_2 as a double


% --- Executes during object creation, after setting all properties.
function d_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function N_2_Callback(hObject, eventdata, handles)
% hObject    handle to N_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of N_2 as text
%        str2double(get(hObject,'String')) returns contents of N_2 as a double


% --- Executes during object creation, after setting all properties.
function N_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to N_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha_2_Callback(hObject, eventdata, handles)
% hObject    handle to alpha_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of alpha_2 as text
%        str2double(get(hObject,'String')) returns contents of alpha_2 as a double


% --- Executes during object creation, after setting all properties.
function alpha_2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_3b_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function d_3b_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function N_3b_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function N_3b_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function alpha_3b_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function alpha_3b_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ro_3b_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function Ro_3b_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sketch_buttom.
function sketch_buttom_Callback(hObject, eventdata, handles) 
Lambda = 1;
B      = (2*pi)/Lambda;
select = get(handles.select,'Value');
set(handles.special_case, 'Visible','off');
set(handles.s1p,          'Visible','off');
set(handles.s2p,          'Visible','off');
set(handles.s3p,          'Visible','off');
set(handles.str,          'Visible','off');
figure(1);
figure(2);
figure(3);
switch select
    case 1
        set(handles.special_case, 'Visible','on');
        l_1   = get(handles.l_1,'String');
        Theta = linspace(-pi,pi,350);
        Phi   = linspace(-2*pi,2*pi,350);
        L     = str2num(l_1) * Lambda;
        En    = abs((cos(((B*L)/2).*cos(Theta)) - cos((B*L)/2)) ./ sin(Theta));
        if (L < 0)
            set(handles.str, 'Visible','on');
            set(handles.str, 'ForegroundColor','r');
            set(handles.str, 'String', 'Error :: (L >= 0)');
            close(figure(1));
            close(figure(2));
            close(figure(3));
        else
            set(handles.str, 'Visible','on');
            set(handles.str, 'ForegroundColor','g');
            set(handles.str, 'String','Done');
            figure(1); 
            polar(Theta,En);
            view([90 90]);
            title('linear antenna (dipole of general length) - The 2D pattern of the dipole');
            Phi_3D   = meshgrid(Phi);
            Theta_3D = meshgrid(Theta);
            En_3D    = meshgrid(En);
            X        = En_3D.*sin(Theta_3D).*cos(Phi_3D'); 
            Y        = En_3D.*sin(Theta_3D).*sin(Phi_3D'); 
            Z        = En_3D.*cos(Theta_3D);
            figure(2); 
            surf(X,Y,Z,'EdgeColor','interp','FaceAlpha',0.1);
            axis vis3d;
            axis equal;
            lighting gouraud;
            title('linear antenna (dipole of general length) - The 3D pattern of the dipole');
            close(figure(3));
        end
    case 2
        d_2       = get(handles.d_2,     'String');
        N_2       = get(handles.N_2,     'String');
        alpha_2   = get(handles.alpha_2, 'String');
        d         = str2num(d_2) * Lambda;
        N         = str2num(N_2);
        alpha     = str2num(alpha_2);
        Gamma     = linspace(-pi,pi,6000);
        Phi       = linspace(-pi,pi,6000);
        ebsi      = B*d*cos(Gamma) + alpha;
        AF        = abs(sin((N*ebsi)/2) ./ (N * sin(ebsi/2)));
        if (d < 0)
            set(handles.str, 'Visible','on');
            set(handles.str, 'ForegroundColor','r');
            set(handles.str, 'String', 'Error :: (d >= 0)');
            close(figure(1));
            close(figure(2));
            close(figure(3));
        elseif (N < 0)
            set(handles.str, 'Visible','on');
            set(handles.str, 'ForegroundColor','r');
            set(handles.str, 'String', 'Error :: (N >= 0)');
            close(figure(1));
            close(figure(2));
            close(figure(3));
        else    
            set(handles.str, 'Visible','on');
            set(handles.str, 'ForegroundColor','g');
            set(handles.str, 'String','Done');    
            figure(1); 
            plot(ebsi,AF);
            title('Uniform linear antenna array (ULA) - array factor vs ebsi');
            xlabel('ebsi','fontsize',10);
            ylabel('AF','fontsize',10);
            figure(2); 
            polar(Gamma,AF);
            view([90 90]);
            title('Uniform linear antenna array (ULA) - The 2D pattern of the array');
            Phi_3D   = meshgrid(Phi);
            Gamma_3D = meshgrid(Gamma);
            AF_3D    = meshgrid(AF);
            X        = AF_3D.*sin(Gamma_3D).*cos(Phi_3D'); 
            Y        = AF_3D.*sin(Gamma_3D).*sin(Phi_3D'); 
            Z        = AF_3D.*cos(Gamma_3D);
            figure(3); 
            surf(X,Y,Z,'EdgeColor','interp','FaceAlpha',0.1);
            lighting gouraud;
            title('Uniform linear antenna array (ULA) - The 3D pattern of the array');
        end
    case 3
        d_3a     = get(handles.d_3a,     'String');
        N_3a     = get(handles.N_3a,     'String');
        alpha_3a = get(handles.alpha_3a, 'String');
        d        = str2num(d_3a) * Lambda;
        N        = str2num(N_3a);
        alpha    = str2num(alpha_3a);
        Theta    = linspace(-pi,pi,6000);
        Phi      = linspace(-pi,pi,6000);
        u        = (B*d*cos(Theta) + alpha)/2;
        AF       = abs(cos(u).^(N-1));
        if (d < 0)
            set(handles.str, 'Visible','on');
            set(handles.str, 'ForegroundColor','r');
            set(handles.str, 'String', 'Error :: (d >= 0)');
            close(figure(1));
            close(figure(2));
            close(figure(3));
        elseif (N < 0)
            set(handles.str, 'Visible','on');
            set(handles.str, 'ForegroundColor','r');
            set(handles.str, 'String', 'Error :: (N >= 0)');
            close(figure(1));
            close(figure(2));
            close(figure(3));
        else    
            set(handles.str, 'Visible','on');
            set(handles.str, 'ForegroundColor','g');
            set(handles.str, 'String','Done');    
            figure(1); 
            plot(u,AF);
            title('Nonuniformly-Fed linear antenna array | Binomial Arrays - array factor vs u');
            xlabel('u','fontsize',10);
            ylabel('AF','fontsize',10);
            figure(2); 
            polar(Theta,AF);
            view([90 90]);
            title('Nonuniformly-Fed linear antenna array | Binomial Arrays - The 2D pattern of the array');
            Phi_3D   = meshgrid(Phi);
            Theta_3D = meshgrid(Theta);
            AF_3D    = meshgrid(AF);
            X        = AF_3D.*sin(Theta_3D).*cos(Phi_3D'); 
            Y        = AF_3D.*sin(Theta_3D).*sin(Phi_3D'); 
            Z        = AF_3D.*cos(Theta_3D);
            figure(3); 
            surf(X,Y,Z,'EdgeColor','interp','FaceAlpha',0.1);
            axis vis3d;
            axis equal;
            lighting gouraud;
            title('Nonuniformly-Fed linear antenna array | Binomial Arrays - The 3D pattern of the array');
        end
    case 4
        d_3b     = get(handles.d_3b,     'String');
        N_3b     = get(handles.N_3b,     'String');
        alpha_3b = get(handles.alpha_3b, 'String');
        Ro_3b    = get(handles.Ro_3b,    'String');
        d        = str2num(d_3b) * Lambda;
        N        = str2num(N_3b);
        alpha    = str2num(alpha_3b);
        Ro       = str2num(Ro_3b);
        M        = N - 1;
        Zo       = cosh((1/M)*acosh(Ro));
        Z        = linspace(-Zo,Zo,6000);
        u_up     = acos(Z./Zo);
        u_down   = -u_up;
        u        = [u_down ; u_up];
        Theta1   = acos(((2.*u_down)-alpha)/(B*d));
        Theta2   = -Theta1;
        Phi      = linspace(-pi,pi,6000);
        AF       = abs(cosh(M.*acosh(Z)));
        if (d < 0)
            set(handles.str, 'Visible','on');
            set(handles.str, 'ForegroundColor','r');
            set(handles.str, 'String', 'Error :: (d >= 0)');
            close(figure(1));
            close(figure(2));
            close(figure(3));
        elseif (N < 0)
            set(handles.str, 'Visible','on');
            set(handles.str, 'ForegroundColor','r');
            set(handles.str, 'String', 'Error :: (N >= 0)');
            close(figure(1));
            close(figure(2));
            close(figure(3));
        elseif (Ro <= 1)
            set(handles.str, 'Visible','on');
            set(handles.str, 'ForegroundColor','r');
            set(handles.str, 'String', 'Error :: always (Ro > 1)');
            close(figure(1));
            close(figure(2));
            close(figure(3));
        else    
            set(handles.str, 'Visible','on');
            set(handles.str, 'ForegroundColor','g');
            set(handles.str, 'String','Done'); 
            figure(1); 
            plot(Z,AF);
            title('Nonuniformly-Fed linear antenna array | Dolph-Tshebysceff Arrays - array factor vs Z');
            xlabel('Z','fontsize',10);
            ylabel('AF','fontsize',10);
            figure(2); 
            polar(Theta1,AF,'-b');
            hold on;
            polar(Theta2,AF,'-b');
            view([90 90]);
            title('Nonuniformly-Fed linear antenna array | Dolph-Tshebysceff Arrays - The 2D pattern of the array');
            Phi_3D   = meshgrid(Phi);
            Theta_3D = meshgrid(Theta1);
            AF_3D    = meshgrid(AF);
            X        = AF_3D.*sin(Theta_3D).*cos(Phi_3D'); 
            Y        = AF_3D.*sin(Theta_3D).*sin(Phi_3D'); 
            Z_       = AF_3D.*cos(Theta_3D);
            figure(3); 
            surf(X,Y,Z_,'EdgeColor','interp','FaceAlpha',0.1);
            axis vis3d;
            axis equal;
            lighting gouraud;
            title('Nonuniformly-Fed linear antenna array | Dolph-Tshebysceff Arrays - The 3D pattern of the array');
        end
end

% --- Executes on button press in reset_button.
function reset_button_Callback(hObject, eventdata, handles)
set(handles.select,       'Value',1);
set(handles.part1,        'Visible','on');
set(handles.part2,        'Visible','off');
set(handles.part3a,       'Visible','off');
set(handles.part3b,       'Visible','off');
set(handles.special_case, 'Visible','on');
set(handles.s1p,          'Visible','off');
set(handles.s2p,          'Visible','off');
set(handles.s3p,          'Visible','off');
set(handles.str,          'Visible','off');
set(handles.l_1,     'String','0');
set(handles.d_2,     'String','0');
set(handles.N_2,     'String','0');
set(handles.alpha_2, 'String','0');
set(handles.d_3a,    'String','0');
set(handles.N_3a,    'String','0');
set(handles.alpha_3a,'String','0');
set(handles.d_3b,    'String','0');
set(handles.N_3b,    'String','0');
set(handles.alpha_3b,'String','0');
set(handles.Ro_3b,   'String','0');
close(figure(1));
close(figure(2));
close(figure(3));


% --- Executes on button press in s1.
function s1_Callback(hObject, eventdata, handles)
Lambda = 1;
B      = (2*pi)/Lambda;
set(handles.s1p,'Visible','on');
set(handles.s2p,'Visible','off');
set(handles.s3p,'Visible','off');
set(handles.str,'Visible','off');
Theta = linspace(-pi,pi,350);
Phi   = linspace(-2*pi,2*pi,350);
L     = (1/50) * Lambda;
En    = abs(sin(Theta));
set(handles.str, 'Visible','on');
set(handles.str, 'ForegroundColor','g');
set(handles.str, 'String','Done');
figure(1); 
polar(Theta,En);
view([90 90]);
title('Infinte small dipole - The 2D pattern of the dipole');
Phi_3D   = meshgrid(Phi);
Theta_3D = meshgrid(Theta);
En_3D    = meshgrid(En);
X        = En_3D.*sin(Theta_3D).*cos(Phi_3D'); 
Y        = En_3D.*sin(Theta_3D).*sin(Phi_3D'); 
Z        = En_3D.*cos(Theta_3D);
figure(2); 
surf(X,Y,Z,'EdgeColor','interp','FaceAlpha',0.1);
axis vis3d;
axis equal;
lighting gouraud;
title('Infinte small dipole - The 3D pattern of the dipole');
close(figure(3));
       
% --- Executes on button press in s2.
function s2_Callback(hObject, eventdata, handles)
Lambda = 1;
B      = (2*pi)/Lambda;
set(handles.s2p,'Visible','on');
set(handles.s1p,'Visible','off');
set(handles.s3p,'Visible','off');
set(handles.str,'Visible','off');
Theta = linspace(-pi,pi,350);
Phi   = linspace(-2*pi,2*pi,350);
L     = (1/10) * Lambda;
En    = abs(sin(Theta));
set(handles.str, 'Visible','on');
set(handles.str, 'ForegroundColor','g');
set(handles.str, 'String','Done');
figure(1); 
polar(Theta,En);
view([90 90]);
title('Short dipole - The 2D pattern of the dipole');
Phi_3D   = meshgrid(Phi);
Theta_3D = meshgrid(Theta);
En_3D    = meshgrid(En);
X        = En_3D.*sin(Theta_3D).*cos(Phi_3D'); 
Y        = En_3D.*sin(Theta_3D).*sin(Phi_3D'); 
Z        = En_3D.*cos(Theta_3D);
figure(2); 
surf(X,Y,Z,'EdgeColor','interp','FaceAlpha',0.1);
axis vis3d;
axis equal;
lighting gouraud;
title('Short dipole - The 3D pattern of the dipole');
close(figure(3));

% --- Executes on button press in s3.
function s3_Callback(hObject, eventdata, handles)
Lambda = 1;
B      = (2*pi)/Lambda;
set(handles.s3p,'Visible','on');
set(handles.s1p,'Visible','off');
set(handles.s2p,'Visible','off');
set(handles.str,'Visible','off');
Theta = linspace(-pi,pi,350);
Phi   = linspace(-2*pi,2*pi,350);
L     = (1/2) * Lambda;
En    = abs((cos(((B*L)/2).*cos(Theta)) - cos((B*L)/2)) ./ sin(Theta));
set(handles.str, 'Visible','on');
set(handles.str, 'ForegroundColor','g');
set(handles.str, 'String','Done');
figure(1); 
polar(Theta,En);
view([90 90]);
title('lambda/2 dipole - The 2D pattern of the dipole');
Phi_3D   = meshgrid(Phi);
Theta_3D = meshgrid(Theta);
En_3D    = meshgrid(En);
X        = En_3D.*sin(Theta_3D).*cos(Phi_3D'); 
Y        = En_3D.*sin(Theta_3D).*sin(Phi_3D'); 
Z        = En_3D.*cos(Theta_3D);
figure(2); 
surf(X,Y,Z,'EdgeColor','interp','FaceAlpha',0.1);
axis vis3d;
axis equal;
lighting gouraud;
title('lambda/2 dipole - The 3D pattern of the dipole');
close(figure(3));
