

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var delightsUserName: String?

        public var subtitle: String

        public var createdOn: String

        public var id: Int

        public var accountNo: String

        public var comment: Bool?

        public var beneficiaryId: String

        public var title: String

        public var transferMode: String

        public var mobile: Bool?

        public var ifscCode: String

        public var displayName: String

        public var branchName: Bool?

        public var accountHolder: String

        public var address: String

        public var modifiedOn: String

        public var email: String

        public var bankName: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case delightsUserName = "delights_user_name"

            case subtitle

            case createdOn = "created_on"

            case id

            case accountNo = "account_no"

            case comment

            case beneficiaryId = "beneficiary_id"

            case title

            case transferMode = "transfer_mode"

            case mobile

            case ifscCode = "ifsc_code"

            case displayName = "display_name"

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case address

            case modifiedOn = "modified_on"

            case email

            case bankName = "bank_name"

            case isActive = "is_active"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.delightsUserName = delightsUserName

            self.subtitle = subtitle

            self.createdOn = createdOn

            self.id = id

            self.accountNo = accountNo

            self.comment = comment

            self.beneficiaryId = beneficiaryId

            self.title = title

            self.transferMode = transferMode

            self.mobile = mobile

            self.ifscCode = ifscCode

            self.displayName = displayName

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.address = address

            self.modifiedOn = modifiedOn

            self.email = email

            self.bankName = bankName

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            id = try container.decode(Int.self, forKey: .id)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            title = try container.decode(String.self, forKey: .title)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            address = try container.decode(String.self, forKey: .address)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            email = try container.decode(String.self, forKey: .email)

            bankName = try container.decode(String.self, forKey: .bankName)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
