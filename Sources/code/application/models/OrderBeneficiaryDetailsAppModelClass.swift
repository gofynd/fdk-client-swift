

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var modifiedOn: String

        public var beneficiaryId: String

        public var accountHolder: String

        public var branchName: String?

        public var subtitle: String

        public var displayName: String

        public var createdOn: String

        public var comment: String?

        public var address: String

        public var isActive: Bool

        public var bankName: String

        public var transferMode: String

        public var title: String

        public var ifscCode: String

        public var email: String

        public var delightsUserName: String?

        public var mobile: String?

        public var accountNo: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case subtitle

            case displayName = "display_name"

            case createdOn = "created_on"

            case comment

            case address

            case isActive = "is_active"

            case bankName = "bank_name"

            case transferMode = "transfer_mode"

            case title

            case ifscCode = "ifsc_code"

            case email

            case delightsUserName = "delights_user_name"

            case mobile

            case accountNo = "account_no"

            case id
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.modifiedOn = modifiedOn

            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.subtitle = subtitle

            self.displayName = displayName

            self.createdOn = createdOn

            self.comment = comment

            self.address = address

            self.isActive = isActive

            self.bankName = bankName

            self.transferMode = transferMode

            self.title = title

            self.ifscCode = ifscCode

            self.email = email

            self.delightsUserName = delightsUserName

            self.mobile = mobile

            self.accountNo = accountNo

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            displayName = try container.decode(String.self, forKey: .displayName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankName = try container.decode(String.self, forKey: .bankName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            title = try container.decode(String.self, forKey: .title)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            email = try container.decode(String.self, forKey: .email)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

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

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
