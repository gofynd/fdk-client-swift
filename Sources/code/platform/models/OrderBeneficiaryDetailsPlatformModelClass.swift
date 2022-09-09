

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var createdOn: String

        public var title: String

        public var address: String

        public var displayName: String

        public var mobile: Bool?

        public var subtitle: String

        public var modifiedOn: String

        public var delightsUserName: String?

        public var beneficiaryId: String

        public var accountNo: String

        public var ifscCode: String

        public var isActive: Bool

        public var bankName: String

        public var accountHolder: String

        public var branchName: Bool?

        public var comment: Bool?

        public var id: Int

        public var email: String

        public var transferMode: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case title

            case address

            case displayName = "display_name"

            case mobile

            case subtitle

            case modifiedOn = "modified_on"

            case delightsUserName = "delights_user_name"

            case beneficiaryId = "beneficiary_id"

            case accountNo = "account_no"

            case ifscCode = "ifsc_code"

            case isActive = "is_active"

            case bankName = "bank_name"

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case comment

            case id

            case email

            case transferMode = "transfer_mode"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.createdOn = createdOn

            self.title = title

            self.address = address

            self.displayName = displayName

            self.mobile = mobile

            self.subtitle = subtitle

            self.modifiedOn = modifiedOn

            self.delightsUserName = delightsUserName

            self.beneficiaryId = beneficiaryId

            self.accountNo = accountNo

            self.ifscCode = ifscCode

            self.isActive = isActive

            self.bankName = bankName

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.comment = comment

            self.id = id

            self.email = email

            self.transferMode = transferMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            title = try container.decode(String.self, forKey: .title)

            address = try container.decode(String.self, forKey: .address)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            email = try container.decode(String.self, forKey: .email)

            transferMode = try container.decode(String.self, forKey: .transferMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
        }
    }
}
