

import Foundation
public extension PublicClient.Billing {
    /*
        Model: DetailList
        Used By: Billing
    */

    class DetailList: Codable {
        
        
        public var plans: PlanTypes?
        
        public var trialPlan: TrialPlanDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case plans = "plans"
            
            case trialPlan = "trial_plan"
            
        }

        public init(plans: PlanTypes? = nil, trialPlan: TrialPlanDetails? = nil) {
            
            self.plans = plans
            
            self.trialPlan = trialPlan
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    plans = try container.decode(PlanTypes.self, forKey: .plans)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trialPlan = try container.decode(TrialPlanDetails.self, forKey: .trialPlan)
                
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
            
            
        }
        
    }
}
