

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OrderBeneficiaryDetails
        Used By: Payment
    */

    class OrderBeneficiaryDetails: Codable {
        
        
        public var subtitle: String
        
        public var id: Int
        
        public var title: String
        
        public var accountHolder: String
        
        public var ifscCode: String
        
        public var comment: String?
        
        public var createdOn: String
        
        public var displayName: String
        
        public var delightsUserName: String?
        
        public var transferMode: String
        
        public var email: String
        
        public var isActive: Bool
        
        public var branchName: String?
        
        public var address: String
        
        public var modifiedOn: String
        
        public var beneficiaryId: String
        
        public var aggregatorId: Int?
        
        public var isVerified: Bool?
        
        public var status: String?
        
        public var txnId: String?
        
        public var meta: [String: Any]?
        
        public var bankName: String
        
        public var accountNo: String
        
        public var mobile: String?
        
        public var defaultBeneficiary: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case subtitle = "subtitle"
            
            case id = "id"
            
            case title = "title"
            
            case accountHolder = "account_holder"
            
            case ifscCode = "ifsc_code"
            
            case comment = "comment"
            
            case createdOn = "created_on"
            
            case displayName = "display_name"
            
            case delightsUserName = "delights_user_name"
            
            case transferMode = "transfer_mode"
            
            case email = "email"
            
            case isActive = "is_active"
            
            case branchName = "branch_name"
            
            case address = "address"
            
            case modifiedOn = "modified_on"
            
            case beneficiaryId = "beneficiary_id"
            
            case aggregatorId = "aggregator_id"
            
            case isVerified = "is_verified"
            
            case status = "status"
            
            case txnId = "txn_id"
            
            case meta = "meta"
            
            case bankName = "bank_name"
            
            case accountNo = "account_no"
            
            case mobile = "mobile"
            
            case defaultBeneficiary = "default_beneficiary"
            
        }

        public init(accountHolder: String, accountNo: String, address: String, aggregatorId: Int? = nil, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, defaultBeneficiary: Bool? = nil, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, isVerified: Bool? = nil, meta: [String: Any]? = nil, mobile: String? = nil, modifiedOn: String, status: String? = nil, subtitle: String, title: String, transferMode: String, txnId: String? = nil) {
            
            self.subtitle = subtitle
            
            self.id = id
            
            self.title = title
            
            self.accountHolder = accountHolder
            
            self.ifscCode = ifscCode
            
            self.comment = comment
            
            self.createdOn = createdOn
            
            self.displayName = displayName
            
            self.delightsUserName = delightsUserName
            
            self.transferMode = transferMode
            
            self.email = email
            
            self.isActive = isActive
            
            self.branchName = branchName
            
            self.address = address
            
            self.modifiedOn = modifiedOn
            
            self.beneficiaryId = beneficiaryId
            
            self.aggregatorId = aggregatorId
            
            self.isVerified = isVerified
            
            self.status = status
            
            self.txnId = txnId
            
            self.meta = meta
            
            self.bankName = bankName
            
            self.accountNo = accountNo
            
            self.mobile = mobile
            
            self.defaultBeneficiary = defaultBeneficiary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
            
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    branchName = try container.decode(String.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
            
            
            
                do {
                    aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isVerified = try container.decode(Bool.self, forKey: .isVerified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    txnId = try container.decode(String.self, forKey: .txnId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultBeneficiary = try container.decode(Bool.self, forKey: .defaultBeneficiary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            
            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
            
            
            
            
            try? container.encodeIfPresent(isVerified, forKey: .isVerified)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(txnId, forKey: .txnId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(defaultBeneficiary, forKey: .defaultBeneficiary)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OrderBeneficiaryDetails
        Used By: Payment
    */

    class OrderBeneficiaryDetails: Codable {
        
        
        public var subtitle: String
        
        public var id: Int
        
        public var title: String
        
        public var accountHolder: String
        
        public var ifscCode: String
        
        public var comment: String?
        
        public var createdOn: String
        
        public var displayName: String
        
        public var delightsUserName: String?
        
        public var transferMode: String
        
        public var email: String
        
        public var isActive: Bool
        
        public var branchName: String?
        
        public var address: String
        
        public var modifiedOn: String
        
        public var beneficiaryId: String
        
        public var aggregatorId: Int?
        
        public var isVerified: Bool?
        
        public var status: String?
        
        public var txnId: String?
        
        public var meta: [String: Any]?
        
        public var bankName: String
        
        public var accountNo: String
        
        public var mobile: String?
        
        public var defaultBeneficiary: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case subtitle = "subtitle"
            
            case id = "id"
            
            case title = "title"
            
            case accountHolder = "account_holder"
            
            case ifscCode = "ifsc_code"
            
            case comment = "comment"
            
            case createdOn = "created_on"
            
            case displayName = "display_name"
            
            case delightsUserName = "delights_user_name"
            
            case transferMode = "transfer_mode"
            
            case email = "email"
            
            case isActive = "is_active"
            
            case branchName = "branch_name"
            
            case address = "address"
            
            case modifiedOn = "modified_on"
            
            case beneficiaryId = "beneficiary_id"
            
            case aggregatorId = "aggregator_id"
            
            case isVerified = "is_verified"
            
            case status = "status"
            
            case txnId = "txn_id"
            
            case meta = "meta"
            
            case bankName = "bank_name"
            
            case accountNo = "account_no"
            
            case mobile = "mobile"
            
            case defaultBeneficiary = "default_beneficiary"
            
        }

        public init(accountHolder: String, accountNo: String, address: String, aggregatorId: Int? = nil, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, defaultBeneficiary: Bool? = nil, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, isVerified: Bool? = nil, meta: [String: Any]? = nil, mobile: String? = nil, modifiedOn: String, status: String? = nil, subtitle: String, title: String, transferMode: String, txnId: String? = nil) {
            
            self.subtitle = subtitle
            
            self.id = id
            
            self.title = title
            
            self.accountHolder = accountHolder
            
            self.ifscCode = ifscCode
            
            self.comment = comment
            
            self.createdOn = createdOn
            
            self.displayName = displayName
            
            self.delightsUserName = delightsUserName
            
            self.transferMode = transferMode
            
            self.email = email
            
            self.isActive = isActive
            
            self.branchName = branchName
            
            self.address = address
            
            self.modifiedOn = modifiedOn
            
            self.beneficiaryId = beneficiaryId
            
            self.aggregatorId = aggregatorId
            
            self.isVerified = isVerified
            
            self.status = status
            
            self.txnId = txnId
            
            self.meta = meta
            
            self.bankName = bankName
            
            self.accountNo = accountNo
            
            self.mobile = mobile
            
            self.defaultBeneficiary = defaultBeneficiary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
            
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    branchName = try container.decode(String.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
            
            
            
                do {
                    aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isVerified = try container.decode(Bool.self, forKey: .isVerified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    txnId = try container.decode(String.self, forKey: .txnId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultBeneficiary = try container.decode(Bool.self, forKey: .defaultBeneficiary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            
            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
            
            
            
            
            try? container.encodeIfPresent(isVerified, forKey: .isVerified)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(txnId, forKey: .txnId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(defaultBeneficiary, forKey: .defaultBeneficiary)
            
            
        }
        
    }
}


