

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var address: String

        public var branchName: String?

        public var email: String

        public var accountHolder: String

        public var subtitle: String

        public var accountNo: String

        public var displayName: String

        public var isActive: Bool

        public var delightsUserName: String?

        public var id: Int

        public var ifscCode: String

        public var transferMode: String

        public var modifiedOn: String

        public var beneficiaryId: String

        public var title: String

        public var createdOn: String

        public var comment: String?

        public var bankName: String

        public var mobile: String?

        public enum CodingKeys: String, CodingKey {
            case address

            case branchName = "branch_name"

            case email

            case accountHolder = "account_holder"

            case subtitle

            case accountNo = "account_no"

            case displayName = "display_name"

            case isActive = "is_active"

            case delightsUserName = "delights_user_name"

            case id

            case ifscCode = "ifsc_code"

            case transferMode = "transfer_mode"

            case modifiedOn = "modified_on"

            case beneficiaryId = "beneficiary_id"

            case title

            case createdOn = "created_on"

            case comment

            case bankName = "bank_name"

            case mobile
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.address = address

            self.branchName = branchName

            self.email = email

            self.accountHolder = accountHolder

            self.subtitle = subtitle

            self.accountNo = accountNo

            self.displayName = displayName

            self.isActive = isActive

            self.delightsUserName = delightsUserName

            self.id = id

            self.ifscCode = ifscCode

            self.transferMode = transferMode

            self.modifiedOn = modifiedOn

            self.beneficiaryId = beneficiaryId

            self.title = title

            self.createdOn = createdOn

            self.comment = comment

            self.bankName = bankName

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            displayName = try container.decode(String.self, forKey: .displayName)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            title = try container.decode(String.self, forKey: .title)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
