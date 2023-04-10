
%create SynComm model for DvH and MMp
%Rupa Immanuel, ISB

rxnFormulaMMp =printRxnFormula(iMR539);

% initially assign DvH as new integrated model
SynCommModel = updatediJF744;

% add the MMp model reactions to this new model
for i = 1:length(iMR539.rxns)  
SynCommModel = addReaction(SynCommModel,rxns{i},'reactionFormula',rxnFormulaMMp{i},'geneRule',IMR539GPR{i}, 'geneNameList',genesMMp);
end

% add the tDM diffusion reactions to make connections between DvH and MMp
for i = 1:length(tDMRxns)
SynCommModel = addReaction(SynCommModel,tDMRxns{i},'reactionFormula', tDMRxnFormula{i},'reactionName', tDMRxnName{i});
end

%change the bounds for tDM reactions
for i = 1:length(tDMRxns)
SynCommModel = changeRxnBounds(SynCommModel,tDMRxns{i},-1000,'l');
SynCommModel = changeRxnBounds(SynCommModel,tDMRxns{i},1000,'u');
end

%change the bound for exchanges of MMp
ExSynCommModel = SynCommModel;
for i = 1:length(ExchangesMMp)
ExSynCommModel = changeRxnBounds(ExSynCommModel,ExchangesMMp{i},0,'l');
ExSynCommModel = changeRxnBounds(ExSynCommModel,ExchangesMMp{i},1000,'u');
end

%to make the MMp survive
%when the objective is set to MMp, biomass of DvH is given a lb
ExSynCommModel = changeRxnBounds(ExSynCommModel,'bio_DvH_5gam',0.4,'l');





