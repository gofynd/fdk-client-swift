

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var title: String

        public var ifscCode: String

        public var modifiedOn: String

        public var email: String

        public var transferMode: String

        public var branchName: String?

        public var address: String

        public var delightsUserName: String?

        public var subtitle: String

        public var accountHolder: String

        public var isActive: Bool

        public var comment: String?

        public var beneficiaryId: String

        public var displayName: String

        public var createdOn: String

        public var mobile: String?

        public var accountNo: String

        public var id: Int

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case title

            case ifscCode = "ifsc_code"

            case modifiedOn = "modified_on"

            case email

            case transferMode = "transfer_mode"

            case branchName = "branch_name"

            case address

            case delightsUserName = "delights_user_name"

            case subtitle

            case accountHolder = "account_holder"

            case isActive = "is_active"

            case comment

            case beneficiaryId = "beneficiary_id"

            case displayName = "display_name"

            case createdOn = "created_on"

            case mobile

            case accountNo = "account_no"

            case id

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.title = title

            self.ifscCode = ifscCode

            self.modifiedOn = modifiedOn

            self.email = email

            self.transferMode = transferMode

            self.branchName = branchName

            self.address = address

            self.delightsUserName = delightsUserName

            self.subtitle = subtitle

            self.accountHolder = accountHolder

            self.isActive = isActive

            self.comment = comment

            self.beneficiaryId = beneficiaryId

            self.displayName = displayName

            self.createdOn = createdOn

            self.mobile = mobile

            self.accountNo = accountNo

            self.id = id

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            email = try container.decode(String.self, forKey: .email)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            displayName = try container.decode(String.self, forKey: .displayName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            id = try container.decode(Int.self, forKey: .id)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}
