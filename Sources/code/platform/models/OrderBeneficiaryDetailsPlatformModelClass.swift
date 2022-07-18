

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var modifiedOn: String

        public var title: String

        public var accountNo: String

        public var delightsUserName: String?

        public var beneficiaryId: String

        public var isActive: Bool

        public var displayName: String

        public var createdOn: String

        public var email: String

        public var comment: Bool?

        public var ifscCode: String

        public var id: Int

        public var bankName: String

        public var branchName: Bool?

        public var address: String

        public var mobile: Bool?

        public var accountHolder: String

        public var subtitle: String

        public var transferMode: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case title

            case accountNo = "account_no"

            case delightsUserName = "delights_user_name"

            case beneficiaryId = "beneficiary_id"

            case isActive = "is_active"

            case displayName = "display_name"

            case createdOn = "created_on"

            case email

            case comment

            case ifscCode = "ifsc_code"

            case id

            case bankName = "bank_name"

            case branchName = "branch_name"

            case address

            case mobile

            case accountHolder = "account_holder"

            case subtitle

            case transferMode = "transfer_mode"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.modifiedOn = modifiedOn

            self.title = title

            self.accountNo = accountNo

            self.delightsUserName = delightsUserName

            self.beneficiaryId = beneficiaryId

            self.isActive = isActive

            self.displayName = displayName

            self.createdOn = createdOn

            self.email = email

            self.comment = comment

            self.ifscCode = ifscCode

            self.id = id

            self.bankName = bankName

            self.branchName = branchName

            self.address = address

            self.mobile = mobile

            self.accountHolder = accountHolder

            self.subtitle = subtitle

            self.transferMode = transferMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            title = try container.decode(String.self, forKey: .title)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            displayName = try container.decode(String.self, forKey: .displayName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            email = try container.decode(String.self, forKey: .email)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            id = try container.decode(Int.self, forKey: .id)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            transferMode = try container.decode(String.self, forKey: .transferMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
        }
    }
}
