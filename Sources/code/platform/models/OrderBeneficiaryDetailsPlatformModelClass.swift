

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var id: Int

        public var bankName: String

        public var transferMode: String

        public var subtitle: String

        public var address: String

        public var accountNo: String

        public var createdOn: String

        public var ifscCode: String

        public var mobile: String?

        public var modifiedOn: String

        public var delightsUserName: String?

        public var accountHolder: String

        public var beneficiaryId: String

        public var isActive: Bool

        public var title: String

        public var comment: String?

        public var branchName: String?

        public var email: String

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case id

            case bankName = "bank_name"

            case transferMode = "transfer_mode"

            case subtitle

            case address

            case accountNo = "account_no"

            case createdOn = "created_on"

            case ifscCode = "ifsc_code"

            case mobile

            case modifiedOn = "modified_on"

            case delightsUserName = "delights_user_name"

            case accountHolder = "account_holder"

            case beneficiaryId = "beneficiary_id"

            case isActive = "is_active"

            case title

            case comment

            case branchName = "branch_name"

            case email

            case displayName = "display_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.id = id

            self.bankName = bankName

            self.transferMode = transferMode

            self.subtitle = subtitle

            self.address = address

            self.accountNo = accountNo

            self.createdOn = createdOn

            self.ifscCode = ifscCode

            self.mobile = mobile

            self.modifiedOn = modifiedOn

            self.delightsUserName = delightsUserName

            self.accountHolder = accountHolder

            self.beneficiaryId = beneficiaryId

            self.isActive = isActive

            self.title = title

            self.comment = comment

            self.branchName = branchName

            self.email = email

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            bankName = try container.decode(String.self, forKey: .bankName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            address = try container.decode(String.self, forKey: .address)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            title = try container.decode(String.self, forKey: .title)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
