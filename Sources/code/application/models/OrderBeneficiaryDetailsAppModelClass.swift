

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var mobile: Bool?

        public var bankName: String

        public var branchName: Bool?

        public var accountHolder: String

        public var ifscCode: String

        public var accountNo: String

        public var email: String

        public var comment: Bool?

        public var id: Int

        public var modifiedOn: String

        public var delightsUserName: String?

        public var title: String

        public var displayName: String

        public var address: String

        public var transferMode: String

        public var subtitle: String

        public var isActive: Bool

        public var beneficiaryId: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case bankName = "bank_name"

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case email

            case comment

            case id

            case modifiedOn = "modified_on"

            case delightsUserName = "delights_user_name"

            case title

            case displayName = "display_name"

            case address

            case transferMode = "transfer_mode"

            case subtitle

            case isActive = "is_active"

            case beneficiaryId = "beneficiary_id"

            case createdOn = "created_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.mobile = mobile

            self.bankName = bankName

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.email = email

            self.comment = comment

            self.id = id

            self.modifiedOn = modifiedOn

            self.delightsUserName = delightsUserName

            self.title = title

            self.displayName = displayName

            self.address = address

            self.transferMode = transferMode

            self.subtitle = subtitle

            self.isActive = isActive

            self.beneficiaryId = beneficiaryId

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            email = try container.decode(String.self, forKey: .email)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            displayName = try container.decode(String.self, forKey: .displayName)

            address = try container.decode(String.self, forKey: .address)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
