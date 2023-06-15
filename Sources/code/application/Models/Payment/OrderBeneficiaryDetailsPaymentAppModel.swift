

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var comment: String?

        public var id: Int

        public var modifiedOn: String

        public var transferMode: String

        public var branchName: String?

        public var beneficiaryId: String

        public var subtitle: String

        public var title: String

        public var createdOn: String

        public var displayName: String

        public var bankName: String

        public var delightsUserName: String?

        public var accountHolder: String

        public var email: String

        public var ifscCode: String

        public var accountNo: String

        public var isActive: Bool

        public var mobile: String?

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case comment

            case id

            case modifiedOn = "modified_on"

            case transferMode = "transfer_mode"

            case branchName = "branch_name"

            case beneficiaryId = "beneficiary_id"

            case subtitle

            case title

            case createdOn = "created_on"

            case displayName = "display_name"

            case bankName = "bank_name"

            case delightsUserName = "delights_user_name"

            case accountHolder = "account_holder"

            case email

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case isActive = "is_active"

            case mobile

            case address
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.comment = comment

            self.id = id

            self.modifiedOn = modifiedOn

            self.transferMode = transferMode

            self.branchName = branchName

            self.beneficiaryId = beneficiaryId

            self.subtitle = subtitle

            self.title = title

            self.createdOn = createdOn

            self.displayName = displayName

            self.bankName = bankName

            self.delightsUserName = delightsUserName

            self.accountHolder = accountHolder

            self.email = email

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.isActive = isActive

            self.mobile = mobile

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            title = try container.decode(String.self, forKey: .title)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            displayName = try container.decode(String.self, forKey: .displayName)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            email = try container.decode(String.self, forKey: .email)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
