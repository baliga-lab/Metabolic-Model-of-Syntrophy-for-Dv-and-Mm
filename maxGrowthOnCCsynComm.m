
function model = maxGrowthOnCCsynComm(model)

% This function takes in the SynComm model

% Change in silico media conditions to match experimental media
% Lactate
%model = changeRxnBounds(model,'EX_cpd00159(e)',-8.9,'b'); %default from flowers et al 2018 publication
model = changeRxnBounds(model,'EX_cpd00159(e)',-29.3,'l'); %measured value at Day 1 in the experiment
model = changeRxnBounds(model,'EX_cpd00159(e)',-2.38,'u'); %measured value at Day 6 in the experiment
% Sulfate
model = changeRxnBounds(model,'EX_cpd00048(e)',-0.01,'l');
model = changeRxnBounds(model,'EX_cpd00048(e)',1000,'u');
% Hydrogen
model = changeRxnBounds(model,'EX_cpd11640(e)',0,'l');
model = changeRxnBounds(model,'EX_cpd11640(e)',1000,'u');
model = changeRxnBounds(model,'tDM_cpd11640',-1000,'l');
model = changeRxnBounds(model,'tDM_cpd11640',1000,'u');
% Acetate
model = changeRxnBounds(model,'EX_cpd00029(e)',1000,'u');
model = changeRxnBounds(model,'EX_cpd00029(e)',0,'l'); %measured value at Day 1
%model = changeRxnBounds(model,'tDM_cpd00029',1000,'u');
%model = changeRxnBounds(model,'tDM_cpd00029',-1000,'l');
% H2S
model = changeRxnBounds(model,'EX_cpd00239(e)',-1000,'l');
model = changeRxnBounds(model,'EX_cpd00239(e)',1000,'u');
%model = changeRxnBounds(model,'EX_cpd00239[e0]',-0.1,'l');
%model = changeRxnBounds(model,'EX_cpd00239[e0]',1000,'u');
% Cysteine
model = changeRxnBounds(model,'EX_cpd00084(e)',-1000,'l');
model = changeRxnBounds(model,'EX_cpd00084(e)',1000,'u');
% Pyruvate
model = changeRxnBounds(model,'EX_cpd00020(e)',0,'b');
%Ammonia
model = changeRxnBounds(model,'EX_cpd00013[e0]',-1000,'l');
model = changeRxnBounds(model,'EX_cpd00013(e)',-1000,'l');

% Set bounds on the QMO reactions to activate fermentative version
model = changeRxnBounds(model,'rxn11934B_SR',0,'b');
model = changeRxnBounds(model,'rxn11934B_CC',-1000,'l');
model = changeRxnBounds(model,'rxn11934B_CC',1000,'u');

% Set bounds on NGAM and QRC
model = changeRxnBounds(model,'rxn00062',3.0813,'l');
model = changeRxnBounds(model,'rxn00062',1000,'u');
model = changeRxnBounds(model,'rxn14412',-1000,'l');
model = changeRxnBounds(model,'rxn14412',1000,'u');

% Set bounds on rxn14404, rxn14407, and 14419
model = changeRxnBounds(model,'rxn14404',0,'l');
model = changeRxnBounds(model,'rxn14404',1000,'u');
model = changeRxnBounds(model,'rxn14407',-1000,'l');
model = changeRxnBounds(model,'rxn14407',1000,'u');
model = changeRxnBounds(model,'rxn14412',-1000,'l');
model = changeRxnBounds(model,'rxn14412',1000,'u');

%find index for biomass atp and adp
% %bio_idx = find(model.c); %if dvH is the objective or provide the index of biomass of DvH manually
% %bio_idx = 923; %number of the biomass rxn of DvH
bio_idx = find(ismember(model.rxns,'bio_DvH_5gam')); %include the name of biomass rxn of DvH
[~,h_idx] = intersect(model.mets,'cpd00067[c]');
[~,atp_idx] = intersect(model.mets,'cpd00002[c]');
[~,adp_idx] = intersect(model.mets,'cpd00008[c]');
[~,h2o_idx] = intersect(model.mets,'cpd00001[c]');
[~,p_idx] = intersect(model.mets,'cpd00009[c]');
% 
% % Rename the biomass accordingly
% model.rxns{bio_idx} = 'bio_DvH_88gam';

