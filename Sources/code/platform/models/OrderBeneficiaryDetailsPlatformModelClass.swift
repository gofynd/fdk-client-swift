

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var delightsUserName: String?

        public var address: String

        public var title: String

        public var ifscCode: String

        public var bankName: String

        public var mobile: String?

        public var isActive: Bool

        public var accountNo: String

        public var createdOn: String

        public var modifiedOn: String

        public var subtitle: String

        public var transferMode: String

        public var displayName: String

        public var email: String

        public var branchName: String?

        public var beneficiaryId: String

        public var id: Int

        public var comment: String?

        public var accountHolder: String

        public enum CodingKeys: String, CodingKey {
            case delightsUserName = "delights_user_name"

            case address

            case title

            case ifscCode = "ifsc_code"

            case bankName = "bank_name"

            case mobile

            case isActive = "is_active"

            case accountNo = "account_no"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case subtitle

            case transferMode = "transfer_mode"

            case displayName = "display_name"

            case email

            case branchName = "branch_name"

            case beneficiaryId = "beneficiary_id"

            case id

            case comment

            case accountHolder = "account_holder"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.delightsUserName = delightsUserName

            self.address = address

            self.title = title

            self.ifscCode = ifscCode

            self.bankName = bankName

            self.mobile = mobile

            self.isActive = isActive

            self.accountNo = accountNo

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.subtitle = subtitle

            self.transferMode = transferMode

            self.displayName = displayName

            self.email = email

            self.branchName = branchName

            self.beneficiaryId = beneficiaryId

            self.id = id

            self.comment = comment

            self.accountHolder = accountHolder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            title = try container.decode(String.self, forKey: .title)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            displayName = try container.decode(String.self, forKey: .displayName)

            email = try container.decode(String.self, forKey: .email)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            id = try container.decode(Int.self, forKey: .id)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
        }
    }
}
