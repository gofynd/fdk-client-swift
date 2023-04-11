

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var displayName: String

        public var ifscCode: String

        public var delightsUserName: String?

        public var isActive: Bool

        public var subtitle: String

        public var email: String

        public var mobile: String?

        public var bankName: String

        public var id: Int

        public var createdOn: String

        public var transferMode: String

        public var accountNo: String

        public var modifiedOn: String

        public var address: String

        public var beneficiaryId: String

        public var branchName: String?

        public var accountHolder: String

        public var title: String

        public var comment: String?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case ifscCode = "ifsc_code"

            case delightsUserName = "delights_user_name"

            case isActive = "is_active"

            case subtitle

            case email

            case mobile

            case bankName = "bank_name"

            case id

            case createdOn = "created_on"

            case transferMode = "transfer_mode"

            case accountNo = "account_no"

            case modifiedOn = "modified_on"

            case address

            case beneficiaryId = "beneficiary_id"

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case title

            case comment
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.displayName = displayName

            self.ifscCode = ifscCode

            self.delightsUserName = delightsUserName

            self.isActive = isActive

            self.subtitle = subtitle

            self.email = email

            self.mobile = mobile

            self.bankName = bankName

            self.id = id

            self.createdOn = createdOn

            self.transferMode = transferMode

            self.accountNo = accountNo

            self.modifiedOn = modifiedOn

            self.address = address

            self.beneficiaryId = beneficiaryId

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.title = title

            self.comment = comment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            email = try container.decode(String.self, forKey: .email)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            address = try container.decode(String.self, forKey: .address)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            title = try container.decode(String.self, forKey: .title)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(comment, forKey: .comment)
        }
    }
}
