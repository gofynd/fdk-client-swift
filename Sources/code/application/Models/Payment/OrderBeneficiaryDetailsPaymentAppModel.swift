

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var isActive: Bool

        public var ifscCode: String

        public var displayName: String

        public var branchName: String?

        public var accountNo: String

        public var id: Int

        public var transferMode: String

        public var mobile: String?

        public var accountHolder: String

        public var createdOn: String

        public var comment: String?

        public var beneficiaryId: String

        public var subtitle: String

        public var delightsUserName: String?

        public var email: String

        public var bankName: String

        public var address: String

        public var modifiedOn: String

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case ifscCode = "ifsc_code"

            case displayName = "display_name"

            case branchName = "branch_name"

            case accountNo = "account_no"

            case id

            case transferMode = "transfer_mode"

            case mobile

            case accountHolder = "account_holder"

            case createdOn = "created_on"

            case comment

            case beneficiaryId = "beneficiary_id"

            case subtitle

            case delightsUserName = "delights_user_name"

            case email

            case bankName = "bank_name"

            case address

            case modifiedOn = "modified_on"

            case title
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.isActive = isActive

            self.ifscCode = ifscCode

            self.displayName = displayName

            self.branchName = branchName

            self.accountNo = accountNo

            self.id = id

            self.transferMode = transferMode

            self.mobile = mobile

            self.accountHolder = accountHolder

            self.createdOn = createdOn

            self.comment = comment

            self.beneficiaryId = beneficiaryId

            self.subtitle = subtitle

            self.delightsUserName = delightsUserName

            self.email = email

            self.bankName = bankName

            self.address = address

            self.modifiedOn = modifiedOn

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            id = try container.decode(Int.self, forKey: .id)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            bankName = try container.decode(String.self, forKey: .bankName)

            address = try container.decode(String.self, forKey: .address)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
