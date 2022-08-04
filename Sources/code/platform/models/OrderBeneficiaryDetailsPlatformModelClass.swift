

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var createdOn: String

        public var subtitle: String

        public var comment: String?

        public var title: String

        public var isActive: Bool

        public var email: String

        public var mobile: String?

        public var delightsUserName: String?

        public var bankName: String

        public var ifscCode: String

        public var transferMode: String

        public var id: Int

        public var branchName: String?

        public var modifiedOn: String

        public var displayName: String

        public var accountHolder: String

        public var accountNo: String

        public var beneficiaryId: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case subtitle

            case comment

            case title

            case isActive = "is_active"

            case email

            case mobile

            case delightsUserName = "delights_user_name"

            case bankName = "bank_name"

            case ifscCode = "ifsc_code"

            case transferMode = "transfer_mode"

            case id

            case branchName = "branch_name"

            case modifiedOn = "modified_on"

            case displayName = "display_name"

            case accountHolder = "account_holder"

            case accountNo = "account_no"

            case beneficiaryId = "beneficiary_id"

            case address
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.createdOn = createdOn

            self.subtitle = subtitle

            self.comment = comment

            self.title = title

            self.isActive = isActive

            self.email = email

            self.mobile = mobile

            self.delightsUserName = delightsUserName

            self.bankName = bankName

            self.ifscCode = ifscCode

            self.transferMode = transferMode

            self.id = id

            self.branchName = branchName

            self.modifiedOn = modifiedOn

            self.displayName = displayName

            self.accountHolder = accountHolder

            self.accountNo = accountNo

            self.beneficiaryId = beneficiaryId

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            email = try container.decode(String.self, forKey: .email)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

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

            bankName = try container.decode(String.self, forKey: .bankName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            id = try container.decode(Int.self, forKey: .id)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            displayName = try container.decode(String.self, forKey: .displayName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
