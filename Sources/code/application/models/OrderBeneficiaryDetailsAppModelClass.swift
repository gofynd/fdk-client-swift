

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var accountHolder: String

        public var delightsUserName: String?

        public var title: String

        public var branchName: String?

        public var isActive: Bool

        public var comment: String?

        public var bankName: String

        public var accountNo: String

        public var modifiedOn: String

        public var ifscCode: String

        public var transferMode: String

        public var displayName: String

        public var email: String

        public var mobile: String?

        public var subtitle: String

        public var id: Int

        public var beneficiaryId: String

        public var address: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case delightsUserName = "delights_user_name"

            case title

            case branchName = "branch_name"

            case isActive = "is_active"

            case comment

            case bankName = "bank_name"

            case accountNo = "account_no"

            case modifiedOn = "modified_on"

            case ifscCode = "ifsc_code"

            case transferMode = "transfer_mode"

            case displayName = "display_name"

            case email

            case mobile

            case subtitle

            case id

            case beneficiaryId = "beneficiary_id"

            case address

            case createdOn = "created_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.accountHolder = accountHolder

            self.delightsUserName = delightsUserName

            self.title = title

            self.branchName = branchName

            self.isActive = isActive

            self.comment = comment

            self.bankName = bankName

            self.accountNo = accountNo

            self.modifiedOn = modifiedOn

            self.ifscCode = ifscCode

            self.transferMode = transferMode

            self.displayName = displayName

            self.email = email

            self.mobile = mobile

            self.subtitle = subtitle

            self.id = id

            self.beneficiaryId = beneficiaryId

            self.address = address

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            displayName = try container.decode(String.self, forKey: .displayName)

            email = try container.decode(String.self, forKey: .email)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            id = try container.decode(Int.self, forKey: .id)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            address = try container.decode(String.self, forKey: .address)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
