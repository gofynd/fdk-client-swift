

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var beneficiaryId: String

        public var accountHolder: String

        public var delightsUserName: String?

        public var email: String

        public var mobile: String?

        public var transferMode: String

        public var accountNo: String

        public var branchName: String?

        public var comment: String?

        public var modifiedOn: String

        public var bankName: String

        public var ifscCode: String

        public var title: String

        public var id: Int

        public var isActive: Bool

        public var subtitle: String

        public var address: String

        public var displayName: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case delightsUserName = "delights_user_name"

            case email

            case mobile

            case transferMode = "transfer_mode"

            case accountNo = "account_no"

            case branchName = "branch_name"

            case comment

            case modifiedOn = "modified_on"

            case bankName = "bank_name"

            case ifscCode = "ifsc_code"

            case title

            case id

            case isActive = "is_active"

            case subtitle

            case address

            case displayName = "display_name"

            case createdOn = "created_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.delightsUserName = delightsUserName

            self.email = email

            self.mobile = mobile

            self.transferMode = transferMode

            self.accountNo = accountNo

            self.branchName = branchName

            self.comment = comment

            self.modifiedOn = modifiedOn

            self.bankName = bankName

            self.ifscCode = ifscCode

            self.title = title

            self.id = id

            self.isActive = isActive

            self.subtitle = subtitle

            self.address = address

            self.displayName = displayName

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            title = try container.decode(String.self, forKey: .title)

            id = try container.decode(Int.self, forKey: .id)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            address = try container.decode(String.self, forKey: .address)

            displayName = try container.decode(String.self, forKey: .displayName)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
