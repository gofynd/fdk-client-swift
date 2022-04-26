

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var modifiedOn: String

        public var subtitle: String

        public var accountHolder: String

        public var beneficiaryId: String

        public var bankName: String

        public var mobile: Bool?

        public var ifscCode: String

        public var id: Int

        public var createdOn: String

        public var email: String

        public var comment: Bool?

        public var delightsUserName: String?

        public var isActive: Bool

        public var branchName: Bool?

        public var address: String

        public var transferMode: String

        public var accountNo: String

        public var title: String

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case subtitle

            case accountHolder = "account_holder"

            case beneficiaryId = "beneficiary_id"

            case bankName = "bank_name"

            case mobile

            case ifscCode = "ifsc_code"

            case id

            case createdOn = "created_on"

            case email

            case comment

            case delightsUserName = "delights_user_name"

            case isActive = "is_active"

            case branchName = "branch_name"

            case address

            case transferMode = "transfer_mode"

            case accountNo = "account_no"

            case title

            case displayName = "display_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.modifiedOn = modifiedOn

            self.subtitle = subtitle

            self.accountHolder = accountHolder

            self.beneficiaryId = beneficiaryId

            self.bankName = bankName

            self.mobile = mobile

            self.ifscCode = ifscCode

            self.id = id

            self.createdOn = createdOn

            self.email = email

            self.comment = comment

            self.delightsUserName = delightsUserName

            self.isActive = isActive

            self.branchName = branchName

            self.address = address

            self.transferMode = transferMode

            self.accountNo = accountNo

            self.title = title

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            email = try container.decode(String.self, forKey: .email)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            title = try container.decode(String.self, forKey: .title)

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
