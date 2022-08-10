

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var bankName: String

        public var isActive: Bool

        public var modifiedOn: String

        public var displayName: String

        public var delightsUserName: String?

        public var beneficiaryId: String

        public var comment: Bool?

        public var accountNo: String

        public var createdOn: String

        public var address: String

        public var email: String

        public var accountHolder: String

        public var branchName: Bool?

        public var id: Int

        public var subtitle: String

        public var mobile: Bool?

        public var ifscCode: String

        public var title: String

        public var transferMode: String

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case isActive = "is_active"

            case modifiedOn = "modified_on"

            case displayName = "display_name"

            case delightsUserName = "delights_user_name"

            case beneficiaryId = "beneficiary_id"

            case comment

            case accountNo = "account_no"

            case createdOn = "created_on"

            case address

            case email

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case id

            case subtitle

            case mobile

            case ifscCode = "ifsc_code"

            case title

            case transferMode = "transfer_mode"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.bankName = bankName

            self.isActive = isActive

            self.modifiedOn = modifiedOn

            self.displayName = displayName

            self.delightsUserName = delightsUserName

            self.beneficiaryId = beneficiaryId

            self.comment = comment

            self.accountNo = accountNo

            self.createdOn = createdOn

            self.address = address

            self.email = email

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.id = id

            self.subtitle = subtitle

            self.mobile = mobile

            self.ifscCode = ifscCode

            self.title = title

            self.transferMode = transferMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankName = try container.decode(String.self, forKey: .bankName)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            address = try container.decode(String.self, forKey: .address)

            email = try container.decode(String.self, forKey: .email)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            title = try container.decode(String.self, forKey: .title)

            transferMode = try container.decode(String.self, forKey: .transferMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
        }
    }
}
