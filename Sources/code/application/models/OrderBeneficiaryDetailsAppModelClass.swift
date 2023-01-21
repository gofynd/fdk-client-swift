

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var delightsUserName: String?

        public var isActive: Bool

        public var transferMode: String

        public var bankName: String

        public var createdOn: String

        public var email: String

        public var title: String

        public var accountNo: String

        public var beneficiaryId: String

        public var displayName: String

        public var address: String

        public var subtitle: String

        public var branchName: String?

        public var accountHolder: String

        public var mobile: String?

        public var id: Int

        public var comment: String?

        public var modifiedOn: String

        public var ifscCode: String

        public enum CodingKeys: String, CodingKey {
            case delightsUserName = "delights_user_name"

            case isActive = "is_active"

            case transferMode = "transfer_mode"

            case bankName = "bank_name"

            case createdOn = "created_on"

            case email

            case title

            case accountNo = "account_no"

            case beneficiaryId = "beneficiary_id"

            case displayName = "display_name"

            case address

            case subtitle

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case mobile

            case id

            case comment

            case modifiedOn = "modified_on"

            case ifscCode = "ifsc_code"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.delightsUserName = delightsUserName

            self.isActive = isActive

            self.transferMode = transferMode

            self.bankName = bankName

            self.createdOn = createdOn

            self.email = email

            self.title = title

            self.accountNo = accountNo

            self.beneficiaryId = beneficiaryId

            self.displayName = displayName

            self.address = address

            self.subtitle = subtitle

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.mobile = mobile

            self.id = id

            self.comment = comment

            self.modifiedOn = modifiedOn

            self.ifscCode = ifscCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            bankName = try container.decode(String.self, forKey: .bankName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            email = try container.decode(String.self, forKey: .email)

            title = try container.decode(String.self, forKey: .title)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            displayName = try container.decode(String.self, forKey: .displayName)

            address = try container.decode(String.self, forKey: .address)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
        }
    }
}
