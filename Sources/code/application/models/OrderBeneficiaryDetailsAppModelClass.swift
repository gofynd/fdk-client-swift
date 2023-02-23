

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var isActive: Bool

        public var modifiedOn: String

        public var mobile: String?

        public var displayName: String

        public var branchName: String?

        public var email: String

        public var ifscCode: String

        public var transferMode: String

        public var address: String

        public var id: Int

        public var createdOn: String

        public var accountHolder: String

        public var bankName: String

        public var title: String

        public var beneficiaryId: String

        public var delightsUserName: String?

        public var subtitle: String

        public var comment: String?

        public var accountNo: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case modifiedOn = "modified_on"

            case mobile

            case displayName = "display_name"

            case branchName = "branch_name"

            case email

            case ifscCode = "ifsc_code"

            case transferMode = "transfer_mode"

            case address

            case id

            case createdOn = "created_on"

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case title

            case beneficiaryId = "beneficiary_id"

            case delightsUserName = "delights_user_name"

            case subtitle

            case comment

            case accountNo = "account_no"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.isActive = isActive

            self.modifiedOn = modifiedOn

            self.mobile = mobile

            self.displayName = displayName

            self.branchName = branchName

            self.email = email

            self.ifscCode = ifscCode

            self.transferMode = transferMode

            self.address = address

            self.id = id

            self.createdOn = createdOn

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.title = title

            self.beneficiaryId = beneficiaryId

            self.delightsUserName = delightsUserName

            self.subtitle = subtitle

            self.comment = comment

            self.accountNo = accountNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            address = try container.decode(String.self, forKey: .address)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            title = try container.decode(String.self, forKey: .title)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
        }
    }
}
