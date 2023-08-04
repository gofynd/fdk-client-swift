

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OrderDetail
        Used By: Payment
    */

    class OrderDetail: Codable {
        
        
        public var gid: String
        
        public var aggregator: String
        
        public var amount: Int
        
        public var aggregatorOrderDetails: [String: Any]
        
        public var status: String
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case aggregator = "aggregator"
            
            case amount = "amount"
            
            case aggregatorOrderDetails = "aggregator_order_details"
            
            case status = "status"
            
            case currency = "currency"
            
        }

        public init(aggregator: String, aggregatorOrderDetails: [String: Any], amount: Int, currency: String, gid: String, status: String) {
            
            self.gid = gid
            
            self.aggregator = aggregator
            
            self.amount = amount
            
            self.aggregatorOrderDetails = aggregatorOrderDetails
            
            self.status = status
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                aggregatorOrderDetails = try container.decode([String: Any].self, forKey: .aggregatorOrderDetails)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderDetails, forKey: .aggregatorOrderDetails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
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
        
        public var aggregator: String
        
        public var amount: Int
        
        public var aggregatorOrderDetails: [String: Any]
        
        public var status: String
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case aggregator = "aggregator"
            
            case amount = "amount"
            
            case aggregatorOrderDetails = "aggregator_order_details"
            
            case status = "status"
            
            case currency = "currency"
            
        }

        public init(aggregator: String, aggregatorOrderDetails: [String: Any], amount: Int, currency: String, gid: String, status: String) {
            
            self.gid = gid
            
            self.aggregator = aggregator
            
            self.amount = amount
            
            self.aggregatorOrderDetails = aggregatorOrderDetails
            
            self.status = status
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                aggregatorOrderDetails = try container.decode([String: Any].self, forKey: .aggregatorOrderDetails)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderDetails, forKey: .aggregatorOrderDetails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}


