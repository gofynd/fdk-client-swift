

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var transferMode: String

        public var comment: String?

        public var id: Int

        public var bankName: String

        public var beneficiaryId: String

        public var address: String

        public var branchName: String?

        public var accountHolder: String

        public var ifscCode: String

        public var email: String

        public var delightsUserName: String?

        public var isActive: Bool

        public var createdOn: String

        public var accountNo: String

        public var subtitle: String

        public var modifiedOn: String

        public var title: String

        public var mobile: String?

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case transferMode = "transfer_mode"

            case comment

            case id

            case bankName = "bank_name"

            case beneficiaryId = "beneficiary_id"

            case address

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case email

            case delightsUserName = "delights_user_name"

            case isActive = "is_active"

            case createdOn = "created_on"

            case accountNo = "account_no"

            case subtitle

            case modifiedOn = "modified_on"

            case title

            case mobile

            case displayName = "display_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.transferMode = transferMode

            self.comment = comment

            self.id = id

            self.bankName = bankName

            self.beneficiaryId = beneficiaryId

            self.address = address

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.email = email

            self.delightsUserName = delightsUserName

            self.isActive = isActive

            self.createdOn = createdOn

            self.accountNo = accountNo

            self.subtitle = subtitle

            self.modifiedOn = modifiedOn

            self.title = title

            self.mobile = mobile

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            bankName = try container.decode(String.self, forKey: .bankName)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            address = try container.decode(String.self, forKey: .address)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            email = try container.decode(String.self, forKey: .email)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            title = try container.decode(String.self, forKey: .title)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
