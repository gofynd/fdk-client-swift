

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var id: Int

        public var comment: String?

        public var beneficiaryId: String

        public var bankName: String

        public var branchName: String?

        public var mobile: String?

        public var accountNo: String

        public var address: String

        public var createdOn: String

        public var accountHolder: String

        public var displayName: String

        public var isActive: Bool

        public var ifscCode: String

        public var email: String

        public var subtitle: String

        public var modifiedOn: String

        public var transferMode: String

        public var delightsUserName: String?

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case id

            case comment

            case beneficiaryId = "beneficiary_id"

            case bankName = "bank_name"

            case branchName = "branch_name"

            case mobile

            case accountNo = "account_no"

            case address

            case createdOn = "created_on"

            case accountHolder = "account_holder"

            case displayName = "display_name"

            case isActive = "is_active"

            case ifscCode = "ifsc_code"

            case email

            case subtitle

            case modifiedOn = "modified_on"

            case transferMode = "transfer_mode"

            case delightsUserName = "delights_user_name"

            case title
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.id = id

            self.comment = comment

            self.beneficiaryId = beneficiaryId

            self.bankName = bankName

            self.branchName = branchName

            self.mobile = mobile

            self.accountNo = accountNo

            self.address = address

            self.createdOn = createdOn

            self.accountHolder = accountHolder

            self.displayName = displayName

            self.isActive = isActive

            self.ifscCode = ifscCode

            self.email = email

            self.subtitle = subtitle

            self.modifiedOn = modifiedOn

            self.transferMode = transferMode

            self.delightsUserName = delightsUserName

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

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

            accountNo = try container.decode(String.self, forKey: .accountNo)

            address = try container.decode(String.self, forKey: .address)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            displayName = try container.decode(String.self, forKey: .displayName)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            email = try container.decode(String.self, forKey: .email)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
