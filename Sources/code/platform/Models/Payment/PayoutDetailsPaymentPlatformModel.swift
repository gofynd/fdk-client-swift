

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PayoutDetails
        Used By: Payment
    */

    class PayoutDetails: Codable {
        
        
        public var moreAttributes: BankDetails?
        
        public var aggregatorFundId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case moreAttributes = "more_attributes"
            
            case aggregatorFundId = "aggregator_fund_id"
            
        }

        public init(aggregatorFundId: String? = nil, moreAttributes: BankDetails? = nil) {
            
            self.moreAttributes = moreAttributes
            
            self.aggregatorFundId = aggregatorFundId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    moreAttributes = try container.decode(BankDetails.self, forKey: .moreAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)
            
            
            
            
            try? container.encodeIfPresent(aggregatorFundId, forKey: .aggregatorFundId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PayoutDetails
        Used By: Payment
    */

    class PayoutDetails: Codable {
        
        
        public var moreAttributes: BankDetails?
        
        public var aggregatorFundId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case moreAttributes = "more_attributes"
            
            case aggregatorFundId = "aggregator_fund_id"
            
        }

        public init(aggregatorFundId: String? = nil, moreAttributes: BankDetails? = nil) {
            
            self.moreAttributes = moreAttributes
            
            self.aggregatorFundId = aggregatorFundId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    moreAttributes = try container.decode(BankDetails.self, forKey: .moreAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            try? container.encodeIfPresent(moreAttributes, forKey: .moreAttributes)
            
            
            
            
            try? container.encodeIfPresent(aggregatorFundId, forKey: .aggregatorFundId)
            
            
        }
        
    }
}


