

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var id: Int

        public var bankName: String

        public var email: String

        public var delightsUserName: String?

        public var mobile: String?

        public var isActive: Bool

        public var branchName: String?

        public var title: String

        public var ifscCode: String

        public var createdOn: String

        public var accountHolder: String

        public var beneficiaryId: String

        public var displayName: String

        public var accountNo: String

        public var subtitle: String

        public var address: String

        public var comment: String?

        public var transferMode: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case id

            case bankName = "bank_name"

            case email

            case delightsUserName = "delights_user_name"

            case mobile

            case isActive = "is_active"

            case branchName = "branch_name"

            case title

            case ifscCode = "ifsc_code"

            case createdOn = "created_on"

            case accountHolder = "account_holder"

            case beneficiaryId = "beneficiary_id"

            case displayName = "display_name"

            case accountNo = "account_no"

            case subtitle

            case address

            case comment

            case transferMode = "transfer_mode"

            case modifiedOn = "modified_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.id = id

            self.bankName = bankName

            self.email = email

            self.delightsUserName = delightsUserName

            self.mobile = mobile

            self.isActive = isActive

            self.branchName = branchName

            self.title = title

            self.ifscCode = ifscCode

            self.createdOn = createdOn

            self.accountHolder = accountHolder

            self.beneficiaryId = beneficiaryId

            self.displayName = displayName

            self.accountNo = accountNo

            self.subtitle = subtitle

            self.address = address

            self.comment = comment

            self.transferMode = transferMode

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            displayName = try container.decode(String.self, forKey: .displayName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            address = try container.decode(String.self, forKey: .address)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
