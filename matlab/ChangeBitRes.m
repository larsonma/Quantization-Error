function new_audio_clip = ChangeBitRes(original_audio_clip, resolution_bits)
% Convert the amplitude of the original 16-bit audio clip to an unsigned
% integer range from 0 to 2^16.
integer_original_clip = (original_audio_clip+1)*pow2(16-1);
% Discard 16-resolution_bits to keep a vector that is in the integer range
% of 0 to 2^(resolution_bits)
integer_lowres_clip = round(integer_original_clip/(pow2(16-resolution_bits)));
% Scale the amplitudes that range from 0 to 2^resolution_bits back to the
% range of -1 to +1.
new_audio_clip = integer_lowres_clip/(pow2(resolution_bits-1))-1;
end