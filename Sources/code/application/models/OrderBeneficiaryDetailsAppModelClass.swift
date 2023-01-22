

import Foundation
public extension ApplicationClient {
    /*
        Model: OrderBeneficiaryDetails
        Used By: Payment
    */
    class OrderBeneficiaryDetails: Codable {
        
        public var ifscCode: String
        
        public var createdOn: String
        
        public var address: String
        
        public var subtitle: String
        
        public var branchName: String?
        
        public var isActive: Bool
        
        public var displayName: String
        
        public var email: String
        
        public var transferMode: String
        
        public var beneficiaryId: String
        
        public var comment: String?
        
        public var mobile: String?
        
        public var delightsUserName: String?
        
        public var bankName: String
        
        public var accountHolder: String
        
        public var accountNo: String
        
        public var modifiedOn: String
        
        public var id: Int
        
        public var title: String
        

        public enum CodingKeys: String, CodingKey {
            
            case ifscCode = "ifsc_code"
            
            case createdOn = "created_on"
            
            case address = "address"
            
            case subtitle = "subtitle"
            
            case branchName = "branch_name"
            
            case isActive = "is_active"
            
            case displayName = "display_name"
            
            case email = "email"
            
            case transferMode = "transfer_mode"
            
            case beneficiaryId = "beneficiary_id"
            
            case comment = "comment"
            
            case mobile = "mobile"
            
            case delightsUserName = "delights_user_name"
            
            case bankName = "bank_name"
            
            case accountHolder = "account_holder"
            
            case accountNo = "account_no"
            
            case modifiedOn = "modified_on"
            
            case id = "id"
            
            case title = "title"
            
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            
            self.ifscCode = ifscCode
            
            self.createdOn = createdOn
            
            self.address = address
            
            self.subtitle = subtitle
            
            self.branchName = branchName
            
            self.isActive = isActive
            
            self.displayName = displayName
            
            self.email = email
            
            self.transferMode = transferMode
            
            self.beneficiaryId = beneficiaryId
            
            self.comment = comment
            
            self.mobile = mobile
            
            self.delightsUserName = delightsUserName
            
            self.bankName = bankName
            
            self.accountHolder = accountHolder
            
            self.accountNo = accountNo
            
            self.modifiedOn = modifiedOn
            
            self.id = id
            
            self.title = title
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            ifscCode = try container.decode(String.self, forKey: .ifscCode)
            
            
            
            
            createdOn = try container.decode(String.self, forKey: .createdOn)
            
            
            
            
            address = try container.decode(String.self, forKey: .address)
            
            
            
            
            subtitle = try container.decode(String.self, forKey: .subtitle)
            
            
            
            
            do {
                branchName = try container.decode(String.self, forKey: .branchName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            isActive = try container.decode(Bool.self, forKey: .isActive)
            
            
            
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            
            
            
            email = try container.decode(String.self, forKey: .email)
            
            
            
            
            transferMode = try container.decode(String.self, forKey: .transferMode)
            
            
            
            
            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
            
            
            
            do {
                comment = try container.decode(String.self, forKey: .comment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mobile = try container.decode(String.self, forKey: .mobile)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            bankName = try container.decode(String.self, forKey: .bankName)
            
            
            
            
            accountHolder = try container.decode(String.self, forKey: .accountHolder)
            
            
            
            
            accountNo = try container.decode(String.self, forKey: .accountNo)
            
            
            
            
            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
            
            
            
            id = try container.decode(Int.self, forKey: .id)
            
            
            
            
            title = try container.decode(String.self, forKey: .title)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encode(delightsUserName, forKey: .delightsUserName)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
}
