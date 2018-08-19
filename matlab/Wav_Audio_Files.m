[original_clip, fs] = audioread('plumclip.wav');
%sound(original_clip, fs)

integer_original_clip = (original_clip+1) * pow2(15);
integer_lowres_clip = round(integer_original_clip/pow2(8));
lowres_clip = integer_lowres_clip/pow2(7) - 1;
%sound(lowres_clip, fs); % make sure you have the correct fs here. <<<<<<<
%sound(ChangeBitRes(original_clip,12), fs) % 12 bits used to quantize amplitude
%sound(ChangeBitRes(original_clip, 6), fs)
sound(ChangeBitRes(original_clip, 4), fs)