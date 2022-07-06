

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var email: String

        public var isActive: Bool

        public var mobile: Bool?

        public var id: Int

        public var title: String

        public var comment: Bool?

        public var subtitle: String

        public var beneficiaryId: String

        public var transferMode: String

        public var ifscCode: String

        public var modifiedOn: String

        public var bankName: String

        public var accountNo: String

        public var accountHolder: String

        public var address: String

        public var delightsUserName: String?

        public var createdOn: String

        public var branchName: Bool?

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case email

            case isActive = "is_active"

            case mobile

            case id

            case title

            case comment

            case subtitle

            case beneficiaryId = "beneficiary_id"

            case transferMode = "transfer_mode"

            case ifscCode = "ifsc_code"

            case modifiedOn = "modified_on"

            case bankName = "bank_name"

            case accountNo = "account_no"

            case accountHolder = "account_holder"

            case address

            case delightsUserName = "delights_user_name"

            case createdOn = "created_on"

            case branchName = "branch_name"

            case displayName = "display_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.email = email

            self.isActive = isActive

            self.mobile = mobile

            self.id = id

            self.title = title

            self.comment = comment

            self.subtitle = subtitle

            self.beneficiaryId = beneficiaryId

            self.transferMode = transferMode

            self.ifscCode = ifscCode

            self.modifiedOn = modifiedOn

            self.bankName = bankName

            self.accountNo = accountNo

            self.accountHolder = accountHolder

            self.address = address

            self.delightsUserName = delightsUserName

            self.createdOn = createdOn

            self.branchName = branchName

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            title = try container.decode(String.self, forKey: .title)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            address = try container.decode(String.self, forKey: .address)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
