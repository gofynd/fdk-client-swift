

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var modifiedOn: String

        public var branchName: String?

        public var delightsUserName: String?

        public var id: Int

        public var ifscCode: String

        public var accountNo: String

        public var transferMode: String

        public var email: String

        public var comment: String?

        public var address: String

        public var displayName: String

        public var title: String

        public var bankName: String

        public var beneficiaryId: String

        public var isActive: Bool

        public var subtitle: String

        public var accountHolder: String

        public var mobile: String?

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case branchName = "branch_name"

            case delightsUserName = "delights_user_name"

            case id

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case transferMode = "transfer_mode"

            case email

            case comment

            case address

            case displayName = "display_name"

            case title

            case bankName = "bank_name"

            case beneficiaryId = "beneficiary_id"

            case isActive = "is_active"

            case subtitle

            case accountHolder = "account_holder"

            case mobile

            case createdOn = "created_on"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.modifiedOn = modifiedOn

            self.branchName = branchName

            self.delightsUserName = delightsUserName

            self.id = id

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.transferMode = transferMode

            self.email = email

            self.comment = comment

            self.address = address

            self.displayName = displayName

            self.title = title

            self.bankName = bankName

            self.beneficiaryId = beneficiaryId

            self.isActive = isActive

            self.subtitle = subtitle

            self.accountHolder = accountHolder

            self.mobile = mobile

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            email = try container.decode(String.self, forKey: .email)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            displayName = try container.decode(String.self, forKey: .displayName)

            title = try container.decode(String.self, forKey: .title)

            bankName = try container.decode(String.self, forKey: .bankName)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
