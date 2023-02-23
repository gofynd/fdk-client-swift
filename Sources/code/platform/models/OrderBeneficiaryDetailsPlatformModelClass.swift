

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var isActive: Bool

        public var ifscCode: String

        public var comment: String?

        public var createdOn: String

        public var accountHolder: String

        public var bankName: String

        public var email: String

        public var delightsUserName: String?

        public var transferMode: String

        public var subtitle: String

        public var title: String

        public var displayName: String

        public var modifiedOn: String

        public var address: String

        public var branchName: String?

        public var id: Int

        public var mobile: String?

        public var beneficiaryId: String

        public var accountNo: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case ifscCode = "ifsc_code"

            case comment

            case createdOn = "created_on"

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case email

            case delightsUserName = "delights_user_name"

            case transferMode = "transfer_mode"

            case subtitle

            case title

            case displayName = "display_name"

            case modifiedOn = "modified_on"

            case address

            case branchName = "branch_name"

            case id

            case mobile

            case beneficiaryId = "beneficiary_id"

            case accountNo = "account_no"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.isActive = isActive

            self.ifscCode = ifscCode

            self.comment = comment

            self.createdOn = createdOn

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.email = email

            self.delightsUserName = delightsUserName

            self.transferMode = transferMode

            self.subtitle = subtitle

            self.title = title

            self.displayName = displayName

            self.modifiedOn = modifiedOn

            self.address = address

            self.branchName = branchName

            self.id = id

            self.mobile = mobile

            self.beneficiaryId = beneficiaryId

            self.accountNo = accountNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            title = try container.decode(String.self, forKey: .title)

            displayName = try container.decode(String.self, forKey: .displayName)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            address = try container.decode(String.self, forKey: .address)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountNo = try container.decode(String.self, forKey: .accountNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
        }
    }
}
