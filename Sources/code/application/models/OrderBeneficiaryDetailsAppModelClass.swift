

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var comment: String?

        public var delightsUserName: String?

        public var mobile: String?

        public var isActive: Bool

        public var address: String

        public var displayName: String

        public var transferMode: String

        public var subtitle: String

        public var beneficiaryId: String

        public var bankName: String

        public var accountHolder: String

        public var id: Int

        public var ifscCode: String

        public var title: String

        public var accountNo: String

        public var email: String

        public var modifiedOn: String

        public var createdOn: String

        public var branchName: String?

        public enum CodingKeys: String, CodingKey {
            case comment

            case delightsUserName = "delights_user_name"

            case mobile

            case isActive = "is_active"

            case address

            case displayName = "display_name"

            case transferMode = "transfer_mode"

            case subtitle

            case beneficiaryId = "beneficiary_id"

            case bankName = "bank_name"

            case accountHolder = "account_holder"

            case id

            case ifscCode = "ifsc_code"

            case title

            case accountNo = "account_no"

            case email

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case branchName = "branch_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.comment = comment

            self.delightsUserName = delightsUserName

            self.mobile = mobile

            self.isActive = isActive

            self.address = address

            self.displayName = displayName

            self.transferMode = transferMode

            self.subtitle = subtitle

            self.beneficiaryId = beneficiaryId

            self.bankName = bankName

            self.accountHolder = accountHolder

            self.id = id

            self.ifscCode = ifscCode

            self.title = title

            self.accountNo = accountNo

            self.email = email

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.branchName = branchName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            address = try container.decode(String.self, forKey: .address)

            displayName = try container.decode(String.self, forKey: .displayName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            id = try container.decode(Int.self, forKey: .id)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            title = try container.decode(String.self, forKey: .title)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            email = try container.decode(String.self, forKey: .email)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }
}
