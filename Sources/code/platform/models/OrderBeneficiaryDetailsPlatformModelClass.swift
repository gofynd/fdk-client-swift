

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var title: String

        public var id: Int

        public var accountHolder: String

        public var subtitle: String

        public var delightsUserName: String?

        public var ifscCode: String

        public var address: String

        public var bankName: String

        public var email: String

        public var mobile: Bool?

        public var comment: Bool?

        public var modifiedOn: String

        public var createdOn: String

        public var beneficiaryId: String

        public var transferMode: String

        public var accountNo: String

        public var branchName: Bool?

        public var isActive: Bool

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case title

            case id

            case accountHolder = "account_holder"

            case subtitle

            case delightsUserName = "delights_user_name"

            case ifscCode = "ifsc_code"

            case address

            case bankName = "bank_name"

            case email

            case mobile

            case comment

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case beneficiaryId = "beneficiary_id"

            case transferMode = "transfer_mode"

            case accountNo = "account_no"

            case branchName = "branch_name"

            case isActive = "is_active"

            case displayName = "display_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.title = title

            self.id = id

            self.accountHolder = accountHolder

            self.subtitle = subtitle

            self.delightsUserName = delightsUserName

            self.ifscCode = ifscCode

            self.address = address

            self.bankName = bankName

            self.email = email

            self.mobile = mobile

            self.comment = comment

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.beneficiaryId = beneficiaryId

            self.transferMode = transferMode

            self.accountNo = accountNo

            self.branchName = branchName

            self.isActive = isActive

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            id = try container.decode(Int.self, forKey: .id)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            address = try container.decode(String.self, forKey: .address)

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
