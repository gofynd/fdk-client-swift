

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OrderDetail
        Used By: Payment
    */

    class OrderDetail: Codable {
        
        
        public var gid: String
        
        public var amount: Int
        
        public var status: String
        
        public var currency: String
        
        public var aggregatorOrderDetails: [String: Any]
        
        public var aggregator: String
        
        public var appliedOffers: [AppliedOffer]?
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case amount = "amount"
            
            case status = "status"
            
            case currency = "currency"
            
            case aggregatorOrderDetails = "aggregator_order_details"
            
            case aggregator = "aggregator"
            
            case appliedOffers = "applied_offers"
            
        }

        public init(aggregator: String, aggregatorOrderDetails: [String: Any], amount: Int, appliedOffers: [AppliedOffer]? = nil, currency: String, gid: String, status: String) {
            
            self.gid = gid
            
            self.amount = amount
            
            self.status = status
            
            self.currency = currency
            
            self.aggregatorOrderDetails = aggregatorOrderDetails
            
            self.aggregator = aggregator
            
            self.appliedOffers = appliedOffers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                aggregatorOrderDetails = try container.decode([String: Any].self, forKey: .aggregatorOrderDetails)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                do {
                    appliedOffers = try container.decode([AppliedOffer].self, forKey: .appliedOffers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderDetails, forKey: .aggregatorOrderDetails)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(appliedOffers, forKey: .appliedOffers)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OrderDetail
        Used By: Payment
    */

    class OrderDetail: Codable {
        
        
        public var gid: String
        
        public var amount: Int
        
        public var status: String
        
        public var currency: String
        
        public var aggregatorOrderDetails: [String: Any]
        
        public var aggregator: String
        
        public var appliedOffers: [AppliedOffer]?
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case amount = "amount"
            
            case status = "status"
            
            case currency = "currency"
            
            case aggregatorOrderDetails = "aggregator_order_details"
            
            case aggregator = "aggregator"
            
            case appliedOffers = "applied_offers"
            
        }

        public init(aggregator: String, aggregatorOrderDetails: [String: Any], amount: Int, appliedOffers: [AppliedOffer]? = nil, currency: String, gid: String, status: String) {
            
            self.gid = gid
            
            self.amount = amount
            
            self.status = status
            
            self.currency = currency
            
            self.aggregatorOrderDetails = aggregatorOrderDetails
            
            self.aggregator = aggregator
            
            self.appliedOffers = appliedOffers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                aggregatorOrderDetails = try container.decode([String: Any].self, forKey: .aggregatorOrderDetails)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                do {
                    appliedOffers = try container.decode([AppliedOffer].self, forKey: .appliedOffers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderDetails, forKey: .aggregatorOrderDetails)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(appliedOffers, forKey: .appliedOffers)
            
            
        }
        
    }
}


