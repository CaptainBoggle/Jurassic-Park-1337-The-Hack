#import <substrate.h>

int retTrue()
{
    return 1;
}

int bigMoney()
{
    return 2147483647;
}

int smallMoney()
{
    return 100;
}

int zeroOut()
{
    return 0;
}

int reasonableMoney()
{
    return 3812;
}

long long megaMoney()
{
    return 9003372036854775807;
}

%ctor{
    //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld15InventoryHelper16getHardCashCountEv")),(void*)bigMoney, NULL); // does nothing

    //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld10managerVIP24isYearlyMembershipActiveEv")),(void*)retTrue, NULL);  // does nothing
    

    //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld17CardpackOfferData16getPurchaseLimitEv")),(void*)smallMoney, NULL);
    //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld12DiscountData16getPurchaseLimitEv")),(void*)smallMoney, NULL);
    //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld16SpecialOfferData16getPurchaseLimitEv")),(void*)smallMoney, NULL);
    //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZN13JurassicWorld12_GLOBAL__N_116CardPackCrcsMapsC2Ev_452")),(void*)smallMoney, NULL);
    //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld23popupSpecialOfferDino3D16getPurchaseLimitEv")),(void*)smallMoney, NULL);

    //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld16SpecialOfferData19SpecialOfferContent14isPurchaseableEv")),(void*)retTrue, NULL);
    //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld17HardcashOfferData14isPurchaseableEbb")),(void*)retTrue, NULL);
    //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld13BdnaOfferData14isPurchaseableEbb")),(void*)retTrue, NULL);

    // 100% evolution success rate
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld16managerFusionLab20getFusionSuccessRateEj")),(void*)bigMoney, NULL); // WORKS!
        
    // Access hidden and locked events
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld18BattleRestrictions13isEventHiddenEv")), (void*)zeroOut, NULL); // WORKS!
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld18BattleRestrictions13isEventLockedEv")), (void*)zeroOut, NULL); // WORKS!
    
    // Always get lots of trophies on tournament win
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld20BattleTournamentInfo12getPointGainEj")),(void*)reasonableMoney, NULL); // WORKS!
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZN13JurassicWorld20BattleTournamentInfo18getRandomPointGainEv")),(void*)reasonableMoney, NULL); // WORKS!
    
    // Always offer free trial after opening mystery pack
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld10managerVIP23getIsFreeTrialOfferableEj")), (void*)retTrue, NULL); // WORKS!
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld22SubscriptionStaticInfo14isPurchaseableEv")), (void*)retTrue, NULL); // ???
    //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld10managerVIP30getAllowImmediateTrialPurchaseEv")), (void*)retTrue, NULL); // ???

    // batlle hack
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld11BattleEvent13getLimitLevelEv")), (void*)smallMoney, NULL);
    
    // infinity vip
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZN13JurassicWorld17managerMembership17addMembershipTimeEj")), (void*)megaMoney, NULL); // WORKS!
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld17managerMembership30getRemainingMembershipTimeInMsEv")), (void*)megaMoney, NULL); // WORKS!

    // trade hack maybe
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZN13JurassicWorld18managerCustomTrade30hasEnoughResourceOrItemToTradeEv")), (void*)retTrue, NULL);

    

    
/* breaks shit
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld8DinoInfo12isLevelMaxedEv")), (void*)zeroOut, NULL);
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld8DinoInfo11getLevelCapEv")), (void*)smallMoney, NULL);
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld8DinoInfo11getLevelCapENS_14DINO_EVOLUTIONE")), (void*)smallMoney, NULL);
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld8DinoInfo17getGlobalLevelCapEv")), (void*)smallMoney, NULL);
    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld20DinoGlobalStaticInfo17getGlobalLevelCapEv")), (void*)smallMoney, NULL);
*/




    MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld14objectGatherer20getUpgradeCostAmountEv")),(void*)zeroOut, NULL); // ???

  //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld6Reward9getAmountEv")),(void*)bigMoney, NULL);
  //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld13RewardDinoDNA9getAmountEv")),(void*)bigMoney, NULL);
  //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld10RewardFame9getAmountEv")),(void*)bigMoney, NULL);
  //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld15RewardPrizeDrop9getAmountEv")),(void*)bigMoney, NULL);
  //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld14RewardResource9getAmountEv")),(void*)bigMoney, NULL);
  //MSHookFunction(((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld16RewardStaticInfo9getAmountEv")),(void*)bigMoney, NULL);
    
    //MSHookFunction( ((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld12BasePackView16isDiscountActiveEv")), (void*)retTrue, NULL);
    //MSHookFunction( ((void*)MSFindSymbol(NULL, "__ZN13JurassicWorld22CardPackDataDictionary19isCardpackAvaliableENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE")), (void*)retTrue, NULL);

    //MSHookFunction( ((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld20BattleTournamentInfo15isRewardClaimedEv")), (void*)zeroOut, NULL);


    //MSHookFunction( ((void*)MSFindSymbol(NULL, "__ZN13JurassicWorld20communityEventBattle21isSubscriberExclusiveEv")), (void*)zeroOut, NULL);
    //MSHookFunction( ((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld20popupOfferDino3dBase24getIsHCFidelityExclusiveEv")), (void*)zeroOut, NULL); 
    //MSHookFunction( ((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld23popupSpecialOfferDino3D17getIsVIPExclusiveEv")), (void*)zeroOut, NULL);
    //MSHookFunction( ((void*)MSFindSymbol(NULL, "__ZNK13JurassicWorld23popupSpecialOfferDino3D24getIsHCFidelityExclusiveEv")), (void*)zeroOut, NULL); 

}



