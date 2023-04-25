

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var mobile: String?

        public var branchName: String?

        public var address: String

        public var transferMode: String

        public var subtitle: String

        public var isActive: Bool

        public var comment: String?

        public var bankName: String

        public var modifiedOn: String

        public var delightsUserName: String?

        public var displayName: String

        public var createdOn: String

        public var email: String

        public var title: String

        public var ifscCode: String

        public var accountNo: String

        public var beneficiaryId: String

        public var accountHolder: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case mobile

            case branchName = "branch_name"

            case address

            case transferMode = "transfer_mode"

            case subtitle

            case isActive = "is_active"

            case comment

            case bankName = "bank_name"

            case modifiedOn = "modified_on"

            case delightsUserName = "delights_user_name"

            case displayName = "display_name"

            case createdOn = "created_on"

            case email

            case title

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case id
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.mobile = mobile

            self.branchName = branchName

            self.address = address

            self.transferMode = transferMode

            self.subtitle = subtitle

            self.isActive = isActive

            self.comment = comment

            self.bankName = bankName

            self.modifiedOn = modifiedOn

            self.delightsUserName = delightsUserName

            self.displayName = displayName

            self.createdOn = createdOn

            self.email = email

            self.title = title

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            email = try container.decode(String.self, forKey: .email)

            title = try container.decode(String.self, forKey: .title)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
