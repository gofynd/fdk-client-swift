

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var isActive: Bool

        public var mobile: Bool?

        public var accountHolder: String

        public var accountNo: String

        public var address: String

        public var subtitle: String

        public var bankName: String

        public var title: String

        public var email: String

        public var displayName: String

        public var modifiedOn: String

        public var createdOn: String

        public var branchName: Bool?

        public var beneficiaryId: String

        public var delightsUserName: String?

        public var transferMode: String

        public var ifscCode: String

        public var id: Int

        public var comment: Bool?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case mobile

            case accountHolder = "account_holder"

            case accountNo = "account_no"

            case address

            case subtitle

            case bankName = "bank_name"

            case title

            case email

            case displayName = "display_name"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case branchName = "branch_name"

            case beneficiaryId = "beneficiary_id"

            case delightsUserName = "delights_user_name"

            case transferMode = "transfer_mode"

            case ifscCode = "ifsc_code"

            case id

            case comment
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.isActive = isActive

            self.mobile = mobile

            self.accountHolder = accountHolder

            self.accountNo = accountNo

            self.address = address

            self.subtitle = subtitle

            self.bankName = bankName

            self.title = title

            self.email = email

            self.displayName = displayName

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.branchName = branchName

            self.beneficiaryId = beneficiaryId

            self.delightsUserName = delightsUserName

            self.transferMode = transferMode

            self.ifscCode = ifscCode

            self.id = id

            self.comment = comment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            address = try container.decode(String.self, forKey: .address)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            bankName = try container.decode(String.self, forKey: .bankName)

            title = try container.decode(String.self, forKey: .title)

            email = try container.decode(String.self, forKey: .email)

            displayName = try container.decode(String.self, forKey: .displayName)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            id = try container.decode(Int.self, forKey: .id)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(comment, forKey: .comment)
        }
    }
}
