

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var subtitle: String

        public var mobile: Bool?

        public var ifscCode: String

        public var createdOn: String

        public var displayName: String

        public var address: String

        public var transferMode: String

        public var title: String

        public var email: String

        public var branchName: Bool?

        public var modifiedOn: String

        public var delightsUserName: String?

        public var beneficiaryId: String

        public var bankName: String

        public var accountHolder: String

        public var comment: Bool?

        public var id: Int

        public var accountNo: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case subtitle

            case mobile

            case ifscCode = "ifsc_code"

            case createdOn = "created_on"

            case displayName = "display_name"

            case address

            case transferMode = "transfer_mode"

            case title

            case email

            case branchName = "branch_name"

            case modifiedOn = "modified_on"

            case delightsUserName = "delights_user_name"

            case beneficiaryId = "beneficiary_id"

            case bankName = "bank_name"

            case accountHolder = "account_holder"

            case comment

            case id

            case accountNo = "account_no"

            case isActive = "is_active"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.subtitle = subtitle

            self.mobile = mobile

            self.ifscCode = ifscCode

            self.createdOn = createdOn

            self.displayName = displayName

            self.address = address

            self.transferMode = transferMode

            self.title = title

            self.email = email

            self.branchName = branchName

            self.modifiedOn = modifiedOn

            self.delightsUserName = delightsUserName

            self.beneficiaryId = beneficiaryId

            self.bankName = bankName

            self.accountHolder = accountHolder

            self.comment = comment

            self.id = id

            self.accountNo = accountNo

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            displayName = try container.decode(String.self, forKey: .displayName)

            address = try container.decode(String.self, forKey: .address)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            title = try container.decode(String.self, forKey: .title)

            email = try container.decode(String.self, forKey: .email)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
