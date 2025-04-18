

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OnlinePaymentDetails
        Used By: Payment
    */

    class OnlinePaymentDetails: Codable {
        
        
        public var isActive: Bool?
        
        public var aggregators: [AggregatorDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case aggregators = "aggregators"
            
        }

        public init(aggregators: [AggregatorDetails]? = nil, isActive: Bool? = nil) {
            
            self.isActive = isActive
            
            self.aggregators = aggregators
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregators = try container.decode([AggregatorDetails].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OnlinePaymentDetails
        Used By: Payment
    */

    class OnlinePaymentDetails: Codable {
        
        
        public var isActive: Bool?
        
        public var aggregators: [AggregatorDetails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case aggregators = "aggregators"
            
        }

        public init(aggregators: [AggregatorDetails]? = nil, isActive: Bool? = nil) {
            
            self.isActive = isActive
            
            self.aggregators = aggregators
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregators = try container.decode([AggregatorDetails].self, forKey: .aggregators)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
            
            
        }
        
    }
}


