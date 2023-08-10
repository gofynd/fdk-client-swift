

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundSessionResponseSerializer
        Used By: Payment
    */

    class RefundSessionResponseSerializer: Codable {
        
        
        public var totalRefundAmount: Int
        
        public var gid: String
        
        public var platformRefundDetails: [[String: Any]]
        
        public var status: String
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case totalRefundAmount = "total_refund_amount"
            
            case gid = "gid"
            
            case platformRefundDetails = "platform_refund_details"
            
            case status = "status"
            
            case currency = "currency"
            
        }

        public init(currency: String, gid: String, platformRefundDetails: [[String: Any]], status: String, totalRefundAmount: Int) {
            
            self.totalRefundAmount = totalRefundAmount
            
            self.gid = gid
            
            self.platformRefundDetails = platformRefundDetails
            
            self.status = status
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                totalRefundAmount = try container.decode(Int.self, forKey: .totalRefundAmount)
                
            
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                platformRefundDetails = try container.decode([[String: Any]].self, forKey: .platformRefundDetails)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalRefundAmount, forKey: .totalRefundAmount)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(platformRefundDetails, forKey: .platformRefundDetails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundSessionResponseSerializer
        Used By: Payment
    */

    class RefundSessionResponseSerializer: Codable {
        
        
        public var totalRefundAmount: Int
        
        public var gid: String
        
        public var platformRefundDetails: [[String: Any]]
        
        public var status: String
        
        public var currency: String
        

        public enum CodingKeys: String, CodingKey {
            
            case totalRefundAmount = "total_refund_amount"
            
            case gid = "gid"
            
            case platformRefundDetails = "platform_refund_details"
            
            case status = "status"
            
            case currency = "currency"
            
        }

        public init(currency: String, gid: String, platformRefundDetails: [[String: Any]], status: String, totalRefundAmount: Int) {
            
            self.totalRefundAmount = totalRefundAmount
            
            self.gid = gid
            
            self.platformRefundDetails = platformRefundDetails
            
            self.status = status
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                totalRefundAmount = try container.decode(Int.self, forKey: .totalRefundAmount)
                
            
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                platformRefundDetails = try container.decode([[String: Any]].self, forKey: .platformRefundDetails)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalRefundAmount, forKey: .totalRefundAmount)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(platformRefundDetails, forKey: .platformRefundDetails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}


