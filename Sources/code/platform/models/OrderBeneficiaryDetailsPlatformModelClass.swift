

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var mobile: String?

        public var displayName: String

        public var ifscCode: String

        public var email: String

        public var delightsUserName: String?

        public var accountHolder: String

        public var isActive: Bool

        public var comment: String?

        public var address: String

        public var accountNo: String

        public var transferMode: String

        public var bankName: String

        public var createdOn: String

        public var title: String

        public var beneficiaryId: String

        public var modifiedOn: String

        public var subtitle: String

        public var id: Int

        public var branchName: String?

        public enum CodingKeys: String, CodingKey {
            case mobile

            case displayName = "display_name"

            case ifscCode = "ifsc_code"

            case email

            case delightsUserName = "delights_user_name"

            case accountHolder = "account_holder"

            case isActive = "is_active"

            case comment

            case address

            case accountNo = "account_no"

            case transferMode = "transfer_mode"

            case bankName = "bank_name"

            case createdOn = "created_on"

            case title

            case beneficiaryId = "beneficiary_id"

            case modifiedOn = "modified_on"

            case subtitle

            case id

            case branchName = "branch_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.mobile = mobile

            self.displayName = displayName

            self.ifscCode = ifscCode

            self.email = email

            self.delightsUserName = delightsUserName

            self.accountHolder = accountHolder

            self.isActive = isActive

            self.comment = comment

            self.address = address

            self.accountNo = accountNo

            self.transferMode = transferMode

            self.bankName = bankName

            self.createdOn = createdOn

            self.title = title

            self.beneficiaryId = beneficiaryId

            self.modifiedOn = modifiedOn

            self.subtitle = subtitle

            self.id = id

            self.branchName = branchName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            email = try container.decode(String.self, forKey: .email)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            bankName = try container.decode(String.self, forKey: .bankName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            title = try container.decode(String.self, forKey: .title)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            id = try container.decode(Int.self, forKey: .id)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }
}
