
function varargout = ProyectoBi(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ProyectoBi_OpeningFcn, ...
                   'gui_OutputFcn',  @ProyectoBi_OutputFcn, ...
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



function ProyectoBi_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

guidata(hObject, handles);

function varargout = ProyectoBi_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)

function edit1_CreateFcn(hObject, eventdata, handles)


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)



function edit2_CreateFcn(hObject, eventdata, handles)


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function btnPredecir_Callback(hObject, eventdata, handles)
%global monto;  
%set(handles.txtpredictor, 'string', monto);
%global matrizSucursal;
%set(handles.txtpredictor, 'string', mat2str(matrizSucursal));
global monto;
global tasaInteres;
global plazoMeses; 
global matrizOne;
global matrizGenero;
global matrizTitulo;
global numeroHijos; 
global matrizOcupacion;
global matrizSucursal;
global numeroGarantes; 
global matrizCasa;
global matrizIess;
global matrizDepartamento;
global matrizEstCivil;
vector_datos = horzcat(monto,tasaInteres,plazoMeses,numeroHijos,numeroGarantes,matrizEstCivil, ...
    matrizTitulo,matrizOne,matrizGenero, matrizOcupacion,matrizSucursal, matrizCasa, matrizDepartamento, ...
    matrizIess);
[y1] = funcionPrediccionO(vector_datos)
%[val, label_hat] = max(y1)
%[y1] = funcionPrediccion(vector_datos)
%val = max(y1)
%label_hat = max(y1)
max_valor = y1(1);  
max_posicion = 1; 

for i = 2:length(y1)
    if y1(i) > max_valor
        max_valor = y1(i);
        max_posicion = i;
    end
end
fprintf('El máximo valor es %f en la posición %d\n', max_valor, max_posicion);

switch(max_posicion)
    case 1
        set(handles.txtpredictor, 'string', "PRESTAMO HIPOTECARIO");
    case 2 
        set(handles.txtpredictor, 'string', "PRESTAMO SOBRE FIRMAS O QUIROGRAFARIO");
    case 3 
        set(handles.txtpredictor, 'string', "PRESTAMO PARA LA MUJER");
    case 4 
        set(handles.txtpredictor, 'string', "PRESTAMO PENDIENTE");
end






function listbox2_CreateFcn(hObject, eventdata, handles)


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMonto_Callback(hObject, eventdata, handles)
global monto;  
monto  = str2double(get(hObject,'String'));

function txtMonto_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtTasaInteres_Callback(hObject, eventdata, handles)
global tasaInteres;  
tasaInteres  = str2double(get(hObject,'String'));

function txtTasaInteres_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtPlazoMese_Callback(hObject, eventdata, handles)
global plazoMeses;  
plazoMeses  = str2double(get(hObject,'String'));

function txtPlazoMese_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function ltboxCuenta_Callback(hObject, eventdata, handles)
    global matrizOne;
    valor_cuenta = get(handles.ltboxCuenta, 'value');
    
    matrizOneCuenta = [1,0;0,1];
    switch(valor_cuenta)
        case 2 
        matrizOne = matrizOneCuenta(1, :);
        case 3
       matrizOne = matrizOneCuenta(2, :);
    end

function ltboxCuenta_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lstboxGenero.
function lstboxGenero_Callback(hObject, eventdata, handles)
global matrizGenero;
    valor_genero = get(handles.lstboxGenero, 'value');
    matrizOneGenero = [1,0;0,1];
    switch(valor_genero)
        case 2 
        matrizGenero = matrizOneGenero(1, :);
        case 3
       matrizGenero = matrizOneGenero(2, :);
    end

function lstboxGenero_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function lstboxEstCivil_Callback(hObject, eventdata, handles)
global matrizEstCivil;
    valor_est_civil = get(handles.lstboxEstCivil, 'value');
    
    %matrizOneDepartamento = [1,0;0,1];
    matriz_est = [1; 2; 3; 4; 5];
    %Matriz one
    label = (matriz_est == 1:length(unique(matriz_est)));
    matriz0neEstCivil = label;
    switch(valor_est_civil)
        case 2 
            matrizEstCivil = matriz0neEstCivil(1,:);
        case 3
             matrizEstCivil = matriz0neEstCivil(2,:);
       case 4
            matrizEstCivil = matriz0neEstCivil(3,:);
       case 5
             matrizEstCivil = matriz0neEstCivil(4,:);
       case 6
             matrizEstCivil = matriz0neEstCivil(5,:);
    end









