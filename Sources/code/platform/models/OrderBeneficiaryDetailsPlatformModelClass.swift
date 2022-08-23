

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var comment: String?

        public var email: String

        public var ifscCode: String

        public var bankName: String

        public var createdOn: String

        public var modifiedOn: String

        public var address: String

        public var mobile: String?

        public var isActive: Bool

        public var transferMode: String

        public var title: String

        public var id: Int

        public var beneficiaryId: String

        public var subtitle: String

        public var displayName: String

        public var accountNo: String

        public var branchName: String?

        public var accountHolder: String

        public var delightsUserName: String?

        public enum CodingKeys: String, CodingKey {
            case comment

            case email

            case ifscCode = "ifsc_code"

            case bankName = "bank_name"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case address

            case mobile

            case isActive = "is_active"

            case transferMode = "transfer_mode"

            case title

            case id

            case beneficiaryId = "beneficiary_id"

            case subtitle

            case displayName = "display_name"

            case accountNo = "account_no"

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case delightsUserName = "delights_user_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.comment = comment

            self.email = email

            self.ifscCode = ifscCode

            self.bankName = bankName

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.address = address

            self.mobile = mobile

            self.isActive = isActive

            self.transferMode = transferMode

            self.title = title

            self.id = id

            self.beneficiaryId = beneficiaryId

            self.subtitle = subtitle

            self.displayName = displayName

            self.accountNo = accountNo

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.delightsUserName = delightsUserName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            bankName = try container.decode(String.self, forKey: .bankName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            address = try container.decode(String.self, forKey: .address)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            title = try container.decode(String.self, forKey: .title)

            id = try container.decode(Int.self, forKey: .id)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            displayName = try container.decode(String.self, forKey: .displayName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encode(delightsUserName, forKey: .delightsUserName)
        }
    }
}
