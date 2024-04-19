

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PayoutRequest
        Used By: Payment
    */

    class PayoutRequest: Codable {
        
        
        public var aggregator: String
        
        public var users: [String: Any]
        
        public var uniqueExternalId: String
        
        public var isActive: Bool
        
        public var bankDetails: PayoutBankDetails
        
        public var transferType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case users = "users"
            
            case uniqueExternalId = "unique_external_id"
            
            case isActive = "is_active"
            
            case bankDetails = "bank_details"
            
            case transferType = "transfer_type"
            
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            
            self.aggregator = aggregator
            
            self.users = users
            
            self.uniqueExternalId = uniqueExternalId
            
            self.isActive = isActive
            
            self.bankDetails = bankDetails
            
            self.transferType = transferType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
                
            
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PayoutRequest
        Used By: Payment
    */

    class PayoutRequest: Codable {
        
        
        public var aggregator: String
        
        public var users: [String: Any]
        
        public var uniqueExternalId: String
        
        public var isActive: Bool
        
        public var bankDetails: PayoutBankDetails
        
        public var transferType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case users = "users"
            
            case uniqueExternalId = "unique_external_id"
            
            case isActive = "is_active"
            
            case bankDetails = "bank_details"
            
            case transferType = "transfer_type"
            
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, isActive: Bool, transferType: String, uniqueExternalId: String, users: [String: Any]) {
            
            self.aggregator = aggregator
            
            self.users = users
            
            self.uniqueExternalId = uniqueExternalId
            
            self.isActive = isActive
            
            self.bankDetails = bankDetails
            
            self.transferType = transferType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                users = try container.decode([String: Any].self, forKey: .users)
                
            
            
            
                uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
        }
        
    }
}


