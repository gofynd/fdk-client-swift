

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var ifscCode: String

        public var subtitle: String

        public var transferMode: String

        public var mobile: String?

        public var displayName: String

        public var branchName: String?

        public var accountHolder: String

        public var delightsUserName: String?

        public var isActive: Bool

        public var createdOn: String

        public var modifiedOn: String

        public var accountNo: String

        public var beneficiaryId: String

        public var email: String

        public var bankName: String

        public var id: Int

        public var address: String

        public var comment: String?

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case ifscCode = "ifsc_code"

            case subtitle

            case transferMode = "transfer_mode"

            case mobile

            case displayName = "display_name"

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case delightsUserName = "delights_user_name"

            case isActive = "is_active"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case accountNo = "account_no"

            case beneficiaryId = "beneficiary_id"

            case email

            case bankName = "bank_name"

            case id

            case address

            case comment

            case title
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.ifscCode = ifscCode

            self.subtitle = subtitle

            self.transferMode = transferMode

            self.mobile = mobile

            self.displayName = displayName

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.delightsUserName = delightsUserName

            self.isActive = isActive

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.accountNo = accountNo

            self.beneficiaryId = beneficiaryId

            self.email = email

            self.bankName = bankName

            self.id = id

            self.address = address

            self.comment = comment

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            email = try container.decode(String.self, forKey: .email)

            bankName = try container.decode(String.self, forKey: .bankName)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
