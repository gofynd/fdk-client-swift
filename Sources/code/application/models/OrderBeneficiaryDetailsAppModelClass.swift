

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var accountHolder: String

        public var displayName: String

        public var beneficiaryId: String

        public var branchName: Bool?

        public var createdOn: String

        public var comment: Bool?

        public var title: String

        public var id: Int

        public var ifscCode: String

        public var address: String

        public var isActive: Bool

        public var modifiedOn: String

        public var subtitle: String

        public var bankName: String

        public var accountNo: String

        public var email: String

        public var delightsUserName: String?

        public var transferMode: String

        public var mobile: Bool?

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case displayName = "display_name"

            case beneficiaryId = "beneficiary_id"

            case branchName = "branch_name"

            case createdOn = "created_on"

            case comment

            case title

            case id

            case ifscCode = "ifsc_code"

            case address

            case isActive = "is_active"

            case modifiedOn = "modified_on"

            case subtitle

            case bankName = "bank_name"

            case accountNo = "account_no"

            case email

            case delightsUserName = "delights_user_name"

            case transferMode = "transfer_mode"

            case mobile
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.accountHolder = accountHolder

            self.displayName = displayName

            self.beneficiaryId = beneficiaryId

            self.branchName = branchName

            self.createdOn = createdOn

            self.comment = comment

            self.title = title

            self.id = id

            self.ifscCode = ifscCode

            self.address = address

            self.isActive = isActive

            self.modifiedOn = modifiedOn

            self.subtitle = subtitle

            self.bankName = bankName

            self.accountNo = accountNo

            self.email = email

            self.delightsUserName = delightsUserName

            self.transferMode = transferMode

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            displayName = try container.decode(String.self, forKey: .displayName)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            id = try container.decode(Int.self, forKey: .id)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            address = try container.decode(String.self, forKey: .address)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            email = try container.decode(String.self, forKey: .email)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
