

import Foundation
public extension PublicClient.Billing {
    /*
        Model: PlanTypes
        Used By: Billing
    */

    class PlanTypes: Codable {
        
        
        public var month: [PlanDetails]?
        
        public var quarter: [PlanDetails]?
        
        public var halfYear: [PlanDetails]?
        
        public var year: [PlanDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case month = "month"
            
            case quarter = "quarter"
            
            case halfYear = "half_year"
            
            case year = "year"
            
        }

        public init(halfYear: [PlanDetails]? = nil, month: [PlanDetails]? = nil, quarter: [PlanDetails]? = nil, year: [PlanDetails]? = nil) {
            
            self.month = month
            
            self.quarter = quarter
            
            self.halfYear = halfYear
            
            self.year = year
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    month = try container.decode([PlanDetails].self, forKey: .month)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quarter = try container.decode([PlanDetails].self, forKey: .quarter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    halfYear = try container.decode([PlanDetails].self, forKey: .halfYear)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    year = try container.decode([PlanDetails].self, forKey: .year)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(month, forKey: .month)
            
            
            
            try? container.encodeIfPresent(quarter, forKey: .quarter)
            
            
            
            try? container.encodeIfPresent(halfYear, forKey: .halfYear)
            
            
            
            try? container.encodeIfPresent(year, forKey: .year)
            
            
        }
        
    }
}
