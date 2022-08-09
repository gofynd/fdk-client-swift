

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var email: String

        public var id: Int

        public var accountHolder: String

        public var ifscCode: String

        public var createdOn: String

        public var comment: String?

        public var bankName: String

        public var title: String

        public var displayName: String

        public var subtitle: String

        public var modifiedOn: String

        public var branchName: String?

        public var mobile: String?

        public var delightsUserName: String?

        public var accountNo: String

        public var transferMode: String

        public var address: String

        public var isActive: Bool

        public var beneficiaryId: String

        public enum CodingKeys: String, CodingKey {
            case email

            case id

            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case createdOn = "created_on"

            case comment

            case bankName = "bank_name"

            case title

            case displayName = "display_name"

            case subtitle

            case modifiedOn = "modified_on"

            case branchName = "branch_name"

            case mobile

            case delightsUserName = "delights_user_name"

            case accountNo = "account_no"

            case transferMode = "transfer_mode"

            case address

            case isActive = "is_active"

            case beneficiaryId = "beneficiary_id"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.email = email

            self.id = id

            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.createdOn = createdOn

            self.comment = comment

            self.bankName = bankName

            self.title = title

            self.displayName = displayName

            self.subtitle = subtitle

            self.modifiedOn = modifiedOn

            self.branchName = branchName

            self.mobile = mobile

            self.delightsUserName = delightsUserName

            self.accountNo = accountNo

            self.transferMode = transferMode

            self.address = address

            self.isActive = isActive

            self.beneficiaryId = beneficiaryId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            id = try container.decode(Int.self, forKey: .id)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            title = try container.decode(String.self, forKey: .title)

            displayName = try container.decode(String.self, forKey: .displayName)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

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

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            address = try container.decode(String.self, forKey: .address)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
        }
    }
}
