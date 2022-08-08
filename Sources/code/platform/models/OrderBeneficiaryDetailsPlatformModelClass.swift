

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var modifiedOn: String

        public var displayName: String

        public var address: String

        public var ifscCode: String

        public var branchName: Bool?

        public var email: String

        public var delightsUserName: String?

        public var bankName: String

        public var isActive: Bool

        public var accountHolder: String

        public var comment: Bool?

        public var id: Int

        public var createdOn: String

        public var mobile: Bool?

        public var title: String

        public var transferMode: String

        public var accountNo: String

        public var subtitle: String

        public var beneficiaryId: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case displayName = "display_name"

            case address

            case ifscCode = "ifsc_code"

            case branchName = "branch_name"

            case email

            case delightsUserName = "delights_user_name"

            case bankName = "bank_name"

            case isActive = "is_active"

            case accountHolder = "account_holder"

            case comment

            case id

            case createdOn = "created_on"

            case mobile

            case title

            case transferMode = "transfer_mode"

            case accountNo = "account_no"

            case subtitle

            case beneficiaryId = "beneficiary_id"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.modifiedOn = modifiedOn

            self.displayName = displayName

            self.address = address

            self.ifscCode = ifscCode

            self.branchName = branchName

            self.email = email

            self.delightsUserName = delightsUserName

            self.bankName = bankName

            self.isActive = isActive

            self.accountHolder = accountHolder

            self.comment = comment

            self.id = id

            self.createdOn = createdOn

            self.mobile = mobile

            self.title = title

            self.transferMode = transferMode

            self.accountNo = accountNo

            self.subtitle = subtitle

            self.beneficiaryId = beneficiaryId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            displayName = try container.decode(String.self, forKey: .displayName)

            address = try container.decode(String.self, forKey: .address)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
        }
    }
}
