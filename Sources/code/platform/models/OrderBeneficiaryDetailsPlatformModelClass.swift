

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var createdOn: String

        public var branchName: String?

        public var accountHolder: String

        public var bankName: String

        public var accountNo: String

        public var mobile: String?

        public var isActive: Bool

        public var address: String

        public var beneficiaryId: String

        public var title: String

        public var email: String

        public var comment: String?

        public var modifiedOn: String

        public var subtitle: String

        public var transferMode: String

        public var ifscCode: String

        public var displayName: String

        public var id: Int

        public var delightsUserName: String?

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case accountNo = "account_no"

            case mobile

            case isActive = "is_active"

            case address

            case beneficiaryId = "beneficiary_id"

            case title

            case email

            case comment

            case modifiedOn = "modified_on"

            case subtitle

            case transferMode = "transfer_mode"

            case ifscCode = "ifsc_code"

            case displayName = "display_name"

            case id

            case delightsUserName = "delights_user_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.createdOn = createdOn

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.accountNo = accountNo

            self.mobile = mobile

            self.isActive = isActive

            self.address = address

            self.beneficiaryId = beneficiaryId

            self.title = title

            self.email = email

            self.comment = comment

            self.modifiedOn = modifiedOn

            self.subtitle = subtitle

            self.transferMode = transferMode

            self.ifscCode = ifscCode

            self.displayName = displayName

            self.id = id

            self.delightsUserName = delightsUserName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            address = try container.decode(String.self, forKey: .address)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            title = try container.decode(String.self, forKey: .title)

            email = try container.decode(String.self, forKey: .email)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            displayName = try container.decode(String.self, forKey: .displayName)

            id = try container.decode(Int.self, forKey: .id)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(delightsUserName, forKey: .delightsUserName)
        }
    }
}
