

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var title: String

        public var createdOn: String

        public var modifiedOn: String

        public var bankName: String

        public var address: String

        public var accountHolder: String

        public var delightsUserName: String?

        public var comment: String?

        public var accountNo: String

        public var ifscCode: String

        public var beneficiaryId: String

        public var displayName: String

        public var mobile: String?

        public var id: Int

        public var branchName: String?

        public var transferMode: String

        public var email: String

        public var isActive: Bool

        public var subtitle: String

        public enum CodingKeys: String, CodingKey {
            case title

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case bankName = "bank_name"

            case address

            case accountHolder = "account_holder"

            case delightsUserName = "delights_user_name"

            case comment

            case accountNo = "account_no"

            case ifscCode = "ifsc_code"

            case beneficiaryId = "beneficiary_id"

            case displayName = "display_name"

            case mobile

            case id

            case branchName = "branch_name"

            case transferMode = "transfer_mode"

            case email

            case isActive = "is_active"

            case subtitle
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.title = title

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.bankName = bankName

            self.address = address

            self.accountHolder = accountHolder

            self.delightsUserName = delightsUserName

            self.comment = comment

            self.accountNo = accountNo

            self.ifscCode = ifscCode

            self.beneficiaryId = beneficiaryId

            self.displayName = displayName

            self.mobile = mobile

            self.id = id

            self.branchName = branchName

            self.transferMode = transferMode

            self.email = email

            self.isActive = isActive

            self.subtitle = subtitle
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            address = try container.decode(String.self, forKey: .address)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

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

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            email = try container.decode(String.self, forKey: .email)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            subtitle = try container.decode(String.self, forKey: .subtitle)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        }
    }
}
