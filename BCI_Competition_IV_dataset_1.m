clc
clear all
[pathstr,name,ext] = fileparts(which(mfilename));
d1=[pathstr,'\Datasets\BCICIV_calib_ds1a.mat'];
load(d1);
signal=double(cnt);
X=['abcdefg'];
Fs=100;
[b,a]=butter(3,[8 30]/(Fs/2),'bandpass');
signal=filtfilt(b,a,signal);
pos=mrk.pos;
labels=mrk.y;
class1=[];
class2=[];
i_1=0;
i_2=0;