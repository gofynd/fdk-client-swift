

import Foundation
public extension PublicClient.Billing {
    /*
        Model: DetailList
        Used By: Billing
    */

    class DetailList: Codable {
        
        
        public var plans: [Plan]?
        
        public var trialPlan: Plan?
        
        public var componentGroups: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case plans = "plans"
            
            case trialPlan = "trial_plan"
            
            case componentGroups = "component_groups"
            
        }

        public init(componentGroups: [String]? = nil, plans: [Plan]? = nil, trialPlan: Plan? = nil) {
            
            self.plans = plans
            
            self.trialPlan = trialPlan
            
            self.componentGroups = componentGroups
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    plans = try container.decode([Plan].self, forKey: .plans)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trialPlan = try container.decode(Plan.self, forKey: .trialPlan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    componentGroups = try container.decode([String].self, forKey: .componentGroups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(plans, forKey: .plans)
            
            
            
            
            try? container.encodeIfPresent(trialPlan, forKey: .trialPlan)
            
            
            
            
            try? container.encodeIfPresent(componentGroups, forKey: .componentGroups)
            
            
        }
        
    }
}
