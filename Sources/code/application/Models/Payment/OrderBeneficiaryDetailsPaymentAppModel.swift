

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var accountNo: String

        public var bankName: String

        public var branchName: String?

        public var transferMode: String

        public var comment: String?

        public var delightsUserName: String?

        public var modifiedOn: String

        public var ifscCode: String

        public var beneficiaryId: String

        public var title: String

        public var id: Int

        public var address: String

        public var email: String

        public var displayName: String

        public var subtitle: String

        public var isActive: Bool

        public var mobile: String?

        public var accountHolder: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case accountNo = "account_no"

            case bankName = "bank_name"

            case branchName = "branch_name"

            case transferMode = "transfer_mode"

            case comment

            case delightsUserName = "delights_user_name"

            case modifiedOn = "modified_on"

            case ifscCode = "ifsc_code"

            case beneficiaryId = "beneficiary_id"

            case title

            case id

            case address

            case email

            case displayName = "display_name"

            case subtitle

            case isActive = "is_active"

            case mobile

            case accountHolder = "account_holder"

            case createdOn = "created_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.accountNo = accountNo

            self.bankName = bankName

            self.branchName = branchName

            self.transferMode = transferMode

            self.comment = comment

            self.delightsUserName = delightsUserName

            self.modifiedOn = modifiedOn

            self.ifscCode = ifscCode

            self.beneficiaryId = beneficiaryId

            self.title = title

            self.id = id

            self.address = address

            self.email = email

            self.displayName = displayName

            self.subtitle = subtitle

            self.isActive = isActive

            self.mobile = mobile

            self.accountHolder = accountHolder

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            title = try container.decode(String.self, forKey: .title)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            email = try container.decode(String.self, forKey: .email)

            displayName = try container.decode(String.self, forKey: .displayName)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
