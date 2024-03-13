
load('SynComDayWiseModels.mat');
load('Constraints.mat')

%% changing GPR for 208282 gene
Day1pGIMMEsynComNew = addReaction(Day1pGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
Day2pGIMMEsynComNew = addReaction(Day2pGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
Day3pGIMMEsynComNew = addReaction(Day3pGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
Day4pGIMMEsynComNew = addReaction(Day4pGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
Day5pGIMMEsynComNew = addReaction(Day5pGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
Day6pGIMMEsynComNew = addReaction(Day6pGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
Day1sGIMMEsynComNew = addReaction(Day1sGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
Day2sGIMMEsynComNew = addReaction(Day2sGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
Day3sGIMMEsynComNew = addReaction(Day3sGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
Day4sGIMMEsynComNew = addReaction(Day4sGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
Day5sGIMMEsynComNew = addReaction(Day5sGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
Day6sGIMMEsynComNew = addReaction(Day6sGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
%AlldayPlanktonicGIMMEsynComNew = addReaction(AlldayPlanktonicGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');
%AlldaySedimentsGIMMEsynComNew = addReaction(AlldaySedimentsGIMMEsynComNew,'rxn14403', 'reactionFormula','cpd00081[c] + cpd00067[c] + 3 cpd18072[c]  <=> cpd00239[c] + 3 cpd00001[c] + 3 cpd18073[c]','geneRule','209338 and 209339 or 208282');

%% Two objective weights for bi-level optimization
Day1pGIMMEsynComNew = changeObjective(Day1pGIMMEsynComNew,ObjRxn,ObjCoeff(1:2));
Day1sGIMMEsynComNew = changeObjective(Day1sGIMMEsynComNew,ObjRxn,ObjCoeff(3:4));
Day2pGIMMEsynComNew = changeObjective(Day2pGIMMEsynComNew,ObjRxn,ObjCoeff(5:6));
Day2sGIMMEsynComNew = changeObjective(Day2sGIMMEsynComNew,ObjRxn,ObjCoeff(7:8));
Day3pGIMMEsynComNew = changeObjective(Day3pGIMMEsynComNew,ObjRxn,ObjCoeff(9:10));
Day3sGIMMEsynComNew = changeObjective(Day3sGIMMEsynComNew,ObjRxn,ObjCoeff(11:12));
Day4pGIMMEsynComNew = changeObjective(Day4pGIMMEsynComNew,ObjRxn,ObjCoeff(13:14));
Day4sGIMMEsynComNew = changeObjective(Day4sGIMMEsynComNew,ObjRxn,ObjCoeff(15:16));
Day5pGIMMEsynComNew = changeObjective(Day5pGIMMEsynComNew,ObjRxn,ObjCoeff(17:18));
Day5sGIMMEsynComNew = changeObjective(Day5sGIMMEsynComNew,ObjRxn,ObjCoeff(19:20));
Day6pGIMMEsynComNew = changeObjective(Day6pGIMMEsynComNew,ObjRxn,ObjCoeff(21:22));
Day6sGIMMEsynComNew = changeObjective(Day6sGIMMEsynComNew,ObjRxn,ObjCoeff(23:24));
%AlldayPlanktonicGIMMESynCom = changeObjective(AlldayPlanktonicGIMMESynCom,ObjRxn,ObjCoeff(23:24));
%AlldaySedimentsGIMMESynCom = changeObjective(AlldaySedimentsGIMMESynCom,ObjRxn,ObjCoeff(25:26));

%% Apply media to open Ammonia and others
Day1pGIMMEsynComNew = maxGrowthOnCCsynComm(Day1pGIMMEsynComNew);
Day1sGIMMEsynComNew = maxGrowthOnCCsynComm(Day1sGIMMEsynComNew);
Day2pGIMMEsynComNew = maxGrowthOnCCsynComm(Day2pGIMMEsynComNew);
Day2sGIMMEsynComNew = maxGrowthOnCCsynComm(Day2sGIMMEsynComNew);
Day3pGIMMEsynComNew = maxGrowthOnCCsynComm(Day3pGIMMEsynComNew);
Day3sGIMMEsynComNew = maxGrowthOnCCsynComm(Day3sGIMMEsynComNew);
Day4pGIMMEsynComNew = maxGrowthOnCCsynComm(Day4pGIMMEsynComNew);
Day4sGIMMEsynComNew = maxGrowthOnCCsynComm(Day4sGIMMEsynComNew);
Day5pGIMMEsynComNew = maxGrowthOnCCsynComm(Day5pGIMMEsynComNew);
Day5sGIMMEsynComNew = maxGrowthOnCCsynComm(Day5sGIMMEsynComNew);
Day6pGIMMEsynComNew = maxGrowthOnCCsynComm(Day6pGIMMEsynComNew);
Day6sGIMMEsynComNew = maxGrowthOnCCsynComm(Day6sGIMMEsynComNew);
%AlldayPlanktonicGIMMESynCom = maxGrowthOnCCsynComm(AlldayPlanktonicGIMMESynCom);
%AlldaySedimentsGIMMESynCom = maxGrowthOnCCsynComm(AlldaySedimentsGIMMESynCom);

%% combine all models into BiomassObjModels structure
BiomassObjModels{1,1} = Day1pGIMMEsynComNew; 
BiomassObjModels{2,1} = Day1sGIMMEsynComNew; 
BiomassObjModels{3,1} = Day2pGIMMEsynComNew; 
BiomassObjModels{4,1} = Day2sGIMMEsynComNew; 
BiomassObjModels{5,1} = Day3pGIMMEsynComNew; 
BiomassObjModels{6,1} = Day3sGIMMEsynComNew;    
BiomassObjModels{7,1} = Day4pGIMMEsynComNew; 
BiomassObjModels{8,1} = Day4sGIMMEsynComNew; 
BiomassObjModels{9,1} = Day5pGIMMEsynComNew; 
BiomassObjModels{10,1} = Day5sGIMMEsynComNew; 
BiomassObjModels{11,1} = Day6pGIMMEsynComNew; 
BiomassObjModels{12,1} = Day6sGIMMEsynComNew;

%% remove unlinked genes after GIMME
for m=1:12
    BiomassObjModels{m,1}=buildRxnGeneMat(BiomassObjModels{m,1});
    % run this code after the GIMME to eliminate genes without GPR
    find(sum(BiomassObjModels{m,1}.rxnGeneMat, 1) == 0) % find the number of genes without GPR
    length(find(sum(BiomassObjModels{m,1}.rxnGeneMat, 1) == 0))% total number of genes without GPR
    %storeGPR = BiomassObjModels{m,1}.rules; % storeGPR of GIMME derived model
    gprs = findGPRFromRxns(BiomassObjModels{m,1},BiomassObjModels{m,1}.rxns);
    BiomassObjModels{m,1}.rxnGeneMat = []; % delete unassigned previous version
    BiomassObjModels{m,1}.genes = []; % delete gene list

    %create new GPR and gene list from the Rxns identified by GIMME
    for i = 1 : length(BiomassObjModels{m,1}.rxns)
        BiomassObjModels{m,1} = changeGeneAssociation(BiomassObjModels{m,1}, BiomassObjModels{m,1}.rxns{i}, gprs{i});
    end
end

%% table of model statistics
for m=1:12
fullTable(m,1) = length(BiomassObjModels{m,1}.genes);
fullTable(m,2) = length(BiomassObjModels{m,1}.rxns);
fullTable(m,3) = length(BiomassObjModels{m,1}.mets);
end

%find genes belong to DvH
for m=1:12
fullTableDvHalone(m,1) = length(find(ismember(BiomassObjModels{m,1}.genes,updatediJF744.genes)));
fullTableDvHalone(m,2) = length(find(ismember(BiomassObjModels{m,1}.rxns,updatediJF744.rxns)));
fullTableDvHalone(m,3) = length(find(ismember(BiomassObjModels{m,1}.mets,updatediJF744.mets)));
end

%% run flux analysis
threshold = 10^(-6);
for i=1:12
    CommonRxnPos = find(ismember(BiomassObjModels{i,1}.rxns,CommonReactions));
    InterestRxnPos = find(ismember(BiomassObjModels{i,1}.rxns,InterestReactions));
    model = BiomassObjModels{i,1};
    model = changeRxnBounds(model,'EX_cpd11640(e)',1000,'u');
    model = changeRxnBounds(model,'bio_DvH_5gam',DvHbeforeBilevel(i),'b');
    model = changeRxnBounds(model,'biomass0',MMpbeforeBilevel(i),'b');
    model = changeRxnBounds(model,'EX_cpd11640(e)',ExcessH2beforeBilevelMethaneObj(i),'b');
    model = changeObjective(model,'EX_cpd00159(e)');
    FBAsolution = optimizeCbModel(model,'max','one');
    fluxOpti(i) = FBAsolution.f;
    FluxValues = FBAsolution.x;
    FluxValues(abs(FluxValues)<threshold) = 0;
    FluxCommonReactionsNew(:,i) = FluxValues(CommonRxnPos);
    FluxInterestReactionsNew(:,i) = FluxValues(InterestRxnPos);
end
Day1prxnPos = find(ismember(BiomassObjModels{i,1}.rxns, CommonReactions));
CommonRxnNamesNew = BiomassObjModels{i,1}.rxns(Day1prxnPos);
CommonReactionNamesNew = BiomassObjModels{i,1}.rxnNames(Day1prxnPos);
CommonSubSystemNamesNew = BiomassObjModels{i,1}.subSystems(Day1prxnPos);
%CommonGPR = Day1pGIMMEsynComNew.rules(Day1prxnPos);
CommonFluxTable = table(CommonRxnNamesNew, CommonReactionNamesNew, CommonSubSystemNamesNew, FluxCommonReactionsNew);
InterestRxnNamesNew = BiomassObjModels{i,1}.rxns(InterestRxnPos);
InterestReactionNamesNew = BiomassObjModels{i,1}.rxnNames(InterestRxnPos);
InterestSubSystemNamesNew = BiomassObjModels{i,1}.subSystems(InterestRxnPos);
%CommonGPR = Day1pGIMMEsynComNew.rules(Day1prxnPos);
InterestFluxTable = table(InterestRxnNamesNew, InterestReactionNamesNew, FluxInterestReactionsNew);
