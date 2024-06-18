

import Foundation
public extension PublicClient.Billing {
    /*
        Model: PlanRecurring
        Used By: Billing
    */

    class PlanRecurring: Codable {
        
        
        public var interval: String?
        
        public var intervalCount: Double?
        
        public var aggregateUsage: String?
        
        public var usageType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case interval = "interval"
            
            case intervalCount = "interval_count"
            
            case aggregateUsage = "aggregate_usage"
            
            case usageType = "usage_type"
            
        }

        public init(aggregateUsage: String? = nil, interval: String? = nil, intervalCount: Double? = nil, usageType: String? = nil) {
            
            self.interval = interval
            
            self.intervalCount = intervalCount
            
            self.aggregateUsage = aggregateUsage
            
            self.usageType = usageType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    interval = try container.decode(String.self, forKey: .interval)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    intervalCount = try container.decode(Double.self, forKey: .intervalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregateUsage = try container.decode(String.self, forKey: .aggregateUsage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    usageType = try container.decode(String.self, forKey: .usageType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(interval, forKey: .interval)
            
            
            
            try? container.encodeIfPresent(intervalCount, forKey: .intervalCount)
            
            
            
            try? container.encodeIfPresent(aggregateUsage, forKey: .aggregateUsage)
            
            
            
            try? container.encodeIfPresent(usageType, forKey: .usageType)
            
            
        }
        
    }
}
