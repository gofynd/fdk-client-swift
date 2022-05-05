

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var comment: Bool?

        public var transferMode: String

        public var accountHolder: String

        public var bankName: String

        public var isActive: Bool

        public var ifscCode: String

        public var address: String

        public var accountNo: String

        public var displayName: String

        public var mobile: Bool?

        public var subtitle: String

        public var title: String

        public var delightsUserName: String?

        public var branchName: Bool?

        public var createdOn: String

        public var email: String

        public var beneficiaryId: String

        public var modifiedOn: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case comment

            case transferMode = "transfer_mode"

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case isActive = "is_active"

            case ifscCode = "ifsc_code"

            case address

            case accountNo = "account_no"

            case displayName = "display_name"

            case mobile

            case subtitle

            case title

            case delightsUserName = "delights_user_name"

            case branchName = "branch_name"

            case createdOn = "created_on"

            case email

            case beneficiaryId = "beneficiary_id"

            case modifiedOn = "modified_on"

            case id
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.comment = comment

            self.transferMode = transferMode

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.isActive = isActive

            self.ifscCode = ifscCode

            self.address = address

            self.accountNo = accountNo

            self.displayName = displayName

            self.mobile = mobile

            self.subtitle = subtitle

            self.title = title

            self.delightsUserName = delightsUserName

            self.branchName = branchName

            self.createdOn = createdOn

            self.email = email

            self.beneficiaryId = beneficiaryId

            self.modifiedOn = modifiedOn

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            address = try container.decode(String.self, forKey: .address)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            title = try container.decode(String.self, forKey: .title)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            email = try container.decode(String.self, forKey: .email)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
