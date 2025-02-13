

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: OrderBeneficiaryDetails
        Used By: Payment
    */
    class OrderBeneficiaryDetails: Codable {
        
        public var modifiedOn: String
        
        public var accountNo: String
        
        public var mobile: String
        
        public var bankName: String
        
        public var ifscCode: String
        
        public var isActive: Bool
        
        public var beneficiaryId: String
        
        public var accountHolder: String
        
        public var email: String
        
        public var delightsUserName: String?
        
        public var id: Int
        
        public var transferMode: String
        
        public var branchName: String
        
        public var createdOn: String
        
        public var subtitle: String
        
        public var comment: String
        
        public var address: String
        
        public var title: String
        
        public var displayName: String
        
        public var aggregatorId: String?
        
        public var isVerified: Bool?
        
        public var status: String?
        
        public var txnId: String?
        
        public var meta: [String: Any]?
        
        public var defaultBeneficiary: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedOn = "modified_on"
            
            case accountNo = "account_no"
            
            case mobile = "mobile"
            
            case bankName = "bank_name"
            
            case ifscCode = "ifsc_code"
            
            case isActive = "is_active"
            
            case beneficiaryId = "beneficiary_id"
            
            case accountHolder = "account_holder"
            
            case email = "email"
            
            case delightsUserName = "delights_user_name"
            
            case id = "id"
            
            case transferMode = "transfer_mode"
            
            case branchName = "branch_name"
            
            case createdOn = "created_on"
            
            case subtitle = "subtitle"
            
            case comment = "comment"
            
            case address = "address"
            
            case title = "title"
            
            case displayName = "display_name"
            
            case aggregatorId = "aggregator_id"
            
            case isVerified = "is_verified"
            
            case status = "status"
            
            case txnId = "txn_id"
            
            case meta = "meta"
            
            case defaultBeneficiary = "default_beneficiary"
            
        }

        public init(accountHolder: String, accountNo: String, address: String, aggregatorId: String? = nil, bankName: String, beneficiaryId: String, branchName: String, comment: String, createdOn: String, defaultBeneficiary: Bool? = nil, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, isVerified: Bool? = nil, meta: [String: Any]? = nil, mobile: String, modifiedOn: String, status: String? = nil, subtitle: String, title: String, transferMode: String, txnId: String? = nil) {
            
            self.modifiedOn = modifiedOn
            
            self.accountNo = accountNo
            
            self.mobile = mobile
            
            self.bankName = bankName
            
            self.ifscCode = ifscCode
            
            self.isActive = isActive
            
            self.beneficiaryId = beneficiaryId
            
            self.accountHolder = accountHolder
            
            self.email = email
            
            self.delightsUserName = delightsUserName
            
            self.id = id
            
            self.transferMode = transferMode
            
            self.branchName = branchName
            
            self.createdOn = createdOn
            
            self.subtitle = subtitle
            
            self.comment = comment
            
            self.address = address
            
            self.title = title
            
            self.displayName = displayName
            
            self.aggregatorId = aggregatorId
            
            self.isVerified = isVerified
            
            self.status = status
            
            self.txnId = txnId
            
            self.meta = meta
            
            self.defaultBeneficiary = defaultBeneficiary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
            
            
            
            accountNo = try container.decode(String.self, forKey: .accountNo)
            
            
            
            
            mobile = try container.decode(String.self, forKey: .mobile)
            
            
            
            
            bankName = try container.decode(String.self, forKey: .bankName)
            
            
            
            
            ifscCode = try container.decode(String.self, forKey: .ifscCode)
            
            
            
            
            isActive = try container.decode(Bool.self, forKey: .isActive)
            
            
            
            
            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
            
            
            
            accountHolder = try container.decode(String.self, forKey: .accountHolder)
            
            
            
            
            email = try container.decode(String.self, forKey: .email)
            
            
            
            
            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            id = try container.decode(Int.self, forKey: .id)
            
            
            
            
            transferMode = try container.decode(String.self, forKey: .transferMode)
            
            
            
            
            branchName = try container.decode(String.self, forKey: .branchName)
            
            
            
            
            createdOn = try container.decode(String.self, forKey: .createdOn)
            
            
            
            
            subtitle = try container.decode(String.self, forKey: .subtitle)
            
            
            
            
            comment = try container.decode(String.self, forKey: .comment)
            
            
            
            
            address = try container.decode(String.self, forKey: .address)
            
            
            
            
            title = try container.decode(String.self, forKey: .title)
            
            
            
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            
            
            
            do {
                aggregatorId = try container.decode(String.self, forKey: .aggregatorId)
            
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
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
            
            
            
            try? container.encodeIfPresent(isVerified, forKey: .isVerified)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(txnId, forKey: .txnId)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(defaultBeneficiary, forKey: .defaultBeneficiary)
            
            
        }
        
    }
}
