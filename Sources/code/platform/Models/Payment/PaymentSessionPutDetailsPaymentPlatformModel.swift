

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentSessionPutDetails
        Used By: Payment
    */

    class PaymentSessionPutDetails: Codable {
        
        
        public var gid: String
        
        public var platformTransactionDetails: [[String: Any]]
        
        public var status: String
        
        public var currency: String
        
        public var totalAmount: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case platformTransactionDetails = "platform_transaction_details"
            
            case status = "status"
            
            case currency = "currency"
            
            case totalAmount = "total_amount"
            
        }

        public init(currency: String, gid: String, platformTransactionDetails: [[String: Any]], status: String, totalAmount: Int) {
            
            self.gid = gid
            
            self.platformTransactionDetails = platformTransactionDetails
            
            self.status = status
            
            self.currency = currency
            
            self.totalAmount = totalAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                platformTransactionDetails = try container.decode([[String: Any]].self, forKey: .platformTransactionDetails)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentSessionPutDetails
        Used By: Payment
    */

    class PaymentSessionPutDetails: Codable {
        
        
        public var gid: String
        
        public var platformTransactionDetails: [[String: Any]]
        
        public var status: String
        
        public var currency: String
        
        public var totalAmount: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case gid = "gid"
            
            case platformTransactionDetails = "platform_transaction_details"
            
            case status = "status"
            
            case currency = "currency"
            
            case totalAmount = "total_amount"
            
        }

        public init(currency: String, gid: String, platformTransactionDetails: [[String: Any]], status: String, totalAmount: Int) {
            
            self.gid = gid
            
            self.platformTransactionDetails = platformTransactionDetails
            
            self.status = status
            
            self.currency = currency
            
            self.totalAmount = totalAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                platformTransactionDetails = try container.decode([[String: Any]].self, forKey: .platformTransactionDetails)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                totalAmount = try container.decode(Int.self, forKey: .totalAmount)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(platformTransactionDetails, forKey: .platformTransactionDetails)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(totalAmount, forKey: .totalAmount)
            
            
        }
        
    }
}


