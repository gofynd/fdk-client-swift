

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var displayName: String

        public var beneficiaryId: String

        public var accountHolder: String

        public var isActive: Bool

        public var address: String

        public var transferMode: String

        public var ifscCode: String

        public var title: String

        public var delightsUserName: String?

        public var id: Int

        public var subtitle: String

        public var createdOn: String

        public var mobile: Bool?

        public var branchName: Bool?

        public var accountNo: String

        public var comment: Bool?

        public var email: String

        public var bankName: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case isActive = "is_active"

            case address

            case transferMode = "transfer_mode"

            case ifscCode = "ifsc_code"

            case title

            case delightsUserName = "delights_user_name"

            case id

            case subtitle

            case createdOn = "created_on"

            case mobile

            case branchName = "branch_name"

            case accountNo = "account_no"

            case comment

            case email

            case bankName = "bank_name"

            case modifiedOn = "modified_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.displayName = displayName

            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.isActive = isActive

            self.address = address

            self.transferMode = transferMode

            self.ifscCode = ifscCode

            self.title = title

            self.delightsUserName = delightsUserName

            self.id = id

            self.subtitle = subtitle

            self.createdOn = createdOn

            self.mobile = mobile

            self.branchName = branchName

            self.accountNo = accountNo

            self.comment = comment

            self.email = email

            self.bankName = bankName

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            address = try container.decode(String.self, forKey: .address)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            title = try container.decode(String.self, forKey: .title)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            bankName = try container.decode(String.self, forKey: .bankName)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
