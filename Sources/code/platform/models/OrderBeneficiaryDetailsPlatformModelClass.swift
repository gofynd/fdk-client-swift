

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var branchName: String?

        public var email: String

        public var ifscCode: String

        public var subtitle: String

        public var createdOn: String

        public var address: String

        public var displayName: String

        public var modifiedOn: String

        public var bankName: String

        public var delightsUserName: String?

        public var title: String

        public var mobile: String?

        public var id: Int

        public var transferMode: String

        public var comment: String?

        public var isActive: Bool

        public var beneficiaryId: String

        public var accountNo: String

        public var accountHolder: String

        public enum CodingKeys: String, CodingKey {
            case branchName = "branch_name"

            case email

            case ifscCode = "ifsc_code"

            case subtitle

            case createdOn = "created_on"

            case address

            case displayName = "display_name"

            case modifiedOn = "modified_on"

            case bankName = "bank_name"

            case delightsUserName = "delights_user_name"

            case title

            case mobile

            case id

            case transferMode = "transfer_mode"

            case comment

            case isActive = "is_active"

            case beneficiaryId = "beneficiary_id"

            case accountNo = "account_no"

            case accountHolder = "account_holder"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.branchName = branchName

            self.email = email

            self.ifscCode = ifscCode

            self.subtitle = subtitle

            self.createdOn = createdOn

            self.address = address

            self.displayName = displayName

            self.modifiedOn = modifiedOn

            self.bankName = bankName

            self.delightsUserName = delightsUserName

            self.title = title

            self.mobile = mobile

            self.id = id

            self.transferMode = transferMode

            self.comment = comment

            self.isActive = isActive

            self.beneficiaryId = beneficiaryId

            self.accountNo = accountNo

            self.accountHolder = accountHolder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            address = try container.decode(String.self, forKey: .address)

            displayName = try container.decode(String.self, forKey: .displayName)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
        }
    }
}
