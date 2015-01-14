% simpler energy, small epsilon

% [V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/horse_volume/horse_0.obj');
% levels = 1000:1000:25000;
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   levels, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','displacement_initial', ...
%   'FinalEnergy','volume', ...
%   'BetaInit',1e-2, ...
%   'Eps',1e-5);
% write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/horse_dispinitial_volume_25_eps1e5/horse',cages_V,cages_F);
% save('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/horse_dispinitial_volume_25_eps1e5/timing.mat','timing')
% % Obs.: Bug after Etienne's code succeeds

% [V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/horse_volume/horse_0.obj');
% levels = 1000:500:25000;
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   levels, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','volumetric_arap', ...
%   'FinalEnergy','none', ...
%   'BetaInit',1e-2, ...
%   'Eps',1e-3);
% write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/horse_varap_50/horse',cages_V,cages_F);
% save('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/horse_varap_50/timing.mat','timing')
% % Obs.: Simultation stuck on the 34th layers, though I saved only
% % 24 in 'Other/horse_varap_50_partial.mat'

% [V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/maxplank_small_1doll/maxplank_small.obj');
% levels = 750:250:13000; %50 layers
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   levels, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','volumetric_arap', ...
%   'FinalEnergy','none', ...
%   'BetaInit',1e-2, ...
%   'Eps',1e-3);
% write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/maxplank_varap_50/maxplank',cages_V,cages_F);
% save('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/maxplank_varap_50/timing.mat','timing');
% % Obs.: OK, but looked a bit ugly. I'll try surface_arap

% [V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/maxplank_small_1doll/maxplank_small.obj');
% levels = 750:250:13000; %50 layers
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   levels, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','surface_arap', ...
%   'FinalEnergy','none', ...
%   'BetaInit',1e-2, ...
%   'Eps',1e-3);
% write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/maxplank_arap_50/maxplank',cages_V,cages_F);
% save('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/maxplank_arap_50/timing.mat','timing');
% % Obs.: Internet connection problems on the way. Extracted partial result

% [V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/rampant_volume/rampant_0.obj');
% levels = [726 8572];
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   levels, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','volumetric_arap', ...
%   'FinalEnergy','none', ...
%   'BetaInit',1e-2, ...
%   'Eps',1e-3,...
%   'PartialPath','partial_01_09_02.mat');
% write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/rampant_varap_new/rampant',cages_V,cages_F);
% save('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/rampant_varap_new/timing.mat','timing')
% % Obs.: OK

% [V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/anchor_volume/anchor_0.obj');
% levels = floor(2.^((-12:2:-2)/3)*size(F0,1));
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   levels, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','surface_arap', ...
%   'FinalEnergy','none', ...
%   'BetaInit',1e-2, ...
%   'Eps',1e-3,...
%   'PartialPath','partial_01_09_02.mat');
% write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/anchor_varap_new/anchor',cages_V,cages_F);
% save('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/anchor_varap_new/timing.mat','timing')
% % Obs.: Hard simulation, switched to surface_arap
% 
% [V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/rampant_volume/rampant_0.obj');
% levels = 1000:1000:49000; %50 layers
% [cages_V,cages_F,~,~,~,timing] = ...
%   multires_per_layer( ...
%   V0,F0, ...
%   levels, ...
%   'QuadratureOrder',2, ...
%   'ExpansionEnergy','volumetric_arap', ...
%   'FinalEnergy','none', ...
%   'BetaInit',1e-2, ...
%   'Eps',1e-3,...
%   'Smoothing',1e-3,...
%   'PartialPath','partial_01_09_02.mat');
% write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/rampant_varap_50/rampant',cages_V,cages_F);
% save('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/rampant_varap_50/timing.mat','timing');
% % Obs.: Taking too long (simluation, first level). Let it for the end

[V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/raptor-2M/raptor.ply');
V0 = V0/max(max(abs(V0)));
levels = floor(2.^((-22:2:-2)/3)*size(F0,1));
[cages_V,cages_F,~,~,~,timing] = ...
  multires_per_layer( ...
  V0,F0, ...
  levels, ...
  'QuadratureOrder',2, ...
  'ExpansionEnergy','displacement_path', ...
  'FinalEnergy','none', ...
  'BetaInit',1e-2, ...
  'Eps',1e-3,...
  'PartialPath','partial_01_09_02.mat');
write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/raptor-2M_disppath/max-478',cages_V,cages_F);
save('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/raptor-2M_disppath/timing.mat','timing')
% Obs.: