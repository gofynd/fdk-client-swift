

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var subtitle: String

        public var delightsUserName: String?

        public var bankName: String

        public var branchName: Bool?

        public var accountNo: String

        public var id: Int

        public var title: String

        public var mobile: Bool?

        public var accountHolder: String

        public var comment: Bool?

        public var createdOn: String

        public var modifiedOn: String

        public var address: String

        public var email: String

        public var ifscCode: String

        public var displayName: String

        public var transferMode: String

        public var beneficiaryId: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case delightsUserName = "delights_user_name"

            case bankName = "bank_name"

            case branchName = "branch_name"

            case accountNo = "account_no"

            case id

            case title

            case mobile

            case accountHolder = "account_holder"

            case comment

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case address

            case email

            case ifscCode = "ifsc_code"

            case displayName = "display_name"

            case transferMode = "transfer_mode"

            case beneficiaryId = "beneficiary_id"

            case isActive = "is_active"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.subtitle = subtitle

            self.delightsUserName = delightsUserName

            self.bankName = bankName

            self.branchName = branchName

            self.accountNo = accountNo

            self.id = id

            self.title = title

            self.mobile = mobile

            self.accountHolder = accountHolder

            self.comment = comment

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.address = address

            self.email = email

            self.ifscCode = ifscCode

            self.displayName = displayName

            self.transferMode = transferMode

            self.beneficiaryId = beneficiaryId

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            id = try container.decode(Int.self, forKey: .id)

            title = try container.decode(String.self, forKey: .title)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            address = try container.decode(String.self, forKey: .address)

            email = try container.decode(String.self, forKey: .email)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            displayName = try container.decode(String.self, forKey: .displayName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
