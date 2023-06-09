

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var mobile: String?

        public var createdOn: String

        public var comment: String?

        public var title: String

        public var id: Int

        public var transferMode: String

        public var branchName: String?

        public var bankName: String

        public var accountNo: String

        public var displayName: String

        public var isActive: Bool

        public var ifscCode: String

        public var email: String

        public var subtitle: String

        public var beneficiaryId: String

        public var delightsUserName: String?

        public var address: String

        public var modifiedOn: String

        public var accountHolder: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case createdOn = "created_on"

            case comment

            case title

            case id

            case transferMode = "transfer_mode"

            case branchName = "branch_name"

            case bankName = "bank_name"

            case accountNo = "account_no"

            case displayName = "display_name"

            case isActive = "is_active"

            case ifscCode = "ifsc_code"

            case email

            case subtitle

            case beneficiaryId = "beneficiary_id"

            case delightsUserName = "delights_user_name"

            case address

            case modifiedOn = "modified_on"

            case accountHolder = "account_holder"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.mobile = mobile

            self.createdOn = createdOn

            self.comment = comment

            self.title = title

            self.id = id

            self.transferMode = transferMode

            self.branchName = branchName

            self.bankName = bankName

            self.accountNo = accountNo

            self.displayName = displayName

            self.isActive = isActive

            self.ifscCode = ifscCode

            self.email = email

            self.subtitle = subtitle

            self.beneficiaryId = beneficiaryId

            self.delightsUserName = delightsUserName

            self.address = address

            self.modifiedOn = modifiedOn

            self.accountHolder = accountHolder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            id = try container.decode(Int.self, forKey: .id)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            displayName = try container.decode(String.self, forKey: .displayName)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            email = try container.decode(String.self, forKey: .email)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
        }
    }
}
