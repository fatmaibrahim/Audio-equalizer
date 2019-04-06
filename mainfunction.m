

file_name='125.wav';
rate=2;
filter_type=1;
g_1=2;
g_2=2;
g_3=2;
g_4=2;
g_5=2;
g_6=2;
g_7=2;
g_8=2;
g_9=2;
band_num=3;
base=true;
%input file from the user and read it
[x,Fs]=audioread(file_name);
%choosing the rate 
if rate == 1
    rate = Fs;
end
if rate==2
    rate = Fs * 0.5;
end
if rate==3
       rate = Fs * 2;
end
        %the original sound
        sound(x, rate);
        %plotting the original signal in time domain
        t=linspace(0, length(x)/Fs,length(x));
        plot(t, x); 
        %plotting in frequency domain
         Nfft = length(x);
        f=linspace(0, Fs, Nfft);
        G=abs(fft(x, Nfft));
        figure;
        plot(f(1:Nfft/2), G(1:Nfft/2));
%choosing filter type (FIR rectanguar window or IIR) 
if filter_type == 1
     H_1=rectangular1(Fs);
     H_2=rectangular2(Fs);
     H_3=rectangular3(Fs);
     H_4=rectangular4(Fs);
     H_5=rectangular5(Fs);
     H_6=rectangular6(Fs);
     H_7=rectangular7(Fs);
     H_8=rectangular8(Fs);
     H_9=rectangular9(Fs);
end

 if filter_type == 2
     H_1=IIR_1(Fs);
     H_2=IIR_2(Fs);
     H_3=IIR_3(Fs);
     H_4=IIR_4(Fs);
     H_5=IIR_5(Fs);
     H_6=IIR_6(Fs);
     H_7=IIR_7(Fs);
     H_8=IIR_8(Fs);
     H_9=IIR_9(Fs);
 end
%plotting the virtualization of the chosen band filter
switch band_num
               case 1
                    grpdelay(H_1);
               case 2
                   grpdelay(H_2);
               case 3
                   grpdelay(H_3);
               case 4
                   grpdelay(H_4);
               case 5
                   grpdelay(H_5);
               case 6
                   grpdelay(H_6);
               case 7
                   grpdelay(H_7);
               case 8
                   grpdelay(H_8);
               case 9
                   grpdelay(H_9);

end
 %output of each band filter
y_1=filter(H_1, x);
y_2=filter(H_2, x);
y_3=filter(H_3, x);
y_4=filter(H_4, x);
y_5=filter(H_5, x);
y_6=filter(H_6, x);
y_7=filter(H_7, x);
y_8=filter(H_8, x);
y_9=filter(H_9, x);

%plotting the time and frequency domain of the chosen band filter
  switch band_num
                case 1 
                     figure;
                    t=linspace(0, length(y_1)/Fs,length(y_1));
                    plot(t, y_1); 
                    Nfft = length(y_1);
                    f=linspace(0, Fs, Nfft);
                    G=abs(fft(y_1, Nfft));
                    figure;
                    plot(f(1:Nfft/2), G(1:Nfft/2));
                case 2 
                     figure;
                     t=linspace(0, length(y_2)/Fs,length(y_2));
                    plot(t, y_2); 
                    Nfft = length(y_2);
                    f=linspace(0, Fs, Nfft);
                    G=abs(fft(y_2, Nfft));
                    figure;
                    plot(f(1:Nfft/2), G(1:Nfft/2));
                case 3 
                     figure;
                    t=linspace(0, length(y_3)/Fs,length(y_3));
                    plot(t, y_3); 
                    Nfft = length(y_3);
                    f=linspace(0, Fs, Nfft);
                    G=abs(fft(y_3, Nfft));
                    figure;
                    plot(f(1:Nfft/2), G(1:Nfft/2));
                case 4 
                    t=linspace(0, length(y_4)/Fs,length(y_4));
                    plot(t, y_4); 
                    Nfft = length(y_4);
                    f=linspace(0, Fs, Nfft);
                    G=abs(fft(y_4, Nfft));
                    figure;
                    plot(f(1:Nfft/2), G(1:Nfft/2));
                case 5 
                     figure;
                    t=linspace(0, length(y_5)/Fs,length(y_5));
                    plot(t, y_5); 
                    Nfft = length(y_5);
                    f=linspace(0, Fs, Nfft);
                    G=abs(fft(y_5, Nfft));
                    figure;
                    plot(f(1:Nfft/2), G(1:Nfft/2));
               case 6 
                    figure;
                    t=linspace(0, length(y_6)/Fs,length(y_6));
                    plot(t, y_6); 
                    Nfft = length(y_6);
                    f=linspace(0, Fs, Nfft);
                    G=abs(fft(y_6, Nfft));
                    figure;
                    plot(f(1:Nfft/2), G(1:Nfft/2));
              case 7
                  t=linspace(0, length(y_7)/Fs,length(y_7));
                    plot(t, y_7); 
                    Nfft = length(y_7);
                    f=linspace(0, Fs, Nfft);
                    G=abs(fft(y_7, Nfft));
                    figure;
                    plot(f(1:Nfft/2), G(1:Nfft/2));
               case 8 
                    figure;
                     t=linspace(0, length(y_8)/Fs,length(y_8));
                    plot(t, y_8); 
                    Nfft = length(y_8);
                    f=linspace(0, Fs, Nfft);
                    G=abs(fft(y_8, Nfft));
                    figure;
                    plot(f(1:Nfft/2), G(1:Nfft/2));
               case 9 
                    figure;
                     t=linspace(0, length(y_9)/Fs,length(y_9));
                    plot(t, y_9); 
                    Nfft = length(y_9);
                    f=linspace(0, Fs, Nfft);
                    G=abs(fft(y_9, Nfft));
                    figure;
                    plot(f(1:Nfft/2), G(1:Nfft/2));
   end
 %multiply each band by the gain               
y_1=y_1*(10^(g_1/20));
y_2=y_2*(10^(g_2/20));
y_3=y_3*(10^(g_3/20));
y_4=y_4*(10^(g_4/20));
y_5=y_5*(10^(g_5/20));
y_6=y_6*(10^(g_6/20));
y_7=y_7*(10^(g_7/20));
y_8=y_8*(10^(g_8/20));
y_9=y_9*(10^(g_9/20));          
%adding bands to produce the composite signal
Y = y_1+y_2+y_3+y_4+y_5+y_6+y_7+y_8+y_9;
%the output sound
  sound(Y, rate);
  %plotting the time domain and frequency domain of composite signal
   t=linspace(0, length(Y)/Fs,length(Y));
        plot(t, Y); 
        
        Nfft = length(Y);
        f=linspace(0, Fs, Nfft);
        G=abs(fft(Y, Nfft));
        figure;
        plot(f(1:Nfft/2), G(1:Nfft/2));
        %save the output sound file
         audiowrite('outputcomposite.wav',Y,Fs); 
