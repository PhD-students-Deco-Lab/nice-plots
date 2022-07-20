% Swarm plots examples

close all
clear

warning('off','MATLAB:handle_graphics:Layout:NoPositionSetInTiledChartLayout')


A = randn([1, 10]);
B = randn([1, 11]) + 3;

figure(); pvals=swarm({A B}, {'A' 'B'});

figure(); pvals=swarm({A B}, {'A' 'B'}, tlt='A versus B', overlay_style='box');

figure(); pvals=swarm({A B}, {'A' 'B'}, tlt='A versus B', stat_test='permutation', ...
    printPvals=true, overlay_style='median');

%%
clear
% warning('off','MATLAB:handle_graphics:Layout:NoPositionSetInTiledChartLayout')

A = [randn([1, 9]) ones([1, 18]).*2 + randn([1, 18])]; % N=27
B = randn([1, 32]).*2; % N=32
C = random( makedist('Weibull'), 30, 1); % N = 30

figure(); set(gcf,'Position',[100 100 1000 420]); tiledlayout(1, 2); 
nexttile; swarm({A B C}, {'A' 'B' 'C'}, tlt='boxplot', fdr=false, overlay_style='boxplot');
nexttile; swarm({A B C}, {'A' 'B' 'C'}, tlt='Compact boxplot', fdr=false, overlay_style='compact boxplot');

figure();set(gcf,'Position',[200 200 1000 420]); tiledlayout(1, 2); 
nexttile; swarm({A B C}, {'A' 'B' 'C'}, tlt='Standard deviation', fdr=false, overlay_style='sd');
nexttile; pvals = swarm({A B C}, {'A' 'B' 'C'}, tlt='Confidence interval', fdr=false, overlay_style='ci', printPvals=true);

