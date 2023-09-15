% instantiate the library
disp('Loading the library...');
lib = lsl_loadlib();

% UDP Info
global u
u = udp('127.0.0.1', 8888);
fopen(u);

% Bandpass filter design
Fs = 240;  % Sampling Frequency - adjust as per your actual sampling rate
lowFreq = 0.01;  % Low cutoff frequency
highFreq = 0.5;  % High cutoff frequency
[b, a] = butter(4, [lowFreq highFreq] / (Fs/2), 'bandpass');  % 4th order Butterworth bandpass filter

% Constants based on pilot 2, NIRS lab Hemodynamic state params
epsilon_HbR = 1798.64;  % Molar extinction coefficient for HbR at 850 nm in cm-1/M
DPF_850 = 6.38;  % Differential pathlength factor for 850 nm

% resolve a stream...
disp('Resolving an NIRS stream...');
result = {};
while isempty(result)
    result = lsl_resolve_byprop(lib, 'type', 'NIRS');
end

% create a new inlet
disp('Opening an inlet...');
inlet = lsl_inlet(result{1});

disp('Now receiving data...');
while true
    % get data from the inlet
    [vec, ts] = inlet.pull_sample();
    
    % Region-specific mappings raw voltage concentrations
    hbrChannels = [1, 2, 26, 27, 28, 32, 34, 3, 4, 5, 7, 8, 14, 24, 30, 33, 35, 36, 37, 39, 42, 10, 11, 12, 13, 41, 16, 17, 18, 19, 46, 47, 49, 50] + 50;  % Assuming HbR channels are 50 indices ahead of HbO channels
    
    filteredVecHbR = filter(b, a, vec(1, hbrChannels));
    
    % Applying the modified Beer-Lambert Law for HbR
    Delta_C_HbR = (DPF_850 .* filteredVecHbR) ./ (epsilon_HbR);
    
    % Extract and send HbR channel densities
    for idx = 1:numel(hbrChannels)
        channel = hbrChannels(idx);
        value = Delta_C_HbR(idx);  % Using calculated HbR densities
        oscsend(u, sprintf('/Density/HbR/Channel%d', idx), 'f', value);
    end
    
    % Pause for a short duration before processing the next sample
    % pause(1);  % You can adjust the duration as needed
end

fclose(u);
