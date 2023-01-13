

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var isActive: Bool

        public var bankName: String

        public var modifiedOn: String

        public var id: Int

        public var mobile: String?

        public var accountHolder: String

        public var displayName: String

        public var delightsUserName: String?

        public var accountNo: String

        public var comment: String?

        public var branchName: String?

        public var transferMode: String

        public var address: String

        public var subtitle: String

        public var beneficiaryId: String

        public var ifscCode: String

        public var email: String

        public var createdOn: String

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case bankName = "bank_name"

            case modifiedOn = "modified_on"

            case id

            case mobile

            case accountHolder = "account_holder"

            case displayName = "display_name"

            case delightsUserName = "delights_user_name"

            case accountNo = "account_no"

            case comment

            case branchName = "branch_name"

            case transferMode = "transfer_mode"

            case address

            case subtitle

            case beneficiaryId = "beneficiary_id"

            case ifscCode = "ifsc_code"

            case email

            case createdOn = "created_on"

            case title
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.isActive = isActive

            self.bankName = bankName

            self.modifiedOn = modifiedOn

            self.id = id

            self.mobile = mobile

            self.accountHolder = accountHolder

            self.displayName = displayName

            self.delightsUserName = delightsUserName

            self.accountNo = accountNo

            self.comment = comment

            self.branchName = branchName

            self.transferMode = transferMode

            self.address = address

            self.subtitle = subtitle

            self.beneficiaryId = beneficiaryId

            self.ifscCode = ifscCode

            self.email = email

            self.createdOn = createdOn

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankName = try container.decode(String.self, forKey: .bankName)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(Int.self, forKey: .id)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            transferMode = try container.decode(String.self, forKey: .transferMode)

            address = try container.decode(String.self, forKey: .address)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            email = try container.decode(String.self, forKey: .email)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
