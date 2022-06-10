

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var transferMode: String

        public var email: String

        public var title: String

        public var displayName: String

        public var createdOn: String

        public var isActive: Bool

        public var address: String

        public var comment: Bool?

        public var delightsUserName: String?

        public var mobile: Bool?

        public var modifiedOn: String

        public var id: Int

        public var accountNo: String

        public var bankName: String

        public var accountHolder: String

        public var ifscCode: String

        public var subtitle: String

        public var beneficiaryId: String

        public var branchName: Bool?

        public enum CodingKeys: String, CodingKey {
            case transferMode = "transfer_mode"

            case email

            case title

            case displayName = "display_name"

            case createdOn = "created_on"

            case isActive = "is_active"

            case address

            case comment

            case delightsUserName = "delights_user_name"

            case mobile

            case modifiedOn = "modified_on"

            case id

            case accountNo = "account_no"

            case bankName = "bank_name"

            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case subtitle

            case beneficiaryId = "beneficiary_id"

            case branchName = "branch_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.transferMode = transferMode

            self.email = email

            self.title = title

            self.displayName = displayName

            self.createdOn = createdOn

            self.isActive = isActive

            self.address = address

            self.comment = comment

            self.delightsUserName = delightsUserName

            self.mobile = mobile

            self.modifiedOn = modifiedOn

            self.id = id

            self.accountNo = accountNo

            self.bankName = bankName

            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.subtitle = subtitle

            self.beneficiaryId = beneficiaryId

            self.branchName = branchName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            email = try container.decode(String.self, forKey: .email)

            title = try container.decode(String.self, forKey: .title)

            displayName = try container.decode(String.self, forKey: .displayName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            address = try container.decode(String.self, forKey: .address)

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

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(Int.self, forKey: .id)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }
}
