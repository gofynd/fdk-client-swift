

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: Payouts
        Used By: Payment
    */

    class Payouts: Codable {
        
        
        public var aggregatorFundId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregatorFundId = "aggregator_fund_id"
            
        }

        public init(aggregatorFundId: String? = nil) {
            
            self.aggregatorFundId = aggregatorFundId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    aggregatorFundId = try container.decode(String.self, forKey: .aggregatorFundId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregatorFundId, forKey: .aggregatorFundId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: Payouts
        Used By: Payment
    */

    class Payouts: Codable {
        
        
        public var aggregatorFundId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregatorFundId = "aggregator_fund_id"
            
        }

        public init(aggregatorFundId: String? = nil) {
            
            self.aggregatorFundId = aggregatorFundId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    aggregatorFundId = try container.decode(String.self, forKey: .aggregatorFundId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregatorFundId, forKey: .aggregatorFundId)
            
            
        }
        
    }
}


