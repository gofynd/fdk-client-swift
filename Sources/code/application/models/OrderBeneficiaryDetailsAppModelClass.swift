

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var beneficiaryId: String

        public var title: String

        public var accountNo: String

        public var delightsUserName: String?

        public var accountHolder: String

        public var branchName: String?

        public var comment: String?

        public var displayName: String

        public var email: String

        public var mobile: String?

        public var transferMode: String

        public var subtitle: String

        public var createdOn: String

        public var modifiedOn: String

        public var ifscCode: String

        public var isActive: Bool

        public var id: Int

        public var address: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case beneficiaryId = "beneficiary_id"

            case title

            case accountNo = "account_no"

            case delightsUserName = "delights_user_name"

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case comment

            case displayName = "display_name"

            case email

            case mobile

            case transferMode = "transfer_mode"

            case subtitle

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case ifscCode = "ifsc_code"

            case isActive = "is_active"

            case id

            case address

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.beneficiaryId = beneficiaryId

            self.title = title

            self.accountNo = accountNo

            self.delightsUserName = delightsUserName

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.comment = comment

            self.displayName = displayName

            self.email = email

            self.mobile = mobile

            self.transferMode = transferMode

            self.subtitle = subtitle

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.ifscCode = ifscCode

            self.isActive = isActive

            self.id = id

            self.address = address

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            title = try container.decode(String.self, forKey: .title)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            email = try container.decode(String.self, forKey: .email)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}
