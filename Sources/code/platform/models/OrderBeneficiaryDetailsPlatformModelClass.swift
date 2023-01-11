

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var id: Int

        public var isActive: Bool

        public var address: String

        public var ifscCode: String

        public var title: String

        public var mobile: String?

        public var accountNo: String

        public var displayName: String

        public var createdOn: String

        public var modifiedOn: String

        public var branchName: String?

        public var comment: String?

        public var subtitle: String

        public var delightsUserName: String?

        public var beneficiaryId: String

        public var transferMode: String

        public var bankName: String

        public var accountHolder: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case id

            case isActive = "is_active"

            case address

            case ifscCode = "ifsc_code"

            case title

            case mobile

            case accountNo = "account_no"

            case displayName = "display_name"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case branchName = "branch_name"

            case comment

            case subtitle

            case delightsUserName = "delights_user_name"

            case beneficiaryId = "beneficiary_id"

            case transferMode = "transfer_mode"

            case bankName = "bank_name"

            case accountHolder = "account_holder"

            case email
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.id = id

            self.isActive = isActive

            self.address = address

            self.ifscCode = ifscCode

            self.title = title

            self.mobile = mobile

            self.accountNo = accountNo

            self.displayName = displayName

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.branchName = branchName

            self.comment = comment

            self.subtitle = subtitle

            self.delightsUserName = delightsUserName

            self.beneficiaryId = beneficiaryId

            self.transferMode = transferMode

            self.bankName = bankName

            self.accountHolder = accountHolder

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            address = try container.decode(String.self, forKey: .address)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            title = try container.decode(String.self, forKey: .title)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            displayName = try container.decode(String.self, forKey: .displayName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

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

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
