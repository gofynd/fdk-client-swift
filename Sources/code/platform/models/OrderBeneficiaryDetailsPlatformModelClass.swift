

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var createdOn: String

        public var transferMode: String

        public var comment: String?

        public var accountNo: String

        public var delightsUserName: String?

        public var mobile: String?

        public var title: String

        public var id: Int

        public var bankName: String

        public var subtitle: String

        public var address: String

        public var isActive: Bool

        public var beneficiaryId: String

        public var accountHolder: String

        public var branchName: String?

        public var email: String

        public var modifiedOn: String

        public var ifscCode: String

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case transferMode = "transfer_mode"

            case comment

            case accountNo = "account_no"

            case delightsUserName = "delights_user_name"

            case mobile

            case title

            case id

            case bankName = "bank_name"

            case subtitle

            case address

            case isActive = "is_active"

            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case email

            case modifiedOn = "modified_on"

            case ifscCode = "ifsc_code"

            case displayName = "display_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.createdOn = createdOn

            self.transferMode = transferMode

            self.comment = comment

            self.accountNo = accountNo

            self.delightsUserName = delightsUserName

            self.mobile = mobile

            self.title = title

            self.id = id

            self.bankName = bankName

            self.subtitle = subtitle

            self.address = address

            self.isActive = isActive

            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.email = email

            self.modifiedOn = modifiedOn

            self.ifscCode = ifscCode

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            id = try container.decode(Int.self, forKey: .id)

            bankName = try container.decode(String.self, forKey: .bankName)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            address = try container.decode(String.self, forKey: .address)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
