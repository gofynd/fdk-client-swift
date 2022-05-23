

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var mobile: Bool?

        public var email: String

        public var createdOn: String

        public var isActive: Bool

        public var displayName: String

        public var ifscCode: String

        public var address: String

        public var id: Int

        public var title: String

        public var beneficiaryId: String

        public var comment: Bool?

        public var transferMode: String

        public var branchName: Bool?

        public var accountNo: String

        public var delightsUserName: String?

        public var accountHolder: String

        public var bankName: String

        public var subtitle: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case email

            case createdOn = "created_on"

            case isActive = "is_active"

            case displayName = "display_name"

            case ifscCode = "ifsc_code"

            case address

            case id

            case title

            case beneficiaryId = "beneficiary_id"

            case comment

            case transferMode = "transfer_mode"

            case branchName = "branch_name"

            case accountNo = "account_no"

            case delightsUserName = "delights_user_name"

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case subtitle

            case modifiedOn = "modified_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.mobile = mobile

            self.email = email

            self.createdOn = createdOn

            self.isActive = isActive

            self.displayName = displayName

            self.ifscCode = ifscCode

            self.address = address

            self.id = id

            self.title = title

            self.beneficiaryId = beneficiaryId

            self.comment = comment

            self.transferMode = transferMode

            self.branchName = branchName

            self.accountNo = accountNo

            self.delightsUserName = delightsUserName

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.subtitle = subtitle

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            displayName = try container.decode(String.self, forKey: .displayName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            address = try container.decode(String.self, forKey: .address)

            id = try container.decode(Int.self, forKey: .id)

            title = try container.decode(String.self, forKey: .title)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
