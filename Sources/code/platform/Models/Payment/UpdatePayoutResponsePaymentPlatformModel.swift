

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: UpdatePayoutResponse
        Used By: Payment
    */

    class UpdatePayoutResponse: Codable {
        
        
        public var isDefault: Bool?
        
        public var isActive: Bool?
        
        public var success: Bool
        
        public var bankDetails: PayoutBankDetails?
        
        public var transferType: String?
        
        public var aggregator: String?
        
        public var users: PayoutUserDetails?
        
        public var uniqueTransferNo: String?
        
        public var updated: Bool?
        
        public var paymentStatus: String?
        
        public var payouts: Payouts?
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case isActive = "is_active"
            
            case success = "success"
            
            case bankDetails = "bank_details"
            
            case transferType = "transfer_type"
            
            case aggregator = "aggregator"
            
            case users = "users"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case updated = "updated"
            
            case paymentStatus = "payment_status"
            
            case payouts = "payouts"
            
        }

        public init(aggregator: String? = nil, bankDetails: PayoutBankDetails? = nil, isActive: Bool? = nil, isDefault: Bool? = nil, paymentStatus: String? = nil, payouts: Payouts? = nil, success: Bool, transferType: String? = nil, uniqueTransferNo: String? = nil, updated: Bool? = nil, users: PayoutUserDetails? = nil) {
            
            self.isDefault = isDefault
            
            self.isActive = isActive
            
            self.success = success
            
            self.bankDetails = bankDetails
            
            self.transferType = transferType
            
            self.aggregator = aggregator
            
            self.users = users
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.updated = updated
            
            self.paymentStatus = paymentStatus
            
            self.payouts = payouts
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transferType = try container.decode(String.self, forKey: .transferType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    users = try container.decode(PayoutUserDetails.self, forKey: .users)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updated = try container.decode(Bool.self, forKey: .updated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payouts = try container.decode(Payouts.self, forKey: .payouts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(updated, forKey: .updated)
            
            
            
            
            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
            
            
            
            
            try? container.encodeIfPresent(payouts, forKey: .payouts)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: UpdatePayoutResponse
        Used By: Payment
    */

    class UpdatePayoutResponse: Codable {
        
        
        public var isDefault: Bool?
        
        public var isActive: Bool?
        
        public var success: Bool
        
        public var bankDetails: PayoutBankDetails?
        
        public var transferType: String?
        
        public var aggregator: String?
        
        public var users: PayoutUserDetails?
        
        public var uniqueTransferNo: String?
        
        public var updated: Bool?
        
        public var paymentStatus: String?
        
        public var payouts: Payouts?
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case isActive = "is_active"
            
            case success = "success"
            
            case bankDetails = "bank_details"
            
            case transferType = "transfer_type"
            
            case aggregator = "aggregator"
            
            case users = "users"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case updated = "updated"
            
            case paymentStatus = "payment_status"
            
            case payouts = "payouts"
            
        }

        public init(aggregator: String? = nil, bankDetails: PayoutBankDetails? = nil, isActive: Bool? = nil, isDefault: Bool? = nil, paymentStatus: String? = nil, payouts: Payouts? = nil, success: Bool, transferType: String? = nil, uniqueTransferNo: String? = nil, updated: Bool? = nil, users: PayoutUserDetails? = nil) {
            
            self.isDefault = isDefault
            
            self.isActive = isActive
            
            self.success = success
            
            self.bankDetails = bankDetails
            
            self.transferType = transferType
            
            self.aggregator = aggregator
            
            self.users = users
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.updated = updated
            
            self.paymentStatus = paymentStatus
            
            self.payouts = payouts
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transferType = try container.decode(String.self, forKey: .transferType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    users = try container.decode(PayoutUserDetails.self, forKey: .users)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updated = try container.decode(Bool.self, forKey: .updated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payouts = try container.decode(Payouts.self, forKey: .payouts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(updated, forKey: .updated)
            
            
            
            
            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
            
            
            
            
            try? container.encodeIfPresent(payouts, forKey: .payouts)
            
            
        }
        
    }
}


