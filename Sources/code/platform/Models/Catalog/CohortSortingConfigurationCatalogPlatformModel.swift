

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CohortSortingConfiguration
        Used By: Catalog
    */

    class CohortSortingConfiguration: Codable {
        
        
        public var highSpenderRepeatCustomer: HighSpenderRepeatCustomerWeights?
        
        public var hyperactivePremiumRepeatCustomer: HyperactiveRepeatCustomerWeights?
        
        public var highSpenderOccasionalCustomer: HighSpenderOccasionalCustomerWeights?
        
        public var standardOccasionalCustomer: StandardOccasionalCustomerWeights?
        
        public var dormantPremiumCustomer: DormantPremiumCustomerWeights?
        
        public var budgetRegularCustomer: BudgetRegularCustomerWeights?
        
        public var highSpenderRegularCustomer: HighSpenderRegularCustomerWeights?
        
        public var standardCustomerAboutToChurn: StandardCustomerAboutToChurnWeights?
        
        public var premiumCustomerAboutToChurn: PremiumCustomerAboutToChurnWeights?
        
        public var highSpenderCustomerAboutToChurn: HighSpenderCustomerAboutToChurnWeights?
        
        public var standardDormantCustomer: StandardDormantCustomerWeights?
        
        public var highSpenderDormantCustomer: HighSpenderDormantCustomerWeights?
        
        public var potentialCustomer: PotentialCustomerWeights?
        
        public var newCustomer: NewCustomerWeights?
        
        public var budgetRepeatCustomer: BudgetRepeatCustomerWeights?
        
        public var averageSpenderRepeatCustomer: AverageSpenderRepeatCustomerWeights?
        

        public enum CodingKeys: String, CodingKey {
            
            case highSpenderRepeatCustomer = "high_spender_repeat_customer"
            
            case hyperactivePremiumRepeatCustomer = "hyperactive_premium_repeat_customer"
            
            case highSpenderOccasionalCustomer = "high_spender_occasional_customer"
            
            case standardOccasionalCustomer = "standard_occasional_customer"
            
            case dormantPremiumCustomer = "dormant_premium_customer"
            
            case budgetRegularCustomer = "budget_regular_customer"
            
            case highSpenderRegularCustomer = "high_spender_regular_customer"
            
            case standardCustomerAboutToChurn = "standard_customer_about_to_churn"
            
            case premiumCustomerAboutToChurn = "premium_customer_about_to_churn"
            
            case highSpenderCustomerAboutToChurn = "high_spender_customer_about_to_churn"
            
            case standardDormantCustomer = "standard_dormant_customer"
            
            case highSpenderDormantCustomer = "high_spender_dormant_customer"
            
            case potentialCustomer = "potential_customer"
            
            case newCustomer = "new_customer"
            
            case budgetRepeatCustomer = "budget_repeat_customer"
            
            case averageSpenderRepeatCustomer = "average_spender_repeat_customer"
            
        }

        public init(averageSpenderRepeatCustomer: AverageSpenderRepeatCustomerWeights? = nil, budgetRegularCustomer: BudgetRegularCustomerWeights? = nil, budgetRepeatCustomer: BudgetRepeatCustomerWeights? = nil, dormantPremiumCustomer: DormantPremiumCustomerWeights? = nil, highSpenderCustomerAboutToChurn: HighSpenderCustomerAboutToChurnWeights? = nil, highSpenderDormantCustomer: HighSpenderDormantCustomerWeights? = nil, highSpenderOccasionalCustomer: HighSpenderOccasionalCustomerWeights? = nil, highSpenderRegularCustomer: HighSpenderRegularCustomerWeights? = nil, highSpenderRepeatCustomer: HighSpenderRepeatCustomerWeights? = nil, hyperactivePremiumRepeatCustomer: HyperactiveRepeatCustomerWeights? = nil, newCustomer: NewCustomerWeights? = nil, potentialCustomer: PotentialCustomerWeights? = nil, premiumCustomerAboutToChurn: PremiumCustomerAboutToChurnWeights? = nil, standardCustomerAboutToChurn: StandardCustomerAboutToChurnWeights? = nil, standardDormantCustomer: StandardDormantCustomerWeights? = nil, standardOccasionalCustomer: StandardOccasionalCustomerWeights? = nil) {
            
            self.highSpenderRepeatCustomer = highSpenderRepeatCustomer
            
            self.hyperactivePremiumRepeatCustomer = hyperactivePremiumRepeatCustomer
            
            self.highSpenderOccasionalCustomer = highSpenderOccasionalCustomer
            
            self.standardOccasionalCustomer = standardOccasionalCustomer
            
            self.dormantPremiumCustomer = dormantPremiumCustomer
            
            self.budgetRegularCustomer = budgetRegularCustomer
            
            self.highSpenderRegularCustomer = highSpenderRegularCustomer
            
            self.standardCustomerAboutToChurn = standardCustomerAboutToChurn
            
            self.premiumCustomerAboutToChurn = premiumCustomerAboutToChurn
            
            self.highSpenderCustomerAboutToChurn = highSpenderCustomerAboutToChurn
            
            self.standardDormantCustomer = standardDormantCustomer
            
            self.highSpenderDormantCustomer = highSpenderDormantCustomer
            
            self.potentialCustomer = potentialCustomer
            
            self.newCustomer = newCustomer
            
            self.budgetRepeatCustomer = budgetRepeatCustomer
            
            self.averageSpenderRepeatCustomer = averageSpenderRepeatCustomer
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    highSpenderRepeatCustomer = try container.decode(HighSpenderRepeatCustomerWeights.self, forKey: .highSpenderRepeatCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hyperactivePremiumRepeatCustomer = try container.decode(HyperactiveRepeatCustomerWeights.self, forKey: .hyperactivePremiumRepeatCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    highSpenderOccasionalCustomer = try container.decode(HighSpenderOccasionalCustomerWeights.self, forKey: .highSpenderOccasionalCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    standardOccasionalCustomer = try container.decode(StandardOccasionalCustomerWeights.self, forKey: .standardOccasionalCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dormantPremiumCustomer = try container.decode(DormantPremiumCustomerWeights.self, forKey: .dormantPremiumCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    budgetRegularCustomer = try container.decode(BudgetRegularCustomerWeights.self, forKey: .budgetRegularCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    highSpenderRegularCustomer = try container.decode(HighSpenderRegularCustomerWeights.self, forKey: .highSpenderRegularCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    standardCustomerAboutToChurn = try container.decode(StandardCustomerAboutToChurnWeights.self, forKey: .standardCustomerAboutToChurn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    premiumCustomerAboutToChurn = try container.decode(PremiumCustomerAboutToChurnWeights.self, forKey: .premiumCustomerAboutToChurn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    highSpenderCustomerAboutToChurn = try container.decode(HighSpenderCustomerAboutToChurnWeights.self, forKey: .highSpenderCustomerAboutToChurn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    standardDormantCustomer = try container.decode(StandardDormantCustomerWeights.self, forKey: .standardDormantCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    highSpenderDormantCustomer = try container.decode(HighSpenderDormantCustomerWeights.self, forKey: .highSpenderDormantCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    potentialCustomer = try container.decode(PotentialCustomerWeights.self, forKey: .potentialCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    newCustomer = try container.decode(NewCustomerWeights.self, forKey: .newCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    budgetRepeatCustomer = try container.decode(BudgetRepeatCustomerWeights.self, forKey: .budgetRepeatCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    averageSpenderRepeatCustomer = try container.decode(AverageSpenderRepeatCustomerWeights.self, forKey: .averageSpenderRepeatCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(highSpenderRepeatCustomer, forKey: .highSpenderRepeatCustomer)
            
            
            
            
            try? container.encodeIfPresent(hyperactivePremiumRepeatCustomer, forKey: .hyperactivePremiumRepeatCustomer)
            
            
            
            
            try? container.encodeIfPresent(highSpenderOccasionalCustomer, forKey: .highSpenderOccasionalCustomer)
            
            
            
            
            try? container.encodeIfPresent(standardOccasionalCustomer, forKey: .standardOccasionalCustomer)
            
            
            
            
            try? container.encodeIfPresent(dormantPremiumCustomer, forKey: .dormantPremiumCustomer)
            
            
            
            
            try? container.encodeIfPresent(budgetRegularCustomer, forKey: .budgetRegularCustomer)
            
            
            
            
            try? container.encodeIfPresent(highSpenderRegularCustomer, forKey: .highSpenderRegularCustomer)
            
            
            
            
            try? container.encodeIfPresent(standardCustomerAboutToChurn, forKey: .standardCustomerAboutToChurn)
            
            
            
            
            try? container.encodeIfPresent(premiumCustomerAboutToChurn, forKey: .premiumCustomerAboutToChurn)
            
            
            
            
            try? container.encodeIfPresent(highSpenderCustomerAboutToChurn, forKey: .highSpenderCustomerAboutToChurn)
            
            
            
            
            try? container.encodeIfPresent(standardDormantCustomer, forKey: .standardDormantCustomer)
            
            
            
            
            try? container.encodeIfPresent(highSpenderDormantCustomer, forKey: .highSpenderDormantCustomer)
            
            
            
            
            try? container.encodeIfPresent(potentialCustomer, forKey: .potentialCustomer)
            
            
            
            
            try? container.encodeIfPresent(newCustomer, forKey: .newCustomer)
            
            
            
            
            try? container.encodeIfPresent(budgetRepeatCustomer, forKey: .budgetRepeatCustomer)
            
            
            
            
            try? container.encodeIfPresent(averageSpenderRepeatCustomer, forKey: .averageSpenderRepeatCustomer)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CohortSortingConfiguration
        Used By: Catalog
    */

    class CohortSortingConfiguration: Codable {
        
        
        public var highSpenderRepeatCustomer: HighSpenderRepeatCustomerWeights?
        
        public var hyperactivePremiumRepeatCustomer: HyperactiveRepeatCustomerWeights?
        
        public var highSpenderOccasionalCustomer: HighSpenderOccasionalCustomerWeights?
        
        public var standardOccasionalCustomer: StandardOccasionalCustomerWeights?
        
        public var dormantPremiumCustomer: DormantPremiumCustomerWeights?
        
        public var budgetRegularCustomer: BudgetRegularCustomerWeights?
        
        public var highSpenderRegularCustomer: HighSpenderRegularCustomerWeights?
        
        public var standardCustomerAboutToChurn: StandardCustomerAboutToChurnWeights?
        
        public var premiumCustomerAboutToChurn: PremiumCustomerAboutToChurnWeights?
        
        public var highSpenderCustomerAboutToChurn: HighSpenderCustomerAboutToChurnWeights?
        
        public var standardDormantCustomer: StandardDormantCustomerWeights?
        
        public var highSpenderDormantCustomer: HighSpenderDormantCustomerWeights?
        
        public var potentialCustomer: PotentialCustomerWeights?
        
        public var newCustomer: NewCustomerWeights?
        
        public var budgetRepeatCustomer: BudgetRepeatCustomerWeights?
        
        public var averageSpenderRepeatCustomer: AverageSpenderRepeatCustomerWeights?
        

        public enum CodingKeys: String, CodingKey {
            
            case highSpenderRepeatCustomer = "high_spender_repeat_customer"
            
            case hyperactivePremiumRepeatCustomer = "hyperactive_premium_repeat_customer"
            
            case highSpenderOccasionalCustomer = "high_spender_occasional_customer"
            
            case standardOccasionalCustomer = "standard_occasional_customer"
            
            case dormantPremiumCustomer = "dormant_premium_customer"
            
            case budgetRegularCustomer = "budget_regular_customer"
            
            case highSpenderRegularCustomer = "high_spender_regular_customer"
            
            case standardCustomerAboutToChurn = "standard_customer_about_to_churn"
            
            case premiumCustomerAboutToChurn = "premium_customer_about_to_churn"
            
            case highSpenderCustomerAboutToChurn = "high_spender_customer_about_to_churn"
            
            case standardDormantCustomer = "standard_dormant_customer"
            
            case highSpenderDormantCustomer = "high_spender_dormant_customer"
            
            case potentialCustomer = "potential_customer"
            
            case newCustomer = "new_customer"
            
            case budgetRepeatCustomer = "budget_repeat_customer"
            
            case averageSpenderRepeatCustomer = "average_spender_repeat_customer"
            
        }

        public init(averageSpenderRepeatCustomer: AverageSpenderRepeatCustomerWeights? = nil, budgetRegularCustomer: BudgetRegularCustomerWeights? = nil, budgetRepeatCustomer: BudgetRepeatCustomerWeights? = nil, dormantPremiumCustomer: DormantPremiumCustomerWeights? = nil, highSpenderCustomerAboutToChurn: HighSpenderCustomerAboutToChurnWeights? = nil, highSpenderDormantCustomer: HighSpenderDormantCustomerWeights? = nil, highSpenderOccasionalCustomer: HighSpenderOccasionalCustomerWeights? = nil, highSpenderRegularCustomer: HighSpenderRegularCustomerWeights? = nil, highSpenderRepeatCustomer: HighSpenderRepeatCustomerWeights? = nil, hyperactivePremiumRepeatCustomer: HyperactiveRepeatCustomerWeights? = nil, newCustomer: NewCustomerWeights? = nil, potentialCustomer: PotentialCustomerWeights? = nil, premiumCustomerAboutToChurn: PremiumCustomerAboutToChurnWeights? = nil, standardCustomerAboutToChurn: StandardCustomerAboutToChurnWeights? = nil, standardDormantCustomer: StandardDormantCustomerWeights? = nil, standardOccasionalCustomer: StandardOccasionalCustomerWeights? = nil) {
            
            self.highSpenderRepeatCustomer = highSpenderRepeatCustomer
            
            self.hyperactivePremiumRepeatCustomer = hyperactivePremiumRepeatCustomer
            
            self.highSpenderOccasionalCustomer = highSpenderOccasionalCustomer
            
            self.standardOccasionalCustomer = standardOccasionalCustomer
            
            self.dormantPremiumCustomer = dormantPremiumCustomer
            
            self.budgetRegularCustomer = budgetRegularCustomer
            
            self.highSpenderRegularCustomer = highSpenderRegularCustomer
            
            self.standardCustomerAboutToChurn = standardCustomerAboutToChurn
            
            self.premiumCustomerAboutToChurn = premiumCustomerAboutToChurn
            
            self.highSpenderCustomerAboutToChurn = highSpenderCustomerAboutToChurn
            
            self.standardDormantCustomer = standardDormantCustomer
            
            self.highSpenderDormantCustomer = highSpenderDormantCustomer
            
            self.potentialCustomer = potentialCustomer
            
            self.newCustomer = newCustomer
            
            self.budgetRepeatCustomer = budgetRepeatCustomer
            
            self.averageSpenderRepeatCustomer = averageSpenderRepeatCustomer
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    highSpenderRepeatCustomer = try container.decode(HighSpenderRepeatCustomerWeights.self, forKey: .highSpenderRepeatCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hyperactivePremiumRepeatCustomer = try container.decode(HyperactiveRepeatCustomerWeights.self, forKey: .hyperactivePremiumRepeatCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    highSpenderOccasionalCustomer = try container.decode(HighSpenderOccasionalCustomerWeights.self, forKey: .highSpenderOccasionalCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    standardOccasionalCustomer = try container.decode(StandardOccasionalCustomerWeights.self, forKey: .standardOccasionalCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dormantPremiumCustomer = try container.decode(DormantPremiumCustomerWeights.self, forKey: .dormantPremiumCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    budgetRegularCustomer = try container.decode(BudgetRegularCustomerWeights.self, forKey: .budgetRegularCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    highSpenderRegularCustomer = try container.decode(HighSpenderRegularCustomerWeights.self, forKey: .highSpenderRegularCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    standardCustomerAboutToChurn = try container.decode(StandardCustomerAboutToChurnWeights.self, forKey: .standardCustomerAboutToChurn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    premiumCustomerAboutToChurn = try container.decode(PremiumCustomerAboutToChurnWeights.self, forKey: .premiumCustomerAboutToChurn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    highSpenderCustomerAboutToChurn = try container.decode(HighSpenderCustomerAboutToChurnWeights.self, forKey: .highSpenderCustomerAboutToChurn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    standardDormantCustomer = try container.decode(StandardDormantCustomerWeights.self, forKey: .standardDormantCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    highSpenderDormantCustomer = try container.decode(HighSpenderDormantCustomerWeights.self, forKey: .highSpenderDormantCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    potentialCustomer = try container.decode(PotentialCustomerWeights.self, forKey: .potentialCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    newCustomer = try container.decode(NewCustomerWeights.self, forKey: .newCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    budgetRepeatCustomer = try container.decode(BudgetRepeatCustomerWeights.self, forKey: .budgetRepeatCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    averageSpenderRepeatCustomer = try container.decode(AverageSpenderRepeatCustomerWeights.self, forKey: .averageSpenderRepeatCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(highSpenderRepeatCustomer, forKey: .highSpenderRepeatCustomer)
            
            
            
            
            try? container.encodeIfPresent(hyperactivePremiumRepeatCustomer, forKey: .hyperactivePremiumRepeatCustomer)
            
            
            
            
            try? container.encodeIfPresent(highSpenderOccasionalCustomer, forKey: .highSpenderOccasionalCustomer)
            
            
            
            
            try? container.encodeIfPresent(standardOccasionalCustomer, forKey: .standardOccasionalCustomer)
            
            
            
            
            try? container.encodeIfPresent(dormantPremiumCustomer, forKey: .dormantPremiumCustomer)
            
            
            
            
            try? container.encodeIfPresent(budgetRegularCustomer, forKey: .budgetRegularCustomer)
            
            
            
            
            try? container.encodeIfPresent(highSpenderRegularCustomer, forKey: .highSpenderRegularCustomer)
            
            
            
            
            try? container.encodeIfPresent(standardCustomerAboutToChurn, forKey: .standardCustomerAboutToChurn)
            
            
            
            
            try? container.encodeIfPresent(premiumCustomerAboutToChurn, forKey: .premiumCustomerAboutToChurn)
            
            
            
            
            try? container.encodeIfPresent(highSpenderCustomerAboutToChurn, forKey: .highSpenderCustomerAboutToChurn)
            
            
            
            
            try? container.encodeIfPresent(standardDormantCustomer, forKey: .standardDormantCustomer)
            
            
            
            
            try? container.encodeIfPresent(highSpenderDormantCustomer, forKey: .highSpenderDormantCustomer)
            
            
            
            
            try? container.encodeIfPresent(potentialCustomer, forKey: .potentialCustomer)
            
            
            
            
            try? container.encodeIfPresent(newCustomer, forKey: .newCustomer)
            
            
            
            
            try? container.encodeIfPresent(budgetRepeatCustomer, forKey: .budgetRepeatCustomer)
            
            
            
            
            try? container.encodeIfPresent(averageSpenderRepeatCustomer, forKey: .averageSpenderRepeatCustomer)
            
            
        }
        
    }
}


