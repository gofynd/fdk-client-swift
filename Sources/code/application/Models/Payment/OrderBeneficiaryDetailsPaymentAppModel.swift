

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var displayName: String

        public var accountHolder: String

        public var branchName: String?

        public var email: String

        public var createdOn: String

        public var id: Int

        public var beneficiaryId: String

        public var delightsUserName: String?

        public var ifscCode: String

        public var transferMode: String

        public var modifiedOn: String

        public var isActive: Bool

        public var subtitle: String

        public var address: String

        public var accountNo: String

        public var mobile: String?

        public var bankName: String

        public var title: String

        public var comment: String?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case email

            case createdOn = "created_on"

            case id

            case beneficiaryId = "beneficiary_id"

            case delightsUserName = "delights_user_name"

            case ifscCode = "ifsc_code"

            case transferMode = "transfer_mode"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case subtitle

            case address

            case accountNo = "account_no"

            case mobile

            case bankName = "bank_name"

            case title

            case comment
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.displayName = displayName

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.email = email

            self.createdOn = createdOn

            self.id = id

            self.beneficiaryId = beneficiaryId

            self.delightsUserName = delightsUserName

            self.ifscCode = ifscCode

            self.transferMode = transferMode

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.subtitle = subtitle

            self.address = address

            self.accountNo = accountNo

            self.mobile = mobile

            self.bankName = bankName

            self.title = title

            self.comment = comment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            id = try container.decode(Int.self, forKey: .id)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            address = try container.decode(String.self, forKey: .address)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

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

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(comment, forKey: .comment)
        }
    }
}
