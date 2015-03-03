function out = vl_nnsigmoid(x,dzdy)
% VL_NNSIGMOID  Sigmoid nonlinearity
%   Y = VL_NNSIGMOID(X) appliessigmoid function to the data X. 
%   X can have arbitrary size.
%
%   DZDX = VL_NNSIGMOID(X, DZDY) computes the network derivative DZDX
%   with respect to the input X given the derivative DZDY with respect
%   to the output Y. DZDX has the same dimension as X.

% Copyright (C) 2014 Karel Lenc, Andrea Vedaldi.
% All rights reserved.
%
% This file is part of the VLFeat library and is made available under
% the terms of the BSD license (see the COPYING file).

y = 1 ./ (1 + exp(-x));

if nargin <= 1 || isempty(dzdy)
  out = y ;
else
  out = dzdy .* (y .* (1 - y)) ;
end
