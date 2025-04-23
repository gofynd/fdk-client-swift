

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundSessionResponseSerializer
        Used By: Payment
    */

    class RefundSessionResponseSerializer: Codable {
        
        
        public var gid: String
        
        public var status: String
        
        public var currency: String
        
        public var platformRefundDetails: [[String: Any]]
        
        public var totalRefundAmount: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case status = "status"
            
            case currency = "currency"
            
            case platformRefundDetails = "platform_refund_details"
            
            case totalRefundAmount = "total_refund_amount"
            
        }

        public init(currency: String, gid: String, platformRefundDetails: [[String: Any]], status: String, totalRefundAmount: Int) {
            
            self.gid = gid
            
            self.status = status
            
            self.currency = currency
            
            self.platformRefundDetails = platformRefundDetails
            
            self.totalRefundAmount = totalRefundAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                platformRefundDetails = try container.decode([[String: Any]].self, forKey: .platformRefundDetails)
                
            
            
            
                totalRefundAmount = try container.decode(Int.self, forKey: .totalRefundAmount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(platformRefundDetails, forKey: .platformRefundDetails)
            
            
            
            
            try? container.encodeIfPresent(totalRefundAmount, forKey: .totalRefundAmount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundSessionResponseSerializer
        Used By: Payment
    */

    class RefundSessionResponseSerializer: Codable {
        
        
        public var gid: String
        
        public var status: String
        
        public var currency: String
        
        public var platformRefundDetails: [[String: Any]]
        
        public var totalRefundAmount: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case status = "status"
            
            case currency = "currency"
            
            case platformRefundDetails = "platform_refund_details"
            
            case totalRefundAmount = "total_refund_amount"
            
        }

        public init(currency: String, gid: String, platformRefundDetails: [[String: Any]], status: String, totalRefundAmount: Int) {
            
            self.gid = gid
            
            self.status = status
            
            self.currency = currency
            
            self.platformRefundDetails = platformRefundDetails
            
            self.totalRefundAmount = totalRefundAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                platformRefundDetails = try container.decode([[String: Any]].self, forKey: .platformRefundDetails)
                
            
            
            
                totalRefundAmount = try container.decode(Int.self, forKey: .totalRefundAmount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(platformRefundDetails, forKey: .platformRefundDetails)
            
            
            
            
            try? container.encodeIfPresent(totalRefundAmount, forKey: .totalRefundAmount)
            
            
        }
        
    }
}


