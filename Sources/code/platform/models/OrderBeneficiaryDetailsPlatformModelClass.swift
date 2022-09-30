

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var accountHolder: String

        public var comment: String?

        public var delightsUserName: String?

        public var id: Int

        public var title: String

        public var subtitle: String

        public var beneficiaryId: String

        public var displayName: String

        public var mobile: String?

        public var ifscCode: String

        public var modifiedOn: String

        public var email: String

        public var createdOn: String

        public var bankName: String

        public var branchName: String?

        public var isActive: Bool

        public var address: String

        public var accountNo: String

        public var transferMode: String

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case comment

            case delightsUserName = "delights_user_name"

            case id

            case title

            case subtitle

            case beneficiaryId = "beneficiary_id"

            case displayName = "display_name"

            case mobile

            case ifscCode = "ifsc_code"

            case modifiedOn = "modified_on"

            case email

            case createdOn = "created_on"

            case bankName = "bank_name"

            case branchName = "branch_name"

            case isActive = "is_active"

            case address

            case accountNo = "account_no"

            case transferMode = "transfer_mode"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.accountHolder = accountHolder

            self.comment = comment

            self.delightsUserName = delightsUserName

            self.id = id

            self.title = title

            self.subtitle = subtitle

            self.beneficiaryId = beneficiaryId

            self.displayName = displayName

            self.mobile = mobile

            self.ifscCode = ifscCode

            self.modifiedOn = modifiedOn

            self.email = email

            self.createdOn = createdOn

            self.bankName = bankName

            self.branchName = branchName

            self.isActive = isActive

            self.address = address

            self.accountNo = accountNo

            self.transferMode = transferMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            title = try container.decode(String.self, forKey: .title)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            email = try container.decode(String.self, forKey: .email)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            address = try container.decode(String.self, forKey: .address)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            transferMode = try container.decode(String.self, forKey: .transferMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
        }
    }
}
