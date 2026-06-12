% Codigo de ElectroMotion
A = 0.003;     
w = 75.40;       
B = 0.38;        

% Vector de tiempo
t = linspace(0, 0.25, 1000);

N_valor1 = 50;   % Valor experimental base
N_valor2 = 150;  % Valor aumentado para la comparación


% Onda para el Valor 1
FEM_valor1 = N_valor1 * B * A * w * sin(w * t);

% Onda para el Valor 2
FEM_valor2 = N_valor2 * B * A * w * sin(w * t);

figure('Name', 'Comparativa de la FEM inducida', 'NumberTitle', 'off');
plot(t, FEM_valor1, 'b-', 'LineWidth', 2); 
hold on; 
plot(t, FEM_valor2, 'r--', 'LineWidth', 2); 
title('Comparación de la FEM al variar el Número de Vueltas (N)');
xlabel('Tiempo (segundos)');
ylabel('Voltaje Producido (V)');
legend(['Valor 1: N = ' num2str(N_valor1) ' vueltas'], ...
       ['Valor 2: N = ' num2str(N_valor2) ' vueltas'], ...
       'Location', 'northeast');
grid on;
hold off;
