

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var beneficiaryId: String

        public var accountHolder: String

        public var transferMode: String

        public var title: String

        public var id: Int

        public var createdOn: String

        public var email: String

        public var delightsUserName: String?

        public var comment: String?

        public var accountNo: String

        public var branchName: String?

        public var isActive: Bool

        public var address: String

        public var modifiedOn: String

        public var ifscCode: String

        public var mobile: String?

        public var subtitle: String

        public var bankName: String

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case transferMode = "transfer_mode"

            case title

            case id

            case createdOn = "created_on"

            case email

            case delightsUserName = "delights_user_name"

            case comment

            case accountNo = "account_no"

            case branchName = "branch_name"

            case isActive = "is_active"

            case address

            case modifiedOn = "modified_on"

            case ifscCode = "ifsc_code"

            case mobile

            case subtitle

            case bankName = "bank_name"

            case displayName = "display_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.transferMode = transferMode

            self.title = title

            self.id = id

            self.createdOn = createdOn

            self.email = email

            self.delightsUserName = delightsUserName

            self.comment = comment

            self.accountNo = accountNo

            self.branchName = branchName

            self.isActive = isActive

            self.address = address

            self.modifiedOn = modifiedOn

            self.ifscCode = ifscCode

            self.mobile = mobile

            self.subtitle = subtitle

            self.bankName = bankName

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            title = try container.decode(String.self, forKey: .title)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            email = try container.decode(String.self, forKey: .email)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            address = try container.decode(String.self, forKey: .address)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            bankName = try container.decode(String.self, forKey: .bankName)

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
