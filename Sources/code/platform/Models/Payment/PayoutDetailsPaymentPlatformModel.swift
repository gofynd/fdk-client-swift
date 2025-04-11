

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PayoutDetails
        Used By: Payment
    */

    class PayoutDetails: Codable {
        
        
        public var paymentStatus: String?
        
        public var users: PayoutUserDetails
        
        public var aggregator: String
        
        public var uniqueTransferNo: String
        
        public var isActive: Bool
        
        public var bankDetails: PayoutBankDetails
        
        public var success: Bool
        
        public var transferType: String
        
        public var created: Bool
        
        public var payouts: PayoutData?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentStatus = "payment_status"
            
            case users = "users"
            
            case aggregator = "aggregator"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case isActive = "is_active"
            
            case bankDetails = "bank_details"
            
            case success = "success"
            
            case transferType = "transfer_type"
            
            case created = "created"
            
            case payouts = "payouts"
            
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, created: Bool, isActive: Bool, paymentStatus: String? = nil, payouts: PayoutData? = nil, success: Bool, transferType: String, uniqueTransferNo: String, users: PayoutUserDetails) {
            
            self.paymentStatus = paymentStatus
            
            self.users = users
            
            self.aggregator = aggregator
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.isActive = isActive
            
            self.bankDetails = bankDetails
            
            self.success = success
            
            self.transferType = transferType
            
            self.created = created
            
            self.payouts = payouts
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                users = try container.decode(PayoutUserDetails.self, forKey: .users)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                do {
                    payouts = try container.decode(PayoutData.self, forKey: .payouts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(payouts, forKey: .payouts)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PayoutDetails
        Used By: Payment
    */

    class PayoutDetails: Codable {
        
        
        public var paymentStatus: String?
        
        public var users: PayoutUserDetails
        
        public var aggregator: String
        
        public var uniqueTransferNo: String
        
        public var isActive: Bool
        
        public var bankDetails: PayoutBankDetails
        
        public var success: Bool
        
        public var transferType: String
        
        public var created: Bool
        
        public var payouts: PayoutData?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentStatus = "payment_status"
            
            case users = "users"
            
            case aggregator = "aggregator"
            
            case uniqueTransferNo = "unique_transfer_no"
            
            case isActive = "is_active"
            
            case bankDetails = "bank_details"
            
            case success = "success"
            
            case transferType = "transfer_type"
            
            case created = "created"
            
            case payouts = "payouts"
            
        }

        public init(aggregator: String, bankDetails: PayoutBankDetails, created: Bool, isActive: Bool, paymentStatus: String? = nil, payouts: PayoutData? = nil, success: Bool, transferType: String, uniqueTransferNo: String, users: PayoutUserDetails) {
            
            self.paymentStatus = paymentStatus
            
            self.users = users
            
            self.aggregator = aggregator
            
            self.uniqueTransferNo = uniqueTransferNo
            
            self.isActive = isActive
            
            self.bankDetails = bankDetails
            
            self.success = success
            
            self.transferType = transferType
            
            self.created = created
            
            self.payouts = payouts
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentStatus = try container.decode(String.self, forKey: .paymentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                users = try container.decode(PayoutUserDetails.self, forKey: .users)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                uniqueTransferNo = try container.decode(String.self, forKey: .uniqueTransferNo)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                bankDetails = try container.decode(PayoutBankDetails.self, forKey: .bankDetails)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                transferType = try container.decode(String.self, forKey: .transferType)
                
            
            
            
                created = try container.decode(Bool.self, forKey: .created)
                
            
            
            
                do {
                    payouts = try container.decode(PayoutData.self, forKey: .payouts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentStatus, forKey: .paymentStatus)
            
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(uniqueTransferNo, forKey: .uniqueTransferNo)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(bankDetails, forKey: .bankDetails)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(transferType, forKey: .transferType)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(payouts, forKey: .payouts)
            
            
        }
        
    }
}