function lstboxEstCivil_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function lstboxTitulo_Callback(hObject, eventdata, handles)
global matrizTitulo;
    valor_titulo = get(handles.lstboxTitulo, 'value');
    
   
    matriz_titulo = [1; 2; 3; 4; 5;6;7;8;9;10;11;12;13;14];
    %Matriz one
    label = (matriz_titulo == 1:length(unique(matriz_titulo)));
    matriz0neTitulo = label;
    switch(valor_titulo)
        case 2 
            matrizTitulo = matriz0neTitulo(1,:);
        case 3
            matrizTitulo = matriz0neTitulo(2,:);
       case 4
            matrizTitulo = matriz0neTitulo(3,:);
       case 5
            matrizTitulo = matriz0neTitulo(4,:);
       case 6
            matrizTitulo = matriz0neTitulo(5,:);
       case 7
            matrizTitulo = matriz0neTitulo(6,:);
       case 8
            matrizTitulo = matriz0neTitulo(7,:);
       case 9
            matrizTitulo = matriz0neTitulo(8,:);
       case 10
            matrizTitulo = matriz0neTitulo(9,:);
        case 11
            matrizTitulo = matriz0neTitulo(10,:);
       case 12
            matrizTitulo = matriz0neTitulo(11,:);
       case 13
            matrizTitulo = matriz0neTitulo(12,:);
       case 14
            matrizTitulo = matriz0neTitulo(13,:);
       case 15
            matrizTitulo = matriz0neTitulo(14,:);
         
    end


function lstboxTitulo_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtNumHijos_Callback(hObject, eventdata, handles)
global numeroHijos;  
numeroHijos  = str2double(get(hObject,'String'));

function txtNumHijos_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function lstboxOcupacion_Callback(hObject, eventdata, handles)
global matrizOcupacion;
    valor_ocupacion = get(handles.lstboxOcupacion, 'value');
    matrizOcupacion = [1; 2; 3; 4; 5;6;7;8;9;10;11;12;13;14];
    %Matriz one
    label = (matrizOcupacion == 1:length(unique(matrizOcupacion)));
    matriz0neOcupacion = label;
    switch(valor_ocupacion)
        case 2 
            matrizOcupacion = matriz0neOcupacion(1,:);
        case 3
            matrizOcupacion = matriz0neOcupacion(2,:);
       case 4
            matrizOcupacion = matriz0neOcupacion(3,:);
       case 5
            matrizOcupacion = matriz0neOcupacion(4,:);
       case 6
            matrizOcupacion = matriz0neOcupacion(5,:);
       case 7
            matrizOcupacion = matriz0neOcupacion(6,:);
       case 8
            matrizOcupacion = matriz0neOcupacion(7,:);
       case 9
            matrizOcupacion = matriz0neOcupacion(8,:);
       case 10
            matrizOcupacion = matriz0neOcupacion(9,:);
        case 11
            matrizOcupacion = matriz0neOcupacion(10,:);
       case 12
            matrizOcupacion = matriz0neOcupacion(11,:);
       case 13
            matrizOcupacion = matriz0neOcupacion(12,:);
       case 14
            matrizOcupacion = matriz0neOcupacion(13,:);
       case 15
            matrizOcupacion = matriz0neOcupacion(14,:);
         
    end



function lstboxOcupacion_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in lstboxSucursal.
function lstboxSucursal_Callback(hObject, eventdata, handles)
global matrizSucursal;
    valor_sucursal = get(handles.lstboxSucursal, 'value');
    matrizOneSucursal = [1,0,0,0,0;
                        0,1,0,0,0;
                        0,0,1,0,0;
                        0,0,0,1,0;
                        0,0,0,0,1];
    switch(valor_sucursal)
        case 2 
            matrizSucursal = matrizOneSucursal(1, :);
        case 3
            matrizSucursal = matrizOneSucursal(2, :);
        case 4
            matrizSucursal = matrizOneSucursal(3, :);
        case 5
            matrizSucursal = matrizOneSucursal(4, :);
        case 6
            matrizSucursal = matrizOneSucursal(5, :);
    end



function lstboxSucursal_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function lstboxDepartamento_Callback(hObject, eventdata, handles)
global matrizDepartamento;
    valor_departamento = get(handles.lstboxDepartamento, 'value');
    
    matrizOneDepartamento = [1,0;0,1];
    switch(valor_departamento)
        case 2 
        matrizDepartamento = matrizOneDepartamento(1, :);
        case 3
       matrizDepartamento = matrizOneDepartamento(2, :);
    end



function lstboxDepartamento_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function lstboxCasa_Callback(hObject, eventdata, handles)
global matrizCasa;
    valor_casa = get(handles.lstboxCasa, 'value');
    
    matrizOneCasa = [1,0;0,1];
    switch(valor_casa)
        case 2 
        matrizCasa = matrizOneCasa(1, :);
        case 3
       matrizCasa = matrizOneCasa(2, :);
    end


function lstboxCasa_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtNumGarantes_Callback(hObject, eventdata, handles)
global numeroGarantes;  
numeroGarantes  = str2double(get(hObject,'String'));

function txtNumGarantes_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function lstboxIess_Callback(hObject, eventdata, handles)
global matrizIess;
    valor_iess = get(handles.lstboxIess, 'value');
    
    matrizOneIess = [1,0;0,1];
    switch(valor_iess)
        case 2 
        matrizIess = matrizOneIess(1, :);
        case 3
       matrizIess = matrizOneIess(2, :);
    end

function lstboxIess_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