% % Adjust the stoichiometric coefficients for ATP hydrolysis
model.S(h_idx,bio_idx) = 87.7476;       
model.S(atp_idx,bio_idx) = -87.7476;        
model.S(adp_idx,bio_idx) = 87.7476;        
model.S(h2o_idx,bio_idx) = -87.7476;      
model.S(p_idx,bio_idx) = 87.7476;

% model.S(h_idx,bio_idx) = 125.19;       
% model.S(atp_idx,bio_idx) = -125.19;        
% model.S(adp_idx,bio_idx) = 125.19;        
% model.S(h2o_idx,bio_idx) = -125.19;      
% model.S(p_idx,bio_idx) = 125.19;

% model.S(h_idx,bio_idx) = 115.000;       
% model.S(atp_idx,bio_idx) = -115.175000;        
% model.S(adp_idx,bio_idx) = 115.175000;        
% model.S(h2o_idx,bio_idx) = -115.175000;      
% model.S(p_idx,bio_idx) = 115.175000;

%ions
model = changeRxnBounds(model,'EX_cpd00254(e)',-1000,'l'); %Magnesium
model = changeRxnBounds(model,'EX_cpd00205(e)',-1000,'l'); %Potassium
model = changeRxnBounds(model,'EX_cpd10515(e)',-1000,'l'); %Fe2+
model = changeRxnBounds(model,'EX_cpd10516(e)',-1000,'l'); %Fe3
model = changeRxnBounds(model,'EX_cpd00099(e)',-1000,'l'); %Chloride
model = changeRxnBounds(model,'EX_cpd00011(e)',-1000,'l'); %CO2
model = changeRxnBounds(model,'EX_cpd00001(e)',-1000,'l'); %H20
model = changeRxnBounds(model,'EX_cpd00034(e)',-1000,'l'); %Zinc
model = changeRxnBounds(model,'EX_cpd00058(e)',-1000,'l'); %Copper
model = changeRxnBounds(model,'EX_cpd00030(e)',-1000,'l'); %Manganese
model = changeRxnBounds(model,'EX_cpd00063(e)',-1000,'l'); %Calcium
model = changeRxnBounds(model,'EX_cpd00009(e)',-1000,'l'); %Phosphate
model = changeRxnBounds(model,'EX_cpd00013(e)',-1000,'l'); %Ammonia
model = changeRxnBounds(model,'EX_cpd00239(e)',-1000,'l'); %Sulfide
model = changeRxnBounds(model,'EX_cpd00971(e)',-1000,'l'); %Sodium
model = changeRxnBounds(model,'EX_cpd00254[e0]',-1000,'l'); %Magnesium
model = changeRxnBounds(model,'EX_cpd00205[e0]',-1000,'l'); %Potassium
model = changeRxnBounds(model,'EX_cpd10515[e0]',-1000,'l'); %Fe2+
model = changeRxnBounds(model,'EX_cpd10516[e0]',-1000,'l'); %Fe3
model = changeRxnBounds(model,'EX_cpd00099[e0]',-1000,'l'); %Chloride
model = changeRxnBounds(model,'EX_cpd00011(e)',-1000,'l'); %CO2
model = changeRxnBounds(model,'EX_cpd00001[e0]',-1000,'l'); %H20
model = changeRxnBounds(model,'EX_cpd00034[e0]',-1000,'l'); %Zinc
model = changeRxnBounds(model,'EX_cpd00058[e0]',-1000,'l'); %Copper
model = changeRxnBounds(model,'EX_cpd00030[e0]',-1000,'l'); %Manganese
model = changeRxnBounds(model,'EX_cpd00063[e0]',-1000,'l'); %Calcium
model = changeRxnBounds(model,'EX_cpd00013[e0]',-1000,'l'); %Ammonia
model = changeRxnBounds(model,'EX_cpd00067(e)',0,'l'); %H+
model = changeRxnBounds(model,'EX_cpd00035(e)',0,'l');
model = changeRxnBounds(model,'EX_cpd00035(e)',1000,'u');
model = changeRxnBounds(model,'EX_cpd00035[e0]',-1000,'l');
model = changeRxnBounds(model,'EX_cpd00035[e0]',1000,'u');

end
